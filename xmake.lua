add_rules("mode.debug", "mode.release")

-- 生成 compile_commands.json
if is_mode("debug") or is_mode("release") then
    add_rules("plugin.compile_commands.autoupdate")
end

-- 指定全局使用 llvm 工具链
set_toolchains("llvm")

add_requires("vulkan-loader", {system = false})
add_requires("glfw", {configs = {shared = false}})
add_requires("glm")

target("vulkan_app")
    set_kind("binary")
    set_languages("c++17")

    add_includedirs("Src")
    add_files("Src/*.cpp")

    add_packages("vulkan-loader", "glfw", "glm")

    local vulkan_sdk = os.getenv("VULKAN_SDK")
    if vulkan_sdk then
        add_includedirs(vulkan_sdk .. "/Include")
        if is_plat("windows") then
            add_linkdirs(vulkan_sdk .. "/Lib")
        elseif is_plat("linux") then
            add_linkdirs(vulkan_sdk .. "/lib")
        elseif is_plat("macos") then
            add_linkdirs(vulkan_sdk .. "/lib")
        end
    else
        print("Warning: VULKAN_SDK environment variable is not set. Relying on xrepo vulkan-loader package only.")
    end

    if is_plat("windows") then
        add_defines("VK_USE_PLATFORM_WIN32_KHR")
        add_syslinks("user32", "gdi32", "shell32")
    elseif is_plat("linux") then
        add_defines("VK_USE_PLATFORM_XCB_KHR")
        add_syslinks("pthread", "dl", "m", "xcb")
    elseif is_plat("macos") then
        add_defines("VK_USE_PLATFORM_MACOS_MVK")
        add_frameworks("Cocoa", "QuartzCore", "Metal", "IOKit", "CoreFoundation")
    end

    if is_mode("debug") then
        add_defines("DEBUG")
        set_symbols("debug")
    else
        add_defines("NDEBUG")
        set_optimize("fast")
    end
{
    depfiles_gcc = "build\\.objs\\vulkan_app\\windows\\x64\\release\\Src\\__cpp_main.cpp.cpp:   Src\\main.cpp\
",
    files = {
        [[Src\main.cpp]]
    },
    values = {
        [[C:\Program Files\LLVM\bin\clang]],
        {
            "-Qunused-arguments",
            "-m64",
            "-fvisibility=hidden",
            "-fvisibility-inlines-hidden",
            "-O1",
            "-std=c++17",
            "-ISrc",
            [[-IC:\VulkanSDK\1.3.296.0\Include]],
            "-DVK_USE_PLATFORM_WIN32_KHR",
            "-DGLFW_INCLUDE_NONE",
            "-fexceptions",
            "-fcxx-exceptions",
            "-isystem",
            [[C:\Users\Administrator\AppData\Local\.xmake\packages\v\vulkan-headers\1.3.290+0\3ceada88c0584ba8b6f5606522044689\include]],
            "-isystem",
            [[C:\Users\Administrator\AppData\Local\.xmake\packages\g\glfw\3.4\a03560ce548f4eca8ab682a4dbea04b2\include]],
            "-isystem",
            [[C:\Users\Administrator\AppData\Local\.xmake\packages\g\glm\1.0.1\35167da92bb142f09a676f46ae259f75\include]],
            "-DNDEBUG"
        }
    }
}
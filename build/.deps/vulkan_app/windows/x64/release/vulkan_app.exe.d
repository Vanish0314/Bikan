{
    files = {
        [[build\.objs\vulkan_app\windows\x64\release\Src\main.cpp.obj]]
    },
    values = {
        [[C:\Program Files\LLVM\bin\clang++]],
        {
            "-m64",
            [[-LC:\VulkanSDK\1.3.296.0\Lib]],
            [[-LC:\Users\Administrator\AppData\Local\.xmake\packages\v\vulkan-loader\1.3.290+0\1a387b0750644d1d85709bb8790774df\lib]],
            [[-LC:\Users\Administrator\AppData\Local\.xmake\packages\g\glfw\3.4\a03560ce548f4eca8ab682a4dbea04b2\lib]],
            "-lvulkan-1",
            "-lglfw3",
            "-lopengl32",
            "-luser32",
            "-lshell32",
            "-lgdi32"
        }
    }
}
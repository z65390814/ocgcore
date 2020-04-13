project "ocgcore"
    kind "StaticLib"

    files { "**.cc", "**.cpp", "**.c", "**.h" }
    configuration { "windows", "macosx" }
        includedirs { "../lua" }
    configuration "not vs*"
        buildoptions { "-std=c++14" }
    configuration "linux"
        includedirs { "/usr/include/lua5.3" }

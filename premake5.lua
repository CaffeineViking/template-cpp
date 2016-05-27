-- premake5.lua
name = "template-cpp"
workspace (name)
    language "C++"
    flags {"C++14"}
    targetdir "bin"
    location "build"
    warnings "Extra"
    configurations {"Debug", "Release"}
    filter {"configurations:Debug"}
        defines {"DEBUG"}
        flags {"Symbols"}
        optimize "Off"
    filter {"configurations:Release"}
        defines {"RELEASE"}
        optimize "Speed"

-- The Program
project (name)
    kind "ConsoleApp"
    files {"src/**.cc"}
    includedirs {"include"}
    -- links {"library"}

-- Program Testing Suite
project (name.."-tests")
    dependson({name})
    kind "ConsoleApp"
    files {"tests/**.cc"}
    includedirs {"include"}
    -- links {"library"}

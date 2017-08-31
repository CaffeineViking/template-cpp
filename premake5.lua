--- premake5.lua
name = "project"
workspace (name)
    language "C++"
    location "build"
    warnings "Extra"
    cppdialect "C++14"
    -- platforms {"Static", "Shared"}
    configurations {"Debug", "Release"}

    filter {"configurations:Debug"}
        defines {"DEBUG"}
        optimize "Off"
        symbols "On"

    filter {"configurations:Release"}
        defines {"RELEASE"}
        optimize "Speed"
        symbols "Off"

------ Program
project (name)
    targetdir "bin"
    kind "WindowedApp"
    files {"src/main.cc"}
    files {"src/"..name.."/**.cc"}
    includedirs {"include"}
    -- links {"library"}

-- ------ Library
-- project (name)
--     targetdir "lib"
--     files {"src/"..name.."/**.cc"}
--     includedirs {"include"}
--     -- links {"library"}
--
--     filter {"platforms:Static"}
--         defines {"STATIC"}
--         kind "StaticLib"
--
--     filter {"platforms:Shared"}
--         defines {"SHARED"}
--         kind "SharedLib"

---------------- Testing
project (name.."-tests")
    targetdir "bin"
    kind "ConsoleApp"
    files {"tests/main.cc"}
    removefiles {"src/main.cc"}
    files {"tests/"..name.."**.cc"}
    files {"src/"..name.."/**.cc"}
    includedirs {"include"}
    -- links {"library"}

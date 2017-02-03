---- premake5.lua
name = "template"
workspace (name)
    language "C++"
    flags {"C++14"}
    location "build"
    warnings "Extra"
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
--     filter {"platforms:Static"}
--         defines {"STATIC"}
--         kind "StaticLib"
--     filter {"platforms:Shared"}
--         defines {"SHARED"}
--         kind "SharedLib"

-- ---------------- Testing
-- project (name.."-tests")
--     targetdir "bin"
--     kind "ConsoleApp"
--     files {"tests/**.cc"}
--     removefiles {"src/main.cc"}
--     files {"src/"..name.."/**.cc"}
--     includedirs {"include"}
--     -- links {"library"}

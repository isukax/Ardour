-- premake5.lua
workspace "Ardour"
   architecture "x64"
   configurations { "Debug", "Release" }
   startproject "Ardour"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "Ardour"
   kind "ConsoleApp"
   language "C++"
   cppdialect "C++20"
   targetdir "bin/%{cfg.buildcfg}"

   files { 
       "src/**.h", 
       "src/**.cpp" 
    }

   filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"

   filter "configurations:Release"
      defines { "NDEBUG" }
      optimize "On"
      flags { "FatalWarnings" }

-- -*- lua -*-
-- AUTHOR: Madhu Srinivasan (madhu.srinivasan@kaust.edu.sa)
-- COPYRIGHT: King Abdullah University of Science and Technology

help(
[[
EasyBuild is a software build and installation framework
written in Python that allows you to install software in a structured,
repeatable and robust way. - Homepage: http://hpcugent.github.com/easybuild/
]])

whatis(
[[
Description: EasyBuild is a software build and installation framework
written in Python that allows you to install software in a structured,
repeatable and robust way.
]])

whatis("Homepage: http://hpcugent.github.com/easybuild/")

conflict("EasyBuild")

-- TODO: version numbers need to be determined automagically.
local version = "2.8.2"
local home = os.getenv("HOME")
local base =  home .. "/CentOS7/easybuild/software/EasyBuild/" .. version
local binpath = base .. "/bin"
local libpath = base .. "/lib"
local develpath = base .. "/easybuild/EasyBuild-" .. version .. "-easybuild-devel"
local pythonpath = libpath .. "/python2.7/site-packages"
local configpath = home .. "/CentOS7/config/easybuild.cfg"

prepend_path("PATH", binpath)
prepend_path("PYTHONPATH", pythonpath)
setenv("EBROOTEASYBUILD", base)
setenv("EBVERSIONEASYBUILD", version)
setenv("EBDEVELEASYBUILD", develpath)
setenv("EASYBUILD_CONFIGFILES", configpath)

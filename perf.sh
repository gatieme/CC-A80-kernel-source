#!/bin/bash


#make: pkg-config: Command not found
#Makefile:533: GTK2 not found, disables GTK2 support. Please install gtk2-devel or libgtk2.0-dev
apt-get install libgtk2.0-dev

#Makefile:503: newt not found, disables TUI support. Please install newt-devel or libnewt-dev
apt-get install libnewt-dev

#Makefile:590: The path '/usr/bin/python-config' is not executable.
#Makefile:594: No python-config tool was found
#Makefile:594: Python support won't be built
apt-get install python-dev


apt-get install flex bison



install -d -m 755 '/root/bin'
install perf '/root/bin'
install -d -m 755 '/root/libexec/perf-core/scripts/perl/Perf-Trace-Util/lib/Perf/Trace'
install -d -m 755 '/root/libexec/perf-core/scripts/perl/bin'
install perf-archive -t '/root/libexec/perf-core'
install scripts/perl/Perf-Trace-Util/lib/Perf/Trace/* -t '/root/libexec/perf-core/scripts/perl/Perf-Tr'
install scripts/perl/*.pl -t '/root/libexec/perf-core/scripts/perl'
install scripts/perl/bin/* -t '/root/libexec/perf-core/scripts/perl/bin'
install -d -m 755 '/root/libexec/perf-core/scripts/python/Perf-Trace-Util/lib/Perf/Trace'
install -d -m 755 '/root/libexec/perf-core/scripts/python/bin'
install scripts/python/Perf-Trace-Util/lib/Perf/Trace/* -t '/root/libexec/perf-core/scripts/python/Per'
install scripts/python/*.py -t '/root/libexec/perf-core/scripts/python'
install scripts/python/bin/* -t '/root/libexec/perf-core/scripts/python/bin'


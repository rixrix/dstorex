# Makefile for dstorex 
#
# Copyright (c) 2009 Richard Sentino

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
	
# Common prefix for installation directories.
prefix = /usr/local
exec_prefix = $(prefix)
bindir = $(exec_prefix)/bin	

# dstorex system path
BINDIR_DSTOREX=$(exec_prefix)/bin

install:
	@echo "Installing dstorex"
	
	@echo "copying dstorex executable script"
	@echo $(BINDIR_DSTOREX)
	@cp dstorex $(BINDIR_DSTOREX)/;
	@-chmod +x $(BINDIR_DSTOREX)/dstorex
	@echo done.
uninstall:
	@echo Uninstalling dstorex
	
	@echo deleting $(BINDIR_DSTOREX)/dstorex
	@if [ -e $(BINDIR_DSTOREX)/dstorex ]; then rm -fv $(BINDIR_DSTOREX)/dstorex; fi;
	@echo done.	
	
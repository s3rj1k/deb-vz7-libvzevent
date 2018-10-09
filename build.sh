#!/bin/bash
# prepare build folder
mkdir -p BUILD
# copy debian rules
cp -a debian BUILD/debian
# extract libvzevent src into build dir
tar xf libvzevent*.orig.tar --strip-components=1 -C BUILD
# change current dir to build
cd BUILD
# run build
debuild -us -uc -b -I.git -i'\.git/'

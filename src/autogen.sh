#!/bin/sh -x
autopoint -f
cd m4
echo EXTRA_DIST = *.m4 > Makefile.am
cd ..
autoreconf -f -i

# Grab latest versions instead of what is bundled with autoconf
# Just build on a current box, if you need this for a one-off, uncomment
#curl --silent "https://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD" > config.guess
#curl --silent "https://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD" > config.sub

#for f in "lt~obsolete.m4" "ltversion.m4" "ltsugar.m4" "ltoptions.m4" "libtool.m4"; do
	#curl "http://git.savannah.gnu.org/cgit/libtool.git/plain/m4/${f}?id=v2.4.2.418" > m4/${f}
#done

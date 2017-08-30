#!/bin/sh
# Run this to generate all the initial makefiles, etc.

SRCDIR=`dirname $0`
test -z "$SRCDIR" && SRCDIR=.

PKG_NAME="suru-icon-theme"

(test -f $SRCDIR/configure.ac) || {
	echo -n "**Error**: Directory "\`$SRCDIR\'" does not look like the"
	echo " top-level $PKG_NAME directory"
	exit 1
}

which gnome-autogen || {
	echo "You need to install 'gnome-common'"
	exit 1
}

REQUIRED_AUTOMAKE_VERSION=1.9
USE_COMMON_DOC_BUILD=yes

. gnome-autogen

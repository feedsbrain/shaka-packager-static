#!/bin/sh
set +e
cd $(dirname $0)

VERSION=2.3.0

download () {
	curl -L -# -A 'https://github.com/feedsbrain/shaka-packager-static' -o $2 $1
}

echo 'Windows x64'
echo '  downloading from https://github.com/google/shaka-packager/releases'
download 'https://github.com/google/shaka-packager/releases/download/v'$VERSION'/packager-win.exe' ../bin/win32/x64/packager.exe

echo 'Windows ia32'
echo '  downloading from https://github.com/google/shaka-packager/releases'
download 'https://github.com/google/shaka-packager/releases/download/v'$VERSION'/packager-win.exe' ../bin/win32/ia32/packager.exe

echo 'Linux x64'
echo '  downloading from https://github.com/google/shaka-packager/releases'
download 'https://github.com/google/shaka-packager/releases/download/v'$VERSION'/packager-linux' ../bin/linux/x64/packager

echo 'Linux ia32'
echo '  downloading from https://github.com/google/shaka-packager/releases'
download 'https://github.com/google/shaka-packager/releases/download/v'$VERSION'/packager-linux' ../bin/linux/ia32/packager

echo 'Darwin x64'
echo '  downloading from https://github.com/google/shaka-packager/releases'
download 'https://github.com/google/shaka-packager/releases/download/v'$VERSION'/packager-osx' ../bin/darwin/x64/packager

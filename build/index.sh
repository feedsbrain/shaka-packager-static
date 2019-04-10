#!/bin/sh
set VERSION=2.3.0
set +e
cd $(dirname $0)

tar_exec=$(command -v gtar)
if [ $? -ne 0 ]; then
	tar_exec=$(command -v tar)
fi

download () {
	curl -L -# -A 'https://github.com/feedsbrain/shaka-packager-static' -o $2 $1
}

echo 'windows x64'
echo '  downloading from https://github.com/google/shaka-packager/releases'
download 'https://github.com/google/shaka-packager/releases/download/v'$VERSION'/packager-win.exe' ../bin/win32/x64/packager.exe

echo 'windows ia32'
echo '  downloading from https://github.com/google/shaka-packager/releases'
download 'https://github.com/google/shaka-packager/releases/download/v'$VERSION'/packager-win.exe' ../bin/win32/ia32/packager.exe

echo 'linux x64'
echo '  downloading from https://github.com/google/shaka-packager/releases'
download 'https://github.com/google/shaka-packager/releases/download/v'$VERSION'/packager-linux' ../bin/linux/x64/packager

echo 'linux ia32'
echo '  downloading from https://github.com/google/shaka-packager/releases'
download 'https://github.com/google/shaka-packager/releases/download/v'$VERSION'/packager-linux' ../bin/linux/ia32/packager

echo 'darwin x64'
echo '  downloading from https://github.com/google/shaka-packager/releases'
download 'https://github.com/google/shaka-packager/releases/download/v'$VERSION'/packager-osx' ../bin/darwin/x64/packager

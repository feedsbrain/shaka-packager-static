# shaka-packager-static

[![Build Status](https://travis-ci.org/feedsbrain/shaka-packager-static.svg?branch=master)](https://travis-ci.org/feedsbrain/shaka-packager-static)

**[Shaka Packager](https://github.com/google/shaka-packager) static binaries for Mac OSX, Linux and Windows.**

Supports macOS (64-bit), Linux (32 and 64-bit) and Windows (32 and 64-bit). The current shaka-packager version is `2.4.3`.

*Note:* The version of `shaka-packager-static` follows [SemVer](http://semver.org). When releasing new versions, **we do *not* consider breaking changes in `shaka-packager` itself**, but only the JS interface (see below). To stop `shaka-packager-static` from breaking your code by getting updated, [lock the version down](https://docs.npmjs.com/files/package.json#dependencies) or use a [lockfile](https://docs.npmjs.com/files/package-lock.json).

## Installation

This module is installed via npm:

``` bash
$ npm install shaka-packager-static
```

## Example Usage

Returns the path of a statically linked packager binary on the local filesystem.

``` js
var packager = require('shaka-packager-static');
console.log(packager.path);
// /home/feedsbrain/workspaces/cool-project/node_modules/shaka-packager-static/bin/linux/x64/packager
```

## Sources of the binaries

[The build script](build/index.sh) downloads binaries from [Shaka Packager Releases](https://github.com/google/shaka-packager/releases/)

## Building the project

Run `npm run build` to build the project

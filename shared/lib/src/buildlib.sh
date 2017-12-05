#!/usr/bin/env bash


IOS_GCC=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++
IOS_AR=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ar
IOS_SDK=/Users/mathiaswesterdahl/work/defold/tmp/dynamo_home/ext/SDKs/iPhoneOS10.3.sdk

OSX_GCC=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++
OSX_AR=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ar
OSX_SDK=/Users/mathiaswesterdahl/work/defold/tmp/dynamo_home/ext/SDKs/MacOSX10.12.sdk

function RemoveTarget {
	local name=$1
	if [ -f $name ]; then
		rm $name
		echo Removed $name
	fi
}

function CompileiOS {
	local name=$1
	local src=$2
	local targetdir=$3
	local arch=$4

	#archs=("armv7" "arm64")
	#for arch in "${archs[@]}"
	#do
		local archname=$arch-ios
		local target=$targetdir/$archname/lib$name.dylib
		
		RemoveTarget $target
		mkdir -p $(dirname $target)

		$IOS_GCC -dynamiclib -arch $arch -fPIC -isysroot $IOS_SDK -O2 -miphoneos-version-min=6.0 -fomit-frame-pointer -fno-strict-aliasing -fno-exceptions $src -o $target

		echo Wrote $target
	#done
}

function CompileOSX {
	local name=$1
	local src=$2
	local targetdir=$3
	local arch=$4

	# archs=( "x86" "x86_64")
	# for arch in "${archs[@]}"
	# do
		local archname=$arch-osx
		if [ "$arch" == "x86" ]; then
			arch="i386"
		fi

		local target=$targetdir/$archname/lib$name.dylib
		
		RemoveTarget $target
		mkdir -p $(dirname $target)

		$OSX_GCC -dynamiclib -arch $arch -fPIC -isysroot $OSX_SDK -O2 -mmacosx-version-min=10.7 -fomit-frame-pointer -fno-strict-aliasing -fno-exceptions $src -o $target

		echo Wrote $target
	#done
}

set -e
pushd ../../

CompileiOS testlib lib/src/library.cpp lib arm64
CompileiOS testlib lib/src/library.cpp lib armv7

CompileOSX testlib lib/src/library.cpp lib x86
CompileOSX testlib lib/src/library.cpp lib x86_64


mkdir -p res/ios/
lipo -create lib/arm64-ios/libtestlib.dylib lib/armv7-ios/libtestlib.dylib -o res/ios/libshared.dylib

rm lib/arm64-ios/libtestlib.dylib
rm lib/armv7-ios/libtestlib.dylib
rmdir lib/arm64-ios
rmdir lib/armv7-ios

mkdir -p res/osx/
lipo -create lib/x86-osx/libtestlib.dylib lib/x86_64-osx/libtestlib.dylib -o res/osx/libshared.dylib

rm lib/x86_64-osx/libtestlib.dylib
rm lib/x86-osx/libtestlib.dylib
rmdir lib/x86_64-osx
rmdir lib/x86-osx


popd
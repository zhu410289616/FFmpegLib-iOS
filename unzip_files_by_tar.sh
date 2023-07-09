#!/bin/sh

# fdk-acc file name
FDK_AAC_NAME="fdk-acc-ios-2.0.2.tar.bz2"

tar -jxvf $FDK_AAC_NAME
cp -r fdk-aac-ios/include/ FFmpeg-iOS/include
cp -r fdk-aac-ios/lib/ FFmpeg-iOS/lib

# x264 file name
X264_NAME="x264-iOS-20191217-2245.tar.bz2"

tar -jxvf $X264_NAME
cp -r x264-iOS/include/ FFmpeg-iOS/include
cp -r x264-iOS/lib/ FFmpeg-iOS/lib

# ffmpeg file name
FFMPEG_NAME="ffmpeg-4.3.1-zip"
FFMPEG_NAME_INCLUDE="$FFMPEG_NAME/include"
FFMPEG_NAME_LIB="$FFMPEG_NAME/lib"

# include dir
tar -jxvf $FFMPEG_NAME_INCLUDE.tar.bz2

# lib files
for LIB in $FFMPEG_NAME_LIB/*.tar.bz2
do
	tar -jxvf $LIB
done

cp -r $FFMPEG_NAME/include/ FFmpeg-iOS/include
cp -r $FFMPEG_NAME/lib/ FFmpeg-iOS/lib

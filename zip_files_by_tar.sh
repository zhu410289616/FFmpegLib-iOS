#!/bin/sh

# fdk-acc file name
FDK_AAC_NAME="fdk-acc-ios-2.0.2.tar.bz2"

if [ $FDK_AAC_NAME ]
then
	echo '$FDK_AAC_NAME is exist...'
else
	tar -jcvf $FDK_AAC_NAME fdk-aac-ios
fi

# x264 file name
X264_NAME="x264-iOS-20191217-2245.tar.bz2"

if [ $X264_NAME ]
then
	echo '$X264_NAME is exist...'
else
	tar -jcvf $X264_NAME x264-iOS
fi

# ffmpeg file name
FFMPEG_NAME="ffmpeg-4.3.1-zip"
FFMPEG_NAME_INCLUDE="$FFMPEG_NAME/include"
FFMPEG_NAME_LIB="$FFMPEG_NAME/lib"

# include dir
tar -jcvf $FFMPEG_NAME_INCLUDE.tar.bz2 $FFMPEG_NAME_INCLUDE/*

# lib files
for LIB in $FFMPEG_NAME_LIB/*.a
do
	tar -jcvf $LIB.tar.bz2 $LIB
done

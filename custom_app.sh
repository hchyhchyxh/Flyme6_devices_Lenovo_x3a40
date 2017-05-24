#!/bin/bash

apkBaseName=$1
tempSmaliDir=$2


if [ "$apkBaseName" = "SystemUITools" ];then
    echo ">>> in custom_app for $apkBaseName to fix SystemUITools FC"
    sed -i '10i\    <uses-permission android:name="android.permission.INTERACT_ACROSS_USERS_FULL"/>' $tempSmaliDir/AndroidManifest.xml
    sed -i '10i\    <uses-permission android:name="android.permission.MANAGE_USERS"/>' $tempSmaliDir/AndroidManifest.xml
fi

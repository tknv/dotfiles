#!/bin/sh

# set var
WORK_FOLDER="build_android_update_zip"
BUILD_ROM_DIR=$PWD
SIGN_TOOL_DIR=${HOME}/android/AutoSign

echo "BUILD update.zip"
echo "Should run it in ROM files dir"
echo -n "Press enter key to start..."
read a
cd /tmp
rm -rf "$WORK_FOLDER"
mkdir -p "$WORK_FOLDER"
cd "$WORK_FOLDER"
unzip ${HOME}/android/AutoSign/update.zip
rm system/lib/modules/*
# cp -a $BUILD_ROM_DIR/modules/*.ko system/lib/modules
find $BUILD_ROM_DIR/modules -type f -name "*.ko" -print0 -exec cp -p {} ./system/lib/modules/ \; -exec echo " Copy to modules" \;
# cp $BUILD_ROM_DIR/zImage kernel
find $BUILD_ROM_DIR -type f -name "zImage" -print0 -exec cp -p {} ./kernel/ \; -exec echo " Copy to kernel" \;

# archive to android_update_zip
cd /tmp/$WORK_FOLDER
zip android_update.zip -r META-INF system kernel

# sign android_update_zip
java -jar $SIGN_TOOL_DIR/signapk.jar $SIGN_TOOL_DIR/testkey.x509.pem $SIGN_TOOL_DIR/testkey.pk8 android_update.zip update_signed.zip

cp update_signed.zip $BUILD_ROM_DIR/${BUILD_ROM_DIR##*/}_update_signed.zip

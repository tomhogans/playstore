#!/bin/sh
jarsigner -verbose -keystore ~/.android/debug.keystore -storepass android -keypass android -digestalg SHA1 -sigalg MD5withRSA -sigfile CERT -signedjar $1-signed.apk $1.apk androiddebugkey

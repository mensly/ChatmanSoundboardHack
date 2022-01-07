decompile:
	java -jar apktool_2.6.0.jar d original.apk -f --output chatman

rebuild:
	java -jar apktool_2.6.0.jar b chatman --debug --use-aapt2 --output tmp.apk
	jarsigner -verbose -keystore ~/.android/debug.keystore -storepass android -keypass android tmp.apk androiddebugkey
	zipalign -f -p 4 tmp.apk chatman_patched.apk
	rm tmp.apk

install: rebuild
	adb install chatman_patched.apk

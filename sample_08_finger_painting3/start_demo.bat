call setup_capture.bat
adb shell rm /sdcard/Download/openxr_capture_frames_1_through_500.gfxr
adb shell monkey -p net.beyondreality.openxr_provider.finger_painting3.openxr -c android.intent.category.LAUNCHER 1

adb shell "settings put global enable_gpu_debug_layers 1"
adb shell "settings put global gpu_debug_app net.beyondreality.openxr_provider.finger_painting3.openxr"
adb shell "settings put global gpu_debug_layers 'VK_LAYER_LUNARG_gfxreconstruct'"

adb shell "setprop debug.gfxrecon.capture_file  '/sdcard/Download/openxr_capture.gfxr'"
adb shell "setprop debug.gfxrecon.capture_file_timestamp 0"

REM adb shell "setprop debug.gfxrecon.capture_frames '1-500'"
adb shell "setprop debug.gfxrecon.capture_frames ''"

adb shell "setprop debug.gfxrecon.skip_threads_with_invalid_data  '1'"

adb shell rm /sdcard/Download/openxr_capture*.gfxr

adb shell monkey -p net.beyondreality.openxr_provider.finger_painting3.openxr -c android.intent.category.LAUNCHER 1

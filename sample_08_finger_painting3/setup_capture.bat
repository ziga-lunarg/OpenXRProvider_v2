adb shell "settings put global enable_gpu_debug_layers 1"
adb shell "settings put global gpu_debug_app net.beyondreality.openxr_provider.finger_painting3.openxr"
adb shell "settings put global gpu_debug_layers 'VK_LAYER_LUNARG_gfxreconstruct'"

adb shell "setprop debug.gfxrecon.capture_file  '/sdcard/Download/openxr_capture.gfxr'"
adb shell "setprop debug.gfxrecon.capture_frames '1-500'"
adb shell "setprop debug.gfxrecon.capture_file_timestamp 0"

adb shell "setprop debug.gfxrecon.skip_threads_with_invalid_data  '1'"
adb shell appops set --uid net.beyondreality.openxr_provider.finger_painting3.openxr MANAGE_EXTERNAL_STORAGE allow



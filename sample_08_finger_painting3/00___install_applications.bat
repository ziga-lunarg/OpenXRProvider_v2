echo "Installing Quest Replay Application"
cd ..\..\gfxreconstruct\android
adb uninstall com.lunarg.gfxreconstruct.replay

REM Install appropriate Quest Replay application
REM =============================================
REM python3 scripts\gfxrecon.py install-apk tools\quest_replay\build\outputs\apk\debug\quest_replay-debug.apk
python3 scripts\gfxrecon.py install-apk tools\quest_replay\build\outputs\apk\release\quest_replay-release.apk

adb shell appops set --uid com.lunarg.gfxreconstruct.replay MANAGE_EXTERNAL_STORAGE allow

echo "Installing Finger Painting App"
cd ..\..\OpenXRProvider_v2\sample_08_finger_painting3
adb uninstall net.beyondreality.openxr_provider.finger_painting3.openxr

REM Install appropriate Finger Painting application
REM =============================================
REM adb install -r build\outputs\apk\Vulkan\debug\sample_08_finger_painting3-Vulkan-debug.apk
adb install -r build\outputs\apk\Vulkan\release\sample_08_finger_painting3-Vulkan-release.apk

adb shell appops set --uid net.beyondreality.openxr_provider.finger_painting3.openxr MANAGE_EXTERNAL_STORAGE allow

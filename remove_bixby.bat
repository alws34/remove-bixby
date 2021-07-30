cd /d "<path to ADB folder>"
rem adb can be downloaded here: https://dl.google.com/android/repository/platform-tools-latest-windows.zip

rem need to enable USB DEBUGGING PRIOR to running the batch file! 

rem how to activate usb debugging: 
rem 1. Launch the Settings application on your phone.
rem 2. Tap the About Phone option generally near the bottom of the list.
rem 3. Then tap the Build Number option 7 times to enable Developer Mode. You will see a toast message when it is done.
rem 4. Now go back to the main Settings screen and you should see a new Developer Options menu you can access (at the bottom).
rem 5. Go in there and enable the USB Debugging mode option.


adb devices
@echo if theres no devices here, or the window freezes, quit and do the steps above.
pause

@echo BYE BYE BIXBY
adb shell pm uninstall -k --user 0 com.samsung.android.bixby.agent

adb shell pm uninstall -k --user 0 com.samsung.android.bixby.es.globalaction

adb shell pm uninstall -k --user 0 com.samsung.android.bixbyvision.framework

adb shell pm uninstall -k --user 0 com.samsung.android.bixby.wakeup

adb shell pm uninstall -k --user 0 com.samsung.android.bixby.plmsync

adb shell pm uninstall -k --user 0 com.samsung.android.bixby.voiceinput

adb shell pm uninstall -k --user 0 com.samsung.systemui.bixby

adb shell pm uninstall -k --user 0 com.samsung.android.bixby.agent.dummy

adb shell pm uninstall -k --user 0 com.samsung.android.app.settings.bixby

adb shell pm uninstall -k --user 0 com.samsung.systemui.bixby2

adb shell pm uninstall -k --user 0 com.samsung.android.bixby.service

adb shell pm uninstall -k --user 0 com.samsung.android.app.routines

adb shell pm uninstall -k --user 0 com.samsung.android.visionintelligence

adb shell pm uninstall -k --user 0 com.samsung.android.app.spage

pause

@echo rebooting device...
adb reboot

### this is test scripts #
export ANDROID_HOME=/Users/lianfeng/profile/android-sdk_r24.4.1-macosx/android-sdk-macosx
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
#build
./gradlew clean
./gradlew assembleDebugAndroidTest installDebugAndroidTest

#test

adb shell am instrument -w -r   -e debug false -e class com.application.example1.ExampleInstrumentedTest com.application.example1.test/android.support.test.runner.AndroidJUnitRunner

# React Native development environment setup using expo and virtual devices

## prerequisites

1. [Android Studio](https://developer.android.com/studio/install): To be able to run android emulator devices, it needs to install Android Studio.
2. Set environment varibales to be able to using `adb` and `emulator` commands:

   - Add the following line in the end of `~/.bashrc` or `~/.zshrc` file ([more details](https://kashanhaider.com/set-up-android-environment-variables-on-macos/)):

     ```shell
     export ANDROID_HOME=$HOME/Library/Android/sdk 
     export PATH=$PATH:$ANDROID_HOME/emulator 
     export PATH=$PATH:$ANDROID_HOME/platform-tools 
     export PATH=$PATH:$ANDROID_HOME/tools 
     export PATH=$PATH:$ANDROID_HOME/tools/bin
     ```

## Android

First of all create some Android devices by taking the following steps:

1. open Android Studio
2. go to `tools>Device Manager`
3. press `Create device` button.
4. follow the steps to create an Android device. As an example, I created the following devices:
   - Nexus_9_API_29
   - Pixel_2_API_32

## How to run devices:

Run all available Android emulators, install expo apk on them and then connect them to the given `expo-server-addr`, e.g.: `exp://localhost:19000`:

```shell
cd Android
chmod +x *.sh
./run_available_emulators.sh && \
./install_expo_on_all_connected_devices.sh && \
./connect_all_devices_to_expo_server.sh <expo-server-addr>
```

## How to shutdown devices:

To shutdown all the emulators using a single command:

```shell
cd Android
chmod +x *.sh
./shutdown_all_devices.sh
```

# Todo:

- [ ] Add iOS support

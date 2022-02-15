# React Native development environment setup using expo and virtual devices

## Android

### Run all available Android emulators, install expo apk on them and then connect them to the given `expo-server-addr`, e.g.: `exp://localhost:19000`:

```shell
cd Android
chmod +x *.sh
./run_available_emulators.sh && ./install_expo_on_all_connected_devices.sh && ./connect_all_devices_to_expo_server.sh <expo-server-addr>
```

### To shutdown all the emulators using a single command:

```shell
./shutdown_all_devices.sh
```

# Todo:

- [ ] Add iOS support

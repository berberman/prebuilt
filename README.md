# fcitx5-android-prebuilt-libs

Prebuit static libraries for [fcitx5-android-poc](https://github.com/rocka/fcitx5-android-poc).
Built with Android NDK 23.0.7421159, `ANDROID_PLATFORM` aka `ANDROID_NATIVE_API_LEVEL` 21.

## boost

Upstream repo (forked): [rocka/Boost-for-Android](https://github.com/rocka/Boost-for-Android/tree/ndk23-boost1.74.0)

```bash
./build-android.sh \
--with-libraries=filesystem,iostreams,regex \
--arch=armebi-v7a,arm64-v8a \
--layout="" \
$ANDROID_SDK_ROOT/ndk/23.0.7421159
```

**Note:** In order to reduce repo size, boost headers are extracted to [boost/include](./boost/include), and symlinked to separated ABI targets.

## fmt

Upstream repo: [fmtlib/fmt](https://github.com/fmtlib/fmt)

Build script: ./scripts/build-fmt.sh

```bash
ANDROID_NDK_ROOT=$ANDROID_SDK_ROOT/ndk/23.0.7421159 \
ANDROID_SDK_CMAKE_VERSION=3.18.1 \
ANDROID_PLATFORM=21 \
ANDROID_ABI=arm64-v8a,armeabi-v7a \
./build-fmt-android.sh
```

## libintl-lite

Upstream repo (forked): [rocka/libintl-lite](https://github.com/rocka/libintl-lite/tree/feature/cmake-package-config)


```bash
ANDROID_NDK_ROOT=$ANDROID_SDK_ROOT/ndk/23.0.7421159 \
ANDROID_SDK_CMAKE_VERSION=3.18.1 \
ANDROID_PLATFORM=21 \
ANDROID_ABI=arm64-v8a,armeabi-v7a \
./build-android-cmake.sh
```

# tauri-x-rs
Configure Tauri to use Rust exclusively for building applications on all platforms.

<!-- <br>

Generate
- [New repo from this Template](https://github.com/xTeKc/tauri-x-rs/generate) <br> -->

<!-- Run
- [Desktop and Web](https://github.com/xTeKc/tauri-x-rs#run-the-demo-for-desktop-and-web) <br>
- [Web LocalHost](https://github.com/xTeKc/tauri-x-rs#localhost-for-web) <br>
- [Android](https://github.com/xTeKc/tauri-x-rs#run-the-demo-for-android) <br>
- [Clean](https://github.com/xTeKc/tauri-x-rs#run-to-clean) <br>

Setup
- [Linux](https://github.com/xTeKc/tauri-x-rs#setup-for-linux) <br>
- [Android](https://github.com/xTeKc/tauri-x-rs#setup-for-android) <br>
- [Rust](https://github.com/xTeKc/tauri-x-rs#install-rust) <br>
- [Tauri](https://github.com/xTeKc/tauri-x-rs#setup-for-tauri) <br>

<br>

# Quickstart
If your system is setup, proceed to...

<br> -->

<!-- ## Use this template
Create a new repo using this template.
```
https://github.com/xTeKc/tauri-x-rs/generate
``` -->

<!-- <br>

## Run the demo for Desktop and Web
This will open the desktop app and host it for the web.
```
make dw
```

<br>

## LocalHost for Web
Go to this url in the browser for the web app.
```
http://127.0.0.1:1420/
```

<br>

## Run the demo for Android
In a new terminal tab, (ctrl + shift + t) run:
```
make a
```

<br>

## ~~Run the demo for IOS~~
~~In a new terminal tab, (ctrl + shift + t) run:~~
<!-- ```
make i
``` 
``` 

```

<br>

## Run to clean
Removes: dist/ - target/ - Cargo.lock, for a clean start.
```
make c
```

<br>

# Setup for Linux

## **Arch** setup
```
sudo pacman -Syu
sudo pacman -S --needed \
    webkit2gtk \
    base-devel \
    curl \
    wget \
    make \
    openssl \
    appmenu-gtk-module \
    gtk3 \
    libappindicator-gtk3 \
    librsvg \
    libvips
```

## **Debian** setup
```
sudo apt update
sudo apt install libwebkit2gtk-4.0-dev \
    build-essential \
    curl \
    wget \
    make \
    libssl-dev \
    libgtk-3-dev \
    libayatana-appindicator3-dev \
    librsvg2-dev
```

## **Fedora** setup
```
sudo dnf check-update
sudo dnf install webkit2gtk3-devel.x86_64 \
    openssl-devel \
    curl \
    wget \
    make \
    libappindicator-gtk3 \
    librsvg2-devel
sudo dnf group install "C Development Tools and Libraries"
```

<br>

# Setup for Android

## Install **Android Studio**
https://developer.android.com/studio

<br>

## Configure **JDK**
_export JAVA_HOME=/**"path-to-android-studio"**/jre_
```
export JAVA_HOME=/opt/android-studio/jre
```

<br>

## Install **Android SDK and NDK**
_using **SDK Manager** in **Android Studio** <br>_
_click **show package details** to view all components_

- Android SDK Platform 33
- Android SDK Platform-Tools
- Android SDK Build-Tools 33.0
- Android SDK Command-Line Tools
- NDK (side by side) 25.0.8775105


<br> -->

# Standalone Setup for Android (Arch)

**Run setup script (pwd)**
```
chmod +x arch_setup.sh && ./arch_setup.sh
```

**Run post script (pwd)**
```
chmod +x arch_post.sh && ./arch_post.sh
```

**Install system-images (~/.android)**
```
./cmdline-tools/latest/bin/sdkmanager "system-images;android-30;google_apis;x86_64"
```

**Create avd (~/.android)**
```
./cmdline-tools/latest/bin/avdmanager create avd --name andro2023 --device "pixel_5" --package "system-images;android-30;google_apis;x86_64"
```

**View avd (~/.android)**
```
./cmdline-tools/latest/bin/avdmanager list avd
```

**Init Android (pwd)**
```
cargo tauri android init
```

**Start avd (pwd)**
```
cargo tauri android dev
```

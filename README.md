# tauri-x-rs
Configure Tauri to use Rust exclusively for building applications on all platforms.

<br>

# Quickstart
If your system is setup, proceed:

<br>

## Clone this repo
```
git clone https://github.com/xTeKc/tauri-x-rs.git
```

<br>

## Run the demo for Desktop and Web
```
make dw
```
This will open the desktop app and host it for the web.

<br>

## Localhost for Web
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
``` -->
``` 

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
    libappindicator-gtk3 \
    librsvg2-devel
sudo dnf group install "C Development Tools and Libraries"
```

<br>

## Install **Rust**
```
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
```

_or_

## Update **Rust**
```
rustup update
```

<br>


# Setup for Tauri

## Install Tauri-Cli version **2.0.0-alpha**
```
cargo install tauri-cli --version "^2.0.0-alpha"
```

<br>

<!-- ## Update deps in **src-tauri** dir to **2.0.0-alpha.0**
```
cargo add tauri@2.0.0-alpha.0 -F config-toml && cargo add tauri-build@2.0.0-alpha.0 --build
``` -->

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


<br>

# Standalone Setup for Android

## Install **JDK**
installs **JDK** and sets **JAVA_HOME** env var to path

**Arch**
```
sudo pacman -S jdk-openjdk
export JAVA_HOME=/usr/lib/jvm/java-19-openjdk/

```
**Debian**
```
sudo apt update
sudo apt install default-jdk
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
```

<br>

## Install **Android SDK and NDK**
```
wget https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip -O cmdline-tools.zip
unzip cmdline-tools.zip
mkdir ~/.android
mv cmdline-tools ~/.android
```

## Set **ANDROID_HOME** and **NDK_HOME** env vars to path
```
export ANDROID_HOME="$HOME/.android"
export NDK_HOME="$ANDROID_HOME/ndk/25.0.8775105"
```

## Install **Android SDK and NDK** components
```
~/.android/cmdline-tools/bin/sdkmanager "platforms;android-33" "platform-tools" "ndk;25.0.8775105" "build-tools;33.0.0"
```

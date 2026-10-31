plugins {
    id("com.android.application")
}

android {
    namespace = "com.taplus.fix"
    compileSdk = 34

    defaultConfig {
        applicationId = "com.taplus.fix"
        minSdk = 29          // Android 10 — 传送门最低版本
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
    }

    signingConfigs {
        create("release") {
            // 仓库内提交的确定性 keystore — 每次构建签名一致
            storeFile = file("taplusfix.jks")
            storePassword = "taplusfix"
            keyAlias = "taplusfix"
            keyPassword = "taplusfix"
        }
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
            signingConfig = signingConfigs.getByName("release")
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    // LSPosed 模块不需要 Activity，忽略无 Activity 的 lint 警告
    lint {
        abortOnError = false
    }
}

dependencies {
    // Xposed API — 本地 jar（官方 Maven 仓库已关闭，不依赖远程）
    compileOnly(files("libs/xposed-api-82.jar"))
}

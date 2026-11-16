plugins {
    id("com.android.application")
}

android {
    namespace = "com.mengdao.scenemonitor"
    compileSdk = 34

    defaultConfig {
        applicationId = "com.mengdao.scenemonitor"
        minSdk = 29          // Android 10
        targetSdk = 34
        versionCode = 100
        versionName = "1.0"
    }

    signingConfigs {
        create("release") {
            // 仓库内提交的确定性 keystore — 每次构建签名一致
            storeFile = file("scenemonitor.jks")
            storePassword = "scenemonitor"
            keyAlias = "scenemonitor"
            keyPassword = "scenemonitor"
        }
    }

    buildTypes {
        release {
            isMinifyEnabled = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
            signingConfig = signingConfigs.getByName("release")
        }
    }

    // classes.dex 默认 Stored；改回 deflate 压缩以缩小 APK。
    packaging {
        dex {
            useLegacyPackaging = true
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

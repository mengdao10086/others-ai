plugins {
    id("com.android.application")
}

android {
    namespace = "com.mengdao.lsposedtoolkit"
    compileSdk = 34

    defaultConfig {
        applicationId = "com.mengdao.lsposedtoolkit"
        minSdk = 29          // Android 10 — 两个旧模块的最低版本
        targetSdk = 34
        versionCode = 23200
        versionName = "2.3.2"
    }

    signingConfigs {
        create("release") {
            // 仓库内提交的确定性 keystore — 每次构建签名一致
            storeFile = file("toolkit.jks")
            storePassword = "toolkit"
            keyAlias = "toolkit"
            keyPassword = "toolkit"
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
        // 诊断构建：额外编入 src/diag/java 下的探针类，release 包不含这些类。
        create("diag") {
            initWith(getByName("release"))
            isMinifyEnabled = false
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

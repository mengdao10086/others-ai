plugins {
    id("com.android.application")
}

android {
    namespace = "com.mengdao.dex2oatboost"
    compileSdk = 34

    defaultConfig {
        applicationId = "com.mengdao.dex2oatboost"
        minSdk = 28
        targetSdk = 34
        versionCode = 1
        versionName = "1.0"
    }

    signingConfigs {
        create("dexopthook") {
            storeFile = file("dexopthook.keystore")
            storePassword = "android"
            keyAlias = "dexopthook"
            keyPassword = "android"
        }
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("dexopthook")
            // 本项目刻意关闭 R8：模块只有几个类，APK 体积本就很小，
            // 关闭混淆可彻底排除「入口类被裁剪/改名」这类只在真机才暴露的风险。
            isMinifyEnabled = false
            isShrinkResources = false
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
}

dependencies {
    // Xposed API (LSPosed 兼容)：compileOnly，不入包，运行期由宿主框架提供
    compileOnly("de.robv.android.xposed:api:82")
    compileOnly("de.robv.android.xposed:api:82:sources")
}

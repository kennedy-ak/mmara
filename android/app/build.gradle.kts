plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.legal.mmara"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        // Update this to your organization's reverse domain name
        applicationId = "com.legal.mmara"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    // Read keystore properties from file (not committed to git)
    val keystorePropertiesFile = rootProject.file("keystore.properties")
    val keystoreProperties = Properties()
    if (keystorePropertiesFile.exists()) {
        keystoreProperties.load(keystorePropertiesFile.inputStream())
    }

    // signingConfigs {
    //     create("release") {
    //         keyAlias = keystoreProperties["keyAlias"] as String
    //         keyPassword = keystoreProperties["keyPassword"] as String
    //         storeFile = file(keystoreProperties["storeFile"] as String)
    //         storePassword = keystoreProperties["storePassword"] as String
    //     }
    // }

    buildTypes {
        release {
            // IMPORTANT: Before releasing to production, create a release keystore:
            // 1. Run: keytool -genkey -v -keystore ~/release.keystore -keyalg RSA -keysize 2048 -validity 10000 -alias release
            // 2. Create keystore.properties in android/ with:
            //    storeFile=path/to/release.keystore
            //    keyPassword=your-key-password
            //    keyAlias=release
            //    storePassword=your-store-password
            // 3. Uncomment the signingConfigs block above and this line:
            // signingConfig = signingConfigs.getByName("release")

            // For now, using debug keys (NOT suitable for production!)
            signingConfig = signingConfigs.getByName("debug")

            // Enable code shrinking and obfuscation
            isMinifyEnabled = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
}

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
}

flutter {
    source = "../.."
}

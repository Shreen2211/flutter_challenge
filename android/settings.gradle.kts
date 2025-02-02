pluginManagement {
    val flutterSdkPath = file("local.properties").let {
        java.util.Properties().apply {
            it.inputStream().use { load(it) }
        }.getProperty("flutter.sdk")
    }

    requireNotNull(flutterSdkPath) { "flutter.sdk not set in local.properties" }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}


plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id ("com.android.application") version "8.5.2" apply false
    id("org.jetbrains.kotlin.android") version "1.9.21" apply false
}


include(":app")

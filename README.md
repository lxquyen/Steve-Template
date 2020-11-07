# Steve-Template
MVVM - Hilt - RxJava - Glide - Retrofit - RxPermission - Timber

1. build.gradle (project)

{
    
    buildscript {
        ext.hilt_version = '2.29-alpha'
    
        repositories {
            maven { url 'https://jitpack.io' }
        }
    
        dependencies {
            classpath "com.google.dagger:hilt-android-gradle-plugin:$hilt_version"
        }
    }
}

allprojects {

    repositories {
        maven { url 'https://jitpack.io' }
    }
}

2. build.gradle (app)

{

    apply plugin: 'kotlin-kapt'

    apply plugin: 'dagger.hilt.android.plugin'

    android {

        compileOptions {
            sourceCompatibility JavaVersion.VERSION_1_8
            targetCompatibility JavaVersion.VERSION_1_8
        }
        kotlinOptions {
            jvmTarget = '1.8'
        }
    }
}

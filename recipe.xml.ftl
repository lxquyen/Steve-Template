<?xml version="1.0"?>
<recipe>
    <instantiate from="root/src/app_package/ApiModule.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/di/ApiModule.kt" />

    <instantiate from="root/src/app_package/AppGlideModule.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/utilities/glide/AppGlideModule.kt" />

    <instantiate from="root/src/app_package/AppModule.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/di/AppModule.kt" />

    <instantiate from="root/src/app_package/BaseActivity.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/base/BaseActivity.kt" />

    <instantiate from="root/src/app_package/BaseFragment.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/base/BaseFragment.kt" />

    <instantiate from="root/src/app_package/BaseViewModel.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/base/BaseViewModel.kt" />

    <instantiate from="root/src/app_package/ContextExtension.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/utilities/extension/ContextExtension.kt" />

    <instantiate from="root/src/app_package/LoadingDialog.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/dialog/LoadingDialog.kt" />

    <instantiate from="root/src/app_package/MainActivity.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/module/MainActivity.kt" />

    <instantiate from="root/src/app_package/MainFragment.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/module/MainFragment.kt" />

    <instantiate from="root/src/app_package/MainViewModel.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/module/MainViewModel.kt" />

    <instantiate from="root/src/app_package/MyApp.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/MyApp.kt" />

    <instantiate from="root/src/app_package/RepositoryModule.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/di/RepositoryModule.kt" />

    <instantiate from="root/src/app_package/RxJavaExtension.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/utilities/extension/RxJavaExtension.kt" />

    <instantiate from="root/src/app_package/SubActivity.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/base/SubActivity.kt" />

    <instantiate from="root/src/app_package/UnsafeOkHttpClient.java.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/utilities/UnsafeOkHttpClient.java" />

    <instantiate from="root/src/app_package/User.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/domain/model/User.kt" />

    <instantiate from="root/src/app_package/UserFragment.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/module/user/UserFragment.kt" />

    <instantiate from="root/src/app_package/UserRepository.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/domain/repository/UserRepository.kt" />

    <instantiate from="root/src/app_package/UserRepositoryImpl.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/repository/UserRepositoryImpl.kt" />

    <instantiate from="root/src/app_package/UserService.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/data/api/UserService.kt" />

    <instantiate from="root/src/app_package/UserViewModel.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/presentation/module/user/UserViewModel.kt" />

    <instantiate from="root/res/layout/dialog_loading.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/dialog_loading.xml" />

    <instantiate from="root/res/layout/fragment_main.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/fragment_main.xml" />

    <instantiate from="root/res/layout/fragment_user.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/fragment_user.xml" />

    <merge from="root/AndroidManifest.xml.ftl"
        to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml"/>

    <dependency mavenUrl="androidx.lifecycle:lifecycle-livedata-ktx:2.2.0"/>
    <dependency mavenUrl="androidx.lifecycle:lifecycle-viewmodel-ktx:2.2.0"/>
    <dependency mavenUrl="androidx.hilt:hilt-lifecycle-viewmodel:1.0.0-alpha02"/>
    <dependency mavenUrl="androidx.hilt:hilt-compiler:1.0.0-alpha02" gradleConfiguration="kapt"/>
    <dependency mavenUrl="androidx.fragment:fragment-ktx:1.2.5"/>

    <dependency mavenUrl="com.google.dagger:hilt-android:2.29-alpha"/>
    <dependency mavenUrl="com.google.dagger:hilt-android-compiler:2.29-alpha" gradleConfiguration="kapt"/>

    <dependency mavenUrl="com.jakewharton.timber:timber:4.7.1"/>
    <dependency mavenUrl="com.github.tbruyelle:rxpermissions:0.12"/>

    <dependency mavenUrl="io.reactivex.rxjava2:rxandroid:2.1.1"/>
    <dependency mavenUrl="io.reactivex.rxjava2:rxjava:2.2.19"/>

    <dependency mavenUrl="com.google.code.gson:gson:2.8.6"/>
    <dependency mavenUrl="com.squareup.okhttp3:okhttp:4.3.1"/>
    <dependency mavenUrl="com.squareup.okhttp3:logging-interceptor:3.10.0"/>
    <dependency mavenUrl="com.squareup.retrofit2:retrofit:2.7.1"/>
    <dependency mavenUrl="com.squareup.retrofit2:adapter-rxjava2:2.7.1"/>
    <dependency mavenUrl="com.squareup.retrofit2:converter-gson:2.7.1"/>

    <dependency mavenUrl="com.github.bumptech.glide:glide:4.11.0"/>
    <dependency mavenUrl="com.github.bumptech.glide:okhttp3-integration:4.11.0"/>
    <dependency mavenUrl="com.github.bumptech.glide:compiler:4.11.0" gradleConfiguration="kapt"/>

</recipe>

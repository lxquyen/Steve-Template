<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools">

    <uses-permission android:name="android.permission.INTERNET" />
    <application
            android:usesCleartextTraffic="false"
            android:requestLegacyExternalStorage="true"
            android:name=".presentation.MyApp"
            tools:targetApi="q">

             <activity android:name=".presentation.module.MainActivity">
                  <intent-filter>
                      <action android:name="android.intent.action.MAIN" />
                      <category android:name="android.intent.category.LAUNCHER" />
                  </intent-filter>
             </activity>

            <activity android:name=".presentation.base.SubActivity"/>
    </application>
</manifest>
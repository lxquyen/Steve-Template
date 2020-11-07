package ${packageName}.presentation.utilities.extension

import android.content.Context
import android.widget.Toast
import ${packageName}.presentation.MyApp
import ${packageName}.presentation.base.SubActivity

fun Context?.navigate(fragment: Class<*>) {
    SubActivity.start(this, fragment)
}

fun Any.showToast(message: String, duration: Int = Toast.LENGTH_SHORT) {
    Toast.makeText(MyApp.self, message, duration).show()
}
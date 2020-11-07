package ${packageName}.presentation.dialog

import android.app.Dialog
import android.content.Context
import android.os.Bundle
import ${packageName}.R
import dagger.hilt.android.qualifiers.ActivityContext
import javax.inject.Inject

class LoadingDialog @Inject constructor(@ActivityContext context: Context) : Dialog(context, R.style.Loading) {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.dialog_loading)
    }
}
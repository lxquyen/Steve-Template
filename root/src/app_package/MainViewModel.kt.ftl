package ${packageName}.presentation.module

import androidx.hilt.lifecycle.ViewModelInject
import androidx.lifecycle.MutableLiveData
import ${packageName}.presentation.base.BaseViewModel
import ${packageName}.presentation.utilities.extension.addToCompositeDisposable
import ${packageName}.presentation.utilities.extension.subscribe
import io.reactivex.Observable
import java.util.concurrent.TimeUnit

class MainViewModel @ViewModelInject constructor() : BaseViewModel() {

    var countLiveData = MutableLiveData<Int>()
    private var count = 0

    fun getCount() {
        Observable
            .fromCallable {
                return@fromCallable ++count
            }
            .delay(1, TimeUnit.SECONDS)
            .subscribe(success = countLiveData, loading = loadingLiveData, error = errorLiveData)
            .addToCompositeDisposable(disposable)
    }
}
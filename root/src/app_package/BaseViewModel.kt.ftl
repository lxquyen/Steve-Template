package ${packageName}.presentation.base

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import io.reactivex.disposables.CompositeDisposable

open class BaseViewModel : ViewModel() {
    var disposable: CompositeDisposable = CompositeDisposable()
    val loadingLiveData = MutableLiveData<Boolean>()
    val errorLiveData = MutableLiveData<Throwable>()

    override fun onCleared() {
        super.onCleared()
        disposable.dispose()
    }

}
package ${packageName}.presentation.utilities.extension

import androidx.lifecycle.MutableLiveData
import io.reactivex.Observable
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.disposables.Disposable
import timber.log.Timber

fun <T> Observable<T>.subscribe(
    success: MutableLiveData<T>? = null,
    error: MutableLiveData<Throwable>? = null,
    loading: MutableLiveData<Boolean>? = null): Disposable {
    return this
        .doOnSubscribe {
            loading?.postValue(true)
        }
        .doFinally {
            loading?.postValue(false)
        }
        .subscribe({
            success?.postValue(it)
        }, {
            error?.postValue(it)
            Timber.e(it)
        })
}

fun Disposable.addToCompositeDisposable(compositeDisposable: CompositeDisposable) {
    compositeDisposable.add(this)
}



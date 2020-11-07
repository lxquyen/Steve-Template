package ${packageName}.presentation.module.user

import androidx.hilt.lifecycle.ViewModelInject
import androidx.lifecycle.MutableLiveData
import ${packageName}.domain.model.User
import ${packageName}.domain.repository.UserRepository
import ${packageName}.presentation.base.BaseViewModel
import ${packageName}.presentation.utilities.extension.addToCompositeDisposable
import ${packageName}.presentation.utilities.extension.subscribe
import io.reactivex.schedulers.Schedulers

class UserViewModel @ViewModelInject constructor(
    val userRepository: UserRepository
) : BaseViewModel() {

    val usersLiveData = MutableLiveData<List<User>>()

    fun getUsers() {
        userRepository.getUsers()
            .subscribeOn(Schedulers.io())
            .subscribe(success = usersLiveData, loading = loadingLiveData)
            .addToCompositeDisposable(disposable)
    }
}
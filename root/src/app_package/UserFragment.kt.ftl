package ${packageName}.presentation.module.user

import androidx.fragment.app.viewModels
import androidx.lifecycle.observe
import ${packageName}.R
import ${packageName}.presentation.base.BaseFragment
import ${packageName}.presentation.base.BaseViewModel
import dagger.hilt.android.AndroidEntryPoint
import timber.log.Timber

@AndroidEntryPoint
class UserFragment : BaseFragment() {
    private val userViewModel: UserViewModel by viewModels()

    override fun getLayoutRes(): Int {
        return R.layout.fragment_user
    }

    override fun getViewModel(): BaseViewModel {
        return userViewModel
    }

    override fun initView() {
        userViewModel.getUsers()
    }

    override fun initObserve() {
        super.initObserve()
        userViewModel.usersLiveData.observe(this) {
            Timber.i("success")
        }
    }
}
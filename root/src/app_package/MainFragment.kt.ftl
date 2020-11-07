package ${packageName}.presentation.module

import androidx.fragment.app.viewModels
import androidx.lifecycle.observe
import ${packageName}.R
import ${packageName}.presentation.base.BaseFragment
import ${packageName}.presentation.base.BaseViewModel
import ${packageName}.presentation.utilities.extension.navigate
import ${packageName}.presentation.module.user.UserFragment
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.android.synthetic.main.fragment_main.*

@AndroidEntryPoint
class MainFragment : BaseFragment() {

    private val mainViewModel: MainViewModel by viewModels()

    override fun getLayoutRes(): Int {
        return R.layout.fragment_main
    }

    override fun getViewModel(): BaseViewModel {
        return mainViewModel
    }

    override fun initView() {
        btnRequest.setOnClickListener {
            mainViewModel.getCount()
        }
        btnNavigate.setOnClickListener {
            context?.navigate(UserFragment::class.java)
        }
    }

    override fun initObserve() {
        super.initObserve()
        mainViewModel.countLiveData.observe(this) {
            tvCount.text = "$it"
        }
    }
}
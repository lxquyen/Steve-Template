package ${packageName}.presentation.base

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.annotation.LayoutRes
import androidx.fragment.app.Fragment
import androidx.lifecycle.observe
import ${packageName}.presentation.dialog.LoadingDialog
import javax.inject.Inject

abstract class BaseFragment : Fragment() {

    @Inject
    lateinit var loadingDialog: LoadingDialog

    @LayoutRes
    abstract fun getLayoutRes(): Int
    abstract fun getViewModel(): BaseViewModel
    abstract fun initView()

    private val baseViewModel: BaseViewModel by lazy {
        return@lazy getViewModel()
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        return inflater.inflate(getLayoutRes(), container, false)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        initView()
        initObserve()
    }

    open fun initObserve() {
        baseViewModel.loadingLiveData.observe(viewLifecycleOwner) { isShow ->
            if (isShow && !loadingDialog.isShowing) {
                loadingDialog.show()
                return@observe
            }
            if (!isShow && loadingDialog.isShowing) {
                loadingDialog.dismiss()
            }
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        if (loadingDialog.isShowing) {
            loadingDialog.dismiss()
        }
    }

    fun onBackPressed(): Boolean {
        return false
    }
}
package ${packageName}.presentation.module

import ${packageName}.presentation.base.BaseActivity
import ${packageName}.presentation.base.BaseFragment

class MainActivity : BaseActivity() {

    override fun getFragment(): BaseFragment {
        return MainFragment()
    }

}
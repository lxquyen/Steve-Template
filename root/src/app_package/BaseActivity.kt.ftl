package ${packageName}.presentation.base

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
abstract class BaseActivity : AppCompatActivity() {
    private lateinit var currentFragment: BaseFragment

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        currentFragment = findOrCreateCurrentFragment()
        if (savedInstanceState == null) {
            initFragment()
        }
    }

    abstract fun getFragment(): BaseFragment

    private fun initFragment() {
        supportFragmentManager
            .beginTransaction()
            .replace(android.R.id.content, currentFragment)
            .commit()
    }

    private fun findOrCreateCurrentFragment(): BaseFragment {
        return supportFragmentManager.findFragmentByTag(this.javaClass.name) as? BaseFragment ?: getFragment()
    }

    override fun onBackPressed() {
        if (currentFragment.onBackPressed())
            return
        super.onBackPressed()
    }
}
package com.textinput

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.TextInputViewManagerDelegate
import com.facebook.react.viewmanagers.TextInputViewManagerInterface

abstract class TextInputViewManagerSpec<T : View> : SimpleViewManager<T>(), TextInputViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = TextInputViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}

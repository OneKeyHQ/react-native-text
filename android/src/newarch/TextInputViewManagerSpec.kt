package com.textinput

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.OneKeyTextInputManagerDelegate
import com.facebook.react.viewmanagers.OneKeyTextInputManagerInterface

abstract class TextInputViewManagerSpec<T : View> : SimpleViewManager<T>(), OneKeyTextInputManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = OneKeyTextInputManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}

// This guard prevent this file to be compiled in the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
#import <React/RCTViewComponentView.h>
#import <UIKit/UIKit.h>

#ifndef TextInputViewNativeComponent_h
#define TextInputViewNativeComponent_h

NS_ASSUME_NONNULL_BEGIN

@interface TextInputView : RCTViewComponentView
@end

NS_ASSUME_NONNULL_END

#endif /* TextInputViewNativeComponent_h */
#endif /* RCT_NEW_ARCH_ENABLED */

#ifdef RCT_NEW_ARCH_ENABLED
#import "TextInputView.h"

#import <react/renderer/components/RNTextInputViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNTextInputViewSpec/EventEmitters.h>
#import <react/renderer/components/RNTextInputViewSpec/Props.h>
#import <react/renderer/components/RNTextInputViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface TextInputView () <RCTTextInputViewViewProtocol>

@end

@implementation TextInputView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<TextInputViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const TextInputViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<TextInputViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<TextInputViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> TextInputViewCls(void)
{
    return TextInputView.class;
}

@end
#endif

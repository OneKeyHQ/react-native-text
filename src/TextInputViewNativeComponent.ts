import codegenNativeComponent from 'react-native/Libraries/Utilities/codegenNativeComponent';
import type { ViewProps } from 'react-native';
import type { DirectEventHandler } from 'react-native/Libraries/Types/CodegenTypes';

interface NativeProps extends ViewProps {
  onPaste?: DirectEventHandler<{}>;
}

export default codegenNativeComponent<NativeProps>('OneKeyTextInput');

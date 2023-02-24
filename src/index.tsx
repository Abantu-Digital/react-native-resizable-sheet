import {
  requireNativeComponent,
  UIManager,
  Platform,
  ViewStyle,
} from 'react-native';

const LINKING_ERROR =
  `The package 'react-native-resizable-sheet' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo Go\n';

type ResizableSheetProps = {
  color: string;
  style: ViewStyle;
};

const ComponentName = 'ResizableSheetView';

export const ResizableSheetView =
  UIManager.getViewManagerConfig(ComponentName) != null
    ? requireNativeComponent<ResizableSheetProps>(ComponentName)
    : () => {
        throw new Error(LINKING_ERROR);
      };

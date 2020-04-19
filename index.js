import { NativeModules } from 'react-native';
import Epub from './src/Epub';
import Rendition from './src/Rendition';
import Streamer from './src/Streamer';

const { RnEpubjs } = NativeModules;

export { Epub, Rendition, Streamer };

import { NativeModules } from 'react-native';
import Epub from './Epub';
import Rendition from './Rendition';
import Streamer from './Streamer';

const { RnEpubjs } = NativeModules;

export { Epub, Rendition, Streamer };

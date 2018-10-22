// @flow

import type { AppleSFSpeechRecognizerAuthorizationStatus } from 'cordova_apple_sf-speech-recognizer-authorization-status';

export default (): Promise<AppleSFSpeechRecognizerAuthorizationStatus> => (
  new Promise((resolve, reject) => global.cordova.exec(
    resolve,
    reject,
    'AppleSFSpeechRecognizerGetAuthorizationStatus',
    'exec',
  ))
);

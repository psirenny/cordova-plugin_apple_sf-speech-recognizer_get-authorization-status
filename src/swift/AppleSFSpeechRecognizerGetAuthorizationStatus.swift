import Speech

@objc(AppleSFSpeechRecognizerGetAuthorizationStatus)
class AppleSFSpeechRecognizerGetAuthorizationStatus: CDVPlugin {
  @objc(exec:) func index(_ command: CDVInvokedUrlCommand) {
    let status = SFSpeechRecognizer.authorizationStatus()
    let result = CDVPluginResult(status: CDVCommandStatus_OK, messageAs: status.rawValue)
    self.commandDelegate!.send(result, callbackId: command.callbackId)
  }
}

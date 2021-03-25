import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

const String _BOOLEAN_VALUE="sample_bool_value";
const String _INT_VALUE="sample_int_value";
const String _STRING_VALUE="sample_string_value";
class RemoteConfigService {
  final RemoteConfig _remoteConfig;
  RemoteConfigService({RemoteConfig remoteConfig }) :_remoteConfig=remoteConfig;
  final defaults=<String, dynamic>{
    _BOOLEAN_VALUE:false,
    _INT_VALUE:01,
    _STRING_VALUE:"Remote Config Sample",
  };

  static RemoteConfigService _instance;
  static Future<RemoteConfigService> getInstance() async {
    if(_instance==null){
      _instance=RemoteConfigService(
        remoteConfig: await RemoteConfig.instance,
      );
    }
    return _instance;
  }

  bool get getBoolValue=>_remoteConfig.getBool(_BOOLEAN_VALUE);
  bool get getIntValue=>_remoteConfig.getBool(_INT_VALUE);
  bool get getStringValue=>_remoteConfig.getBool(_STRING_VALUE);

  Future initialize() async {
    try {
      await _remoteConfig.setDefaults(defaults);
      await _fetchAndActivate();
    } on FetchThrottledException catch (e) {
      print("Remote config fetch throttled : $e");
    } catch (e){
      print("Unable to fecth");
    }
  }

  Future _fetchAndActivate() async {
    await _remoteConfig.fetch(expiration: Duration(hours: 4));
    await _remoteConfig.activateFetched();
  }

}
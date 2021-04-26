import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';

const String _BOOLEAN_VALUE = 'sample_bool_value';
const String _INT_VALUE = 'sample_int_value';
const String _STRING_VALUE = 'sample_string_value';
const String imageUrls = 'image_urls';

class RemoteConfigService {
  RemoteConfigService({RemoteConfig remoteConfig})
      : _remoteConfig = remoteConfig;
  final RemoteConfig _remoteConfig;

  final Map<String, dynamic> defaults = <String, dynamic>{
    _BOOLEAN_VALUE: false,
    _INT_VALUE: 01,
    _STRING_VALUE: 'Remote Config Sample',
  };

  static RemoteConfigService _instance;
  static Future<RemoteConfigService> getInstance() async {
    return _instance ??= RemoteConfigService(
      remoteConfig: await RemoteConfig.instance,
    );
  }

  bool get getBoolValue => _remoteConfig.getBool(_BOOLEAN_VALUE);
  int get getIntValue => _remoteConfig.getInt(_INT_VALUE);
  String get getStringValue => _remoteConfig.getString(_STRING_VALUE);
  String get getImageUrls => _remoteConfig.getString(imageUrls);

  Future<void> initialize() async {
    try {
      await _remoteConfig.setDefaults(defaults);
      await _fetchAndActivate();
    } on FetchThrottledException catch (e) {
      debugPrint('Remote config fetch throttled : $e');
    } catch (e) {
      debugPrint('Unable to fecth');
    }
  }

  Future<void> _fetchAndActivate() async {
    await _remoteConfig.fetch(expiration: const Duration(hours: 4));
    await _remoteConfig.activateFetched();
  }
}

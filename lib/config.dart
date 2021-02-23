class Config {
  final String appName;
  final String flavorName;
  final String apiBaseUrl;
  final String apiSentry;
  final String googleApi;

  Config({
    this.appName,
    this.flavorName,
    this.apiBaseUrl,
    this.apiSentry,
    this.googleApi,
  });

  static Config _instance;

  static Config getInstance(
      {appName, flavorName, apiBaseUrl, apiSentry, googleApi}) {
    if (_instance == null) {
      _instance = Config(
        appName: appName,
        flavorName: flavorName,
        apiBaseUrl: apiBaseUrl,
        apiSentry: apiSentry,
        googleApi: googleApi,
      );

      print('🚀 APP APP_NAME         : $appName');
      print('🚀 APP FLAVOR NAME      : $flavorName');
      print('🚀 APP API_BASE_URL     : $apiBaseUrl');
      print('🚀 APP API_SENTRY       : $apiSentry');
      return _instance;
    }
    return _instance;
  }
}

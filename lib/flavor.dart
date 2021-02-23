import 'config.dart';

void development() {
  Config.getInstance(
    appName: 'CodeMagic dev',
    flavorName: 'development',
    apiBaseUrl: '',
    apiSentry: '',
  );
}

void staging() {
  Config.getInstance(
    appName: 'CodeMagic stag',
    flavorName: 'staging',
    apiBaseUrl: '',
    apiSentry: '',
  );
}

void production() {
  Config.getInstance(
    appName: 'CodeMagic prod',
    flavorName: 'production',
    apiBaseUrl: '',
    apiSentry: '',
  );
}

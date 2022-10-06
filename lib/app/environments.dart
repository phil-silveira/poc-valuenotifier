enum Environments {
  dev,
  qa,
  prod;

  static Environments fromString(String text) {
    switch (text) {
      case 'DEV':
        return Environments.dev;
      case 'QA':
        return Environments.qa;
      case 'PROD':
        return Environments.prod;
      default:
        throw Exception('Invalid environment string');
    }
  }

  String get baseUrl {
    switch (this) {
      case Environments.dev:
        return 'http://frango.com';
      case Environments.qa:
        return 'http://monstrinho.com';
      case Environments.prod:
        return 'http://monstro-oficial.com';
    }
  }
}

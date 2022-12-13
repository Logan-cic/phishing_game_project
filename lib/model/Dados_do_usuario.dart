class Userdata {
  String _name = '';
  String _email = '';
  dynamic _idade;
  String _senha = '';
 

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  dynamic get idade => _idade;

  set idade(dynamic value) {
    _senha = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}

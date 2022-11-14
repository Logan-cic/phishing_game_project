class Userdata {
  String _name = '';
  String _email = '';
  String _idade = '';
  String _senha = '';

  Userdata();

  String get senha => _senha;

  set senha(String value) {
    _senha = value;
  }

  String get idade => _idade;

  set idade(String value) {
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

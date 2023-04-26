class Cronometro {
  static DateTime? _inicio;
  static DateTime? _fim;
  static Duration? _duracao;

  void iniciar() {
    _inicio = DateTime.now();
  }

  void parar() {
    if (_inicio != null) {
      _fim = DateTime.now();
    }
  }

  String tempoTotal() {
    if (_inicio != null && _fim != null) {
       _duracao = _fim?.difference(_inicio!);
      return _duracao.toString();
    } else {
      return "Cronômetro não iniciado ou não parado";
    }
  }
}
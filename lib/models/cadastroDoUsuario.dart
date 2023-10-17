class Usuario {
  String? areaDeAtuacao;
  String? anoDeNascimento;
  String? jaFeztreinamentoSobrePhishing;

  static List<Map<String, dynamic>> cadastro = [];

  String? get areaDeAtuacaoDoUsuario => areaDeAtuacao;
  String? get anoDeNascimentoDoUsuario => anoDeNascimento;
  String? get usuarioFezTreinamentoSobrePhishing =>
      jaFeztreinamentoSobrePhishing;
  List<Map<String, dynamic>> get conteudoDoCadastro => cadastro;

  preencheMapDeCadastro() {
    cadastro.add({
      "areaDeAtuacao": areaDeAtuacaoDoUsuario,
      "anoDeNascimento": anoDeNascimentoDoUsuario,
      "jaFeztreinamentoSobrePhishing": usuarioFezTreinamentoSobrePhishing
    });
  }

  setAreaDeAtuacao(String areaDeAtuacao) {
    this.areaDeAtuacao = areaDeAtuacao;
  }

  setAnoDeNascimento(String anoDeNascimento) {
    this.anoDeNascimento = anoDeNascimento;
  }

  setJaFeztreinamentoSobrePhishing(String jaFeztreinamentoSobrePhishing) {
    this.jaFeztreinamentoSobrePhishing = jaFeztreinamentoSobrePhishing;
  }

  novoCadastro() {
    cadastro.clear();
  }
}
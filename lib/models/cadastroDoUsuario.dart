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
    // print(cadastro);
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

// void main(List<String> args) {
//   Usuario teste = Usuario();
//   teste.setAreaDeAtuacao("areaDeAtuacao");
//   teste.setAnoDeNascimento("anoDeNascimento");
//   teste.setJaFeztreinamentoSobrePhishing("jaFeztreinamentoSobrePhishing");
//   teste.preencheMapDeCadastro();
//   print(teste.conteudoDoCadastro);
// }

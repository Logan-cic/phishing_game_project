import 'package:flutter/material.dart';
import 'package:phishing_game_project/models/guardaRespostas.dart';
import 'package:phishing_game_project/page/perguntas.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../../services/firebase_crud.dart';
import '../../Resposta/Formulario_de_Resposta.dart';
import 'Screen12.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: MaterialApp(
        home: Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Perguntas())));
              },
            ),
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: Text(
                "Game Phishing",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
              children: [
                // EmailTitle(
                //     label: "Tudo no Roxinho: quer saber se você ganhou?"),
                SenderCard(label: "Nubank"),
                ShippingInformation(
                    sender: "Nubank",
                    emailSender: "inforemail@nubank.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),

                SizedBox(height: 14),

                Image.asset('images/nubank.jpg'),

                Container(
                  height: 400,
                  color: Colors.black,
                  child: const Center(
                    child: Text(
                        "Parabéns, \n\nVocê foi um dos ganhadores na premiação do concurso Tudo no Roxinho. O Nubank nasceu com a missão de descomplicar o dia a dia das pessoas, principalmente quando se trata de vida financeira. Oferecemos produtos e serviços simples de usar e que podem ser acompanhados totalmente pelo aplicativo. \n\nE com a promoção “Tudo no Roxinho” não é diferente. Lançada hoje, 16 de maio de 2022, ela vai durar três meses, com quatro sorteios de R\$ 10 mil por mês, durante o período da promoção e um grande prêmio de R\$ 300 mil ao final da promoção, que se encerra em setembro deste ano. \n\nEntre no nosso site e resgate sua premiação: \nhttps://nunbank.com.br/premio",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  ),
                ),
              ],
            ))),
      ),
    );
  }
}

// class PerguntasParaTelaDeEmail2 extends StatefulWidget {
//   const PerguntasParaTelaDeEmail2({super.key});
//   @override
//   State<Perguntas> createState() => _PerguntasState();
// }

// class _PerguntasState extends State<Perguntas> {

//   final _simOuNaoEmail2 = TextEditingController();
//   final _casoSimEmail2 = TextEditingController();
//   final _casoNaoEmail2 = TextEditingController();
//   List<Widget> _widgets = [];

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     final perguntaDeSimOuNao = TextFormField(
//         controller: _simOuNaoEmail2,
//         autofocus: false,
//         validator: (value) {
//           if (value == null || value.trim().isEmpty) {
//             return 'This field is required';
//           }
//         },
//         decoration: InputDecoration(
//             contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//             hintText: "Sim ou não",
//             border:
//                 OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

//     final perguntaCasoSim = TextFormField(
//         controller: _casoSimEmail2,
//         autofocus: false,
//         validator: (value) {
//           if (value == null || value.trim().isEmpty) {
//             return 'This field is required';
//           }
//         },
//         decoration: InputDecoration(
//             contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//             hintText: "Justificativa caso sim",
//             border:
//                 OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));

//     final perguntaCasoNao = TextFormField(
//         controller: _casoNaoEmail2,
//         autofocus: false,
//         validator: (value) {
//           if (value == null || value.trim().isEmpty) {
//             return 'This field is required';
//           }
//         },
//         decoration: InputDecoration(
//             contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//             hintText: "Justificativa caso não",
//             border:
//                 OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))));
//     final SaveButon = Material(
//       elevation: 5.0,
//       borderRadius: BorderRadius.circular(30.0),
//       color: Theme.of(context).primaryColor,
//       child: MaterialButton(
//         minWidth: MediaQuery.of(context).size.width,
//         padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//         onPressed: () {
//           if (_formKey.currentState!.validate()) {
//             GuardaRespostas resposta = GuardaRespostas();
//             resposta.adiciona({
//               "simOuNao": _simOuNaoEmail2.text,
//               "casoSim": _casoSimEmail2.text,
//               "casoNao": _casoNaoEmail2.text
//             });
//             Navigator.push(
//                 context, MaterialPageRoute(builder: ((context) => Screen12())));
//           }
//         },
//         child: Text(
//           "responder",
//           style: TextStyle(color: Theme.of(context).primaryColorLight),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );

//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: Row(
//           children: [
//             Text("Agora Responda"),
//             SizedBox(
//               width: 10,
//             ),
//             Icon(
//               Icons.format_align_right,
//             ),
//           ],
//         ),
//         backgroundColor: Colors.red,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Form(
//             key: _formKey,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   perguntaDeSimOuNao,
//                   const SizedBox(height: 25.0),
//                   perguntaCasoSim,
//                   const SizedBox(height: 35.0),
//                   perguntaCasoNao,
//                   const SizedBox(height: 45.0),
//                   SaveButon,
//                   const SizedBox(height: 15.0),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

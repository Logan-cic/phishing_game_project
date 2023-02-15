import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/perguntas.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../../models/guardaRespostas.dart';
import '../../Resposta/Formulario_de_Resposta.dart';

class Screen12 extends StatelessWidget {
  const Screen12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      child: MaterialApp(
        home: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => Perguntas())));
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
                //EmailTitle(label: "Microsoft account password change "),
                SenderCard(label: "Microsoft"),
                ShippingInformation(
                    sender: "Microsoft",
                    emailSender: "service@paypal.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),
                //Image.asset('images/paypal.jpg'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                        "Olá cliente,\n\n obrigado por usar Bradesco. Sinto informar que sua conta corrente/poupança será suspensa por não cumprir com nossos termos e condições\n\nOs motivos são: dados cadastrais desatualizados, cartão chave de segurança expirada.\n\nPara evitar essa suspenção será necessário atualizar seus dados Acesse o link para atualizar seus dados: \n\nwww.scam.org.com/FMfcgzGqQmWjKmdhgcFRXtMlKlnPlJWQ"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class Perguntas extends StatefulWidget {
//   const Perguntas({super.key});
//   @override
//   State<Perguntas> createState() => _PerguntasState();
// }

// class _PerguntasState extends State<Perguntas> {
//   int _contador = 0;
//   void _incrementarContador() {
//     setState(() {
//       _contador++;
//     });
//   }

//   void _proximatela() {
//     Navigator.push(
//         context, MaterialPageRoute(builder: ((context) => Screen12())));
//   }

//   var lista = [];

//   final _simOuNao = TextEditingController();
//   final _casoSim = TextEditingController();
//   final _casoNao = TextEditingController();
//   List<Widget> _widgets = [];

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     final perguntaDeSimOuNao = TextFormField(
//         controller: _simOuNao,
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
//         controller: _casoSim,
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
//         controller: _casoNao,
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
//               "simOuNao": _simOuNao.text,
//               "casoSim": _casoSim.text,
//               "casoNao": _casoNao.text
//             });
//             // Navigator.push(
//             //     context, MaterialPageRoute(builder: ((context) => )));
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

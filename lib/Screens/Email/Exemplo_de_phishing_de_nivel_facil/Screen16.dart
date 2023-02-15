import 'package:flutter/material.dart';
import 'package:phishing_game_project/models/Dados_do_usuario.dart';
import 'package:phishing_game_project/page/perguntas.dart';
import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../../models/guardaRespostas.dart';
import '../../Resposta/Formulario_de_Resposta.dart';
import 'Screen12.dart';

class Screen16 extends StatelessWidget {
  const Screen16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Userdata user;
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Últimas horas do Saldão do Cliente!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                const SenderCard(label: "Amazon Inc."),
                const ShippingInformation(
                    sender: "Amazon Inc.",
                    emailSender: "infosecurity@amazon.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),
                SizedBox(height: 14),
                Container(
                  height: 602,
                  width: 390,
                  color: Colors.black,
                  child: Column(
                    children: [
                      //Image.asset('images/amazon.jpg'),
                      Row(
                        children: [
                          Text(
                            "Dear Customer, ",
                            textAlign: TextAlign.left,
                            //textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "  We detected suspicious activity in your account and multiple password used for access your account.",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text("We need you to confirm your account!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 183, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text("1. Click Here ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Text(
                            "to confirm your account.",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("2. Enter your informations. ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("3. Finally your account will be confirmed. ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Text("Note",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            ": If you dont't confirm it withing 48 hours, we will",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "close or suspend your account.",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Sincerely,",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Amazon.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
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
//             Navigator.push(
//                 context, MaterialPageRoute(builder: ((context) => Screen2())));
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

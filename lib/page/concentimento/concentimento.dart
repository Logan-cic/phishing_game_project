// import 'dart:math';

// import 'package:flutter/material.dart'; 
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Perguntas',
//       home: Perguntas(),
//     );
//   }
// }

// class Perguntas extends StatefulWidget {
//   @override
//   _PerguntasState createState() => _PerguntasState();
// }

// class _PerguntasState extends State<Perguntas> {
//   int _numeroRespostasDadas = 0;
//   String _nomeUsuario = '';

//   final List<Widget> _screens = [
//     Screen(
//       cor: Colors.red,
//       texto: 'Tela 1',
//     ),
//     Screen(
//       cor: Colors.blue,
//       texto: 'Tela 2',
//     ),
//     Screen(
//       cor: Colors.green,
//       texto: 'Tela 3',
//     ),
//     Screen(
//       cor: Colors.orange,
//       texto: 'Tela 4',
//     ),
//     Screen(
//       cor: Colors.purple,
//       texto: 'Tela 5',
//     ),
//     Screen(
//       cor: Colors.teal,
//       texto: 'Tela 6',
//     ),
//   ];

//   bool _telaFinal = false;
//   int _telaAtual = 0;

//   void _responder() {
//     if (_numeroRespostasDadas < 2) {
//       setState(() {
//         _telaAtual = Random().nextInt(_screens.length);
//         _numeroRespostasDadas++;
//       });
//     } else {
//       setState(() {
//         _telaFinal = true;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Perguntas'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Qual é o seu nome?',
//               ),
//               onChanged: (nome) {
//                 setState(() {
//                   _nomeUsuario = nome;
//                 });
//               },
//             ),
//             SizedBox(height: 16),
//             TextButton(
//               child: Text('Responder'),
//               onPressed: _nomeUsuario.isEmpty ? null : _responder,
//             ),
//             SizedBox(height: 32),
//             if (_telaFinal)
//               Text(
//                 'Obrigado, $_nomeUsuario! Você já respondeu todas as perguntas.',
//                 style: TextStyle(fontSize: 18),
//               ),
//             if (!_telaFinal)
//               Expanded(
//                 child: _screens[_telaAtual],
//               ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.arrow_back),
//         onPressed: _numeroRespostasDadas > 0
//             ? () {
//                 setState(() {
//                   _telaAtual = Random().nextInt(_screens.length);
//                   _numeroRespostasDadas--;
//                   _telaFinal = false;
//                 });
//               }
//             : null,
//       ),
//     );
//   }
// }

// class Screen extends StatelessWidget {
//   final Color cor;
//   final String texto;

//   const Screen({super.key, required this.cor, required this.texto});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: cor,
//       child: Center(
//         child: Text(
//           texto,
//           style: TextStyle(fontSize: 32, color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
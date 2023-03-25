import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/Home.dart';
import 'package:phishing_game_project/page/addCadastro.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: ' ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();
  bool _acceptTerms = false;


  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 20),
            child: _buildImage('simbolo_lab.png', 100),
          ),
        ),
      ),
      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Como jogar o game phishing',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => _onIntroEnd(context),
      //   ),
      // ),
      pages: [
        
        PageViewModel(
          title: "Bem vindo ao Game Phishing",
          body:
              "Os ataques phishing são uma ameaça cada vez mais comum no mundo digital. Eles são realizados por meio de mensagens fraudulentas que se parecem com comunicações legítimas de empresas e organizações conhecidas. A conscientização é a chave para evitar ser vítima de um ataque phishing. Ao permanecer vigilante e tomar precauções de segurança adequadas, você pode proteger-se contra essa ameaça crescente na internet.",
          image: _buildImage('logo.png'),
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 19.0),
            pageColor: Colors.white,
            imagePadding: EdgeInsets.zero,
            
          ),
        ),
        PageViewModel(
          title: "Fase de cadastro",
          body:
              "Nesta fase, precisamos que você se cadastre. Para isso, basta informar sua área de atuação e data de nascimento.",
          image: _buildImage('cadastro_tutorial.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Como jogar?",
          body:
              "Será mostrado na sua tela um exemplo que pode ou não ser um phishing. Analise o exemplo e, em seguida, clique no botão com o ícone de '+' no lado inferior direito da tela.",
          image: _buildImage('exemplo.jpg'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Como responder",
          body:
              "Primeiramente, você precisa dizer se o exemplo é phishing ou não. Logo em seguida, insira a justificativa da sua resposta anterior. Serão mostrados um total de 12 exemplos, que serão contabilizados e mostrados na parte superior da sua tela.",
          image: Padding(
            padding: const EdgeInsets.only(top: 20, right: 20),
            child: Image.asset('images/resposta_exemplo.jpg', width: 350),
          ),
          decoration: pageDecoration,
        ),
      
        
        PageViewModel(
          title: "Termos de Uso",
          bodyWidget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("    Como aluno vinculado ao PROGRAMA DE PÓS GRADUAÇÃO EM SEGURANÇA PÚBLICA DO INSTITUTO DE FILOSOFIA E CIÊNCIAS HUMANAS DA UNIVERSIDADE FEDERAL DO PARÁ, sob orientação do professor Dr. Renato Hidaka Torres na área de concentração Segurança Pública Justiça, conflitos e cidadaniae linha de pesquisa Crimes Cibernéticos, criamos o PHISHING GAME, com o objetivo de coletar dados para a pesquisa deste orientando, sem nenhum fim lucrativo, por meio da coletas de respostas das alternativas apresentadas no jogo.\n\n    O jogador, após cadastro prévio, vai selecionar alternativas retiradas de exemplos reais de PHISHING (tentativas de golpes de criminosos), bem como alternativas que não são PHISHING.  Após deverá responder se a alternativa se enquadra ou não como o cibercrime de PHISHING. O jogador fará uma breve justificativa de sua resposta e terá o gabarito delas ao final.\n\n    A obtenção das respostas servirá para coleta de dados do discente na pesquisa 'O Estudo do Cibercrime de Phishing no Estado do Pará', podendo ser respondida por qualquer pessoa da comunidade acadêmica ou não, garantindo-se a não divulgação de dados pessoais conforme a LGPD Lei Geral de Proteção de Dados (art 7º, IV da LGPD).\n\n     A sua resposta é essencial para a pesquisa acadêmica, mas também para elaboração de estratégia de combate e prevenção ao PHISHING. Contamos com sua colaboração.\n\nAtenciosamente\n\nDr. Renato Hidaka Torres (Professor do Programa de Pós-graduação em Segurança Pública da UFPA\n\nFabrício Barreto Nascimento (Mestrando do Programa de Pós-graduação em Segurança Pública da UFPA)"),
              SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                  value: _acceptTerms,
                  onChanged: (value) {
                    setState(() {
                      _acceptTerms = value!;
                    });
                  },
                ),
                Text('Aceito participar da pesquisa'),
                 
                ],
              ),

            ],
          ),
          image: _buildImage('phishing.jpg'),
          footer: ElevatedButton(
            onPressed: () {
               if (_acceptTerms) {
                  Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => AddPage())));
                }else{
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Erro'),
                        content: Text('Você precisa concordar com a pesquisa para prosseguir.'),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text(
              'Vamos-la',
              style: TextStyle(color: Colors.white),
            ),
          ),
          decoration: pageDecoration.copyWith(
            bodyFlex: 6,
            imageFlex: 6,
            safeArea: 80,
          ),
        )
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}

class Merda  extends StatelessWidget {
  const Merda ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
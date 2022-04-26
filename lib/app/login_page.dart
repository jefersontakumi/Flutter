import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.red.withOpacity(0.3),
          ),
          _body(),
        ],
      ),
    );
  }

  @override
  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 16, bottom: 32),
                  child: Column(children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/images/git.png',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        border: const OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (text) {
                        senha = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        onPressed: () {
                          if (email == 'jefersontakumi@gmail.com' &&
                              senha == '123') {
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            print('Falha');
                          }
                        },
                        child: Text(
                          'Entrar',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

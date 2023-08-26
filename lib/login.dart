import 'package:flutter/material.dart';
import 'package:tallerlogin/Recuperar.dart';
import 'package:tallerlogin/index.dart';
import 'package:tallerlogin/registrar.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Publigrafit',
      debugShowCheckedModeBanner: false,

      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Aquí podrías realizar la lógica de autenticación.
      String username = _usernameController.text;
      String password = _passwordController.text;
      // Lógica de autenticación aquí...
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(242, 255, 255, 255),
      // appBar: AppBar(
      //   title: const Text('Inicio de Sesión'),
      // ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children:[
         Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              SizedBox(height: 90,),
              Image.network('http://drive.google.com/uc?export=view&id=1Zu2cm69lPkIEu09fqA4wA1B3BTL88v1w', height: 100,),
            const Text('Iniciar Sesión', style: TextStyle(fontSize: 25),),
              SizedBox(height: 10),
              SizedBox(
                width: 500,
                height: 355,
                child: Card(
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: _usernameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor ingresa tu nombre de usuario';
                              }
                              return null;
                            },

                            decoration: InputDecoration(
                              labelText: 'Nombre de usuario',
                              errorStyle: TextStyle(color: Colors.blue)
                            ),
                          ),
                          
                          SizedBox(height: 16.0),
                          TextFormField(
                            controller: _passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor ingresa tu contraseña';
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Contraseña',
                              errorStyle: TextStyle(color: Colors.blue)
                            ),
                          ),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  Index()));
                            },
                            child: const Text('Iniciar Sesión'),
                          ),

                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const MyApp()),
);

                            },
                            child: const Text('Registrar'),
                          ),
                          TextButton(onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  RecuperarC()));
                          }, child: Text('Recuperar Contraseña'))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}

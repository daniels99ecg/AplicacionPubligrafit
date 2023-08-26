import 'package:flutter/material.dart';

class RecuperarC extends StatefulWidget{
  @override
  State<RecuperarC> createState() => _RecuperarCState();
}

class _RecuperarCState extends State<RecuperarC> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

final TextEditingController _recuperarPassword=TextEditingController();

void Recuperar(){
  if(_formKey.currentState!.validate()){
  String password=_recuperarPassword.text;
  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Email enviado')),
                  );
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(242, 255, 255, 255),

      appBar: AppBar(
        title: Text('Recuperar Contraseña'),
      ),
      body: Form(
        key: _formKey,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 500,
              height: 250,
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    color: Color.fromARGB(255, 255, 255, 255),
              
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 20,),
                        TextFormField(
                          controller: _recuperarPassword,
                          validator: (value){
                             if (value == null || value.isEmpty) {
                                            return 'Por favor ingresa su email';
                                          }
                                          return null;
                                        
                          },
                          decoration: InputDecoration(hintText: 'Email'),
                        ),
                        SizedBox(height: 25,),
                        ElevatedButton(
                          
                          onPressed: Recuperar, 
                          
                        child: Text('Recuperar Contraseña'))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:tallerlogin/login.dart';

import 'compras.dart';
import 'index.dart';

void main() {
  runApp(const EditarPerfil());
}


class EditarPerfil extends StatelessWidget {
  const EditarPerfil({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Raleway',
          ),
      debugShowCheckedModeBanner: false,
      home: const RegisterPage(title: 'Flutter Demo Home Page'),
    );
  }
}

enum SinginCharacter { femenino, masculino }

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.title});
  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
 
  SinginCharacter? _sex = SinginCharacter.femenino;

  String _nombre = '';
  final _formKey = GlobalKey<FormState>();
  String _password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
             const UserAccountsDrawerHeader(
              accountName: Text("Hayberth"),
              accountEmail: Text("Hayberth@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg"),
              ),
             ),

 ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                  Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  Index()));
              },
            ),
               ListTile(
              leading: const Icon(Icons.add_shopping_cart),
              title: const Text("Compras"),
              onTap: () {
                  Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  Compras()));
              },
            ),
             ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Perfil"),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) =>  EditarPerfil()));
                
              },
            ),
          

           Container(
                color: Colors.black,
                width: double.infinity,
                height: 0.1,
              ),
                ListTile(
                
                leading: const Icon(Icons.logout_sharp),
                title: const Text("Cerrar Sesión"),
                onTap: () {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  LoginApp()));
                },
                         ),
            

          ],

        ),
      ),
      appBar: AppBar(
        title:const Text('Editar Perfil'),
      ),
        body: SingleChildScrollView(
        
      child: Container(
        margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           
            // Container(
            //   margin: const EdgeInsets.only(top: 5),
              
            //   child: Center(
            //     child: const Text(
            //       'Actualizar Perfil',
                  
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            //     ),
            //   ),
              
            // ),
            SizedBox(height: 8,),
            Center(child: Image.network("https://static.vecteezy.com/system/resources/previews/000/439/863/original/vector-users-icon.jpg", height: 100,),),
            Center(child: Text('Editar')),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0),
              child: Text('.'),
            ),
            Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Nombre',
                              hintStyle:
                                  const TextStyle(fontWeight: FontWeight.w600),
                              fillColor: Colors.grey.shade200,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                              ),
                              filled: true),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Por favor ingrese su nombre';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            setState(() {
                              _nombre = value.toString();
                            });
                          },
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Apellidos',
                              hintStyle:
                                  const TextStyle(fontWeight: FontWeight.w600),
                              fillColor: Colors.grey.shade200,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                              ),
                              filled: true),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor digite su apellido';
                            }
                          },
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Radio<SinginCharacter>(
                                  value: SinginCharacter.femenino,
                                  groupValue: _sex,
                                  onChanged: (SinginCharacter? value) {
                                    setState(() {
                                      _sex = value;
                                    });
                                  },
                                ),
                                const Text('Femenino')
                              ],
                            ),
                            Row(
                              children: [
                                Radio<SinginCharacter>(
                                  value: SinginCharacter.masculino,
                                  groupValue: _sex,
                                  onChanged: (SinginCharacter? value) {
                                    setState(() {
                                      _sex = value;
                                    });
                                  },
                                ),
                                const Text('Masculino')
                              ],
                            ),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Correo',
                              hintStyle:
                                  const TextStyle(fontWeight: FontWeight.w600),
                              fillColor: Colors.grey.shade200,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                              ),
                              filled: true),
                          validator: (value) {
                            String pattern =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            RegExp regExp = RegExp(pattern);
                            if (value!.isEmpty) {
                              return "El correo es necesario";
                            } else if (!regExp.hasMatch(value)) {
                              return "Correo invalido";
                            } else {
                              return null;
                            }
                          },
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          obscureText: true,
                          onChanged: (value) {
                            setState(() {
                              _password = value;
                            });
                          },
                          decoration: InputDecoration(
                              hintText: 'Contraseña',
                              hintStyle:
                                  const TextStyle(fontWeight: FontWeight.w600),
                              fillColor: Colors.grey.shade200,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                              ),
                              filled: true),
                          validator: (value) {
                            String pattern =
                                r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$';
                            RegExp regExp = RegExp(pattern);
                            if (value!.isEmpty) {
                              return "La contraseña es necesaria";
                            } else if (!regExp.hasMatch(value)) {
                              return "La contraseña debe tener al menos 8 caracteres, 1 letra mayúscula, 1 minúscula y 1 número. Además puede contener caracteres especiales.";
                            } else {
                              return null;
                            }
                          },
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Confirmar contraseña',
                              hintStyle:
                                  const TextStyle(fontWeight: FontWeight.w600),
                              fillColor: Colors.grey.shade200,
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0, style: BorderStyle.none),
                              ),
                              filled: true),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            if (value != _password) {
                              return 'Las contraseñas no coinciden';
                            }
                            return null;
                          },
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.check_circle,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "Usuario registrado correctamente",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255)),
                                        )
                                      ],
                                    ),
                                    duration:
                                        const Duration(milliseconds: 2000),
                                    width: 300,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 10),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3.0),
                                    ),
                                    backgroundColor:
                                        const Color.fromARGB(255, 12, 195, 106),
                                  ));
                                  
                                  
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 67, 67, 248), // background (button) color
                                foregroundColor:
                                    Colors.white, // foreground (text) color
                              ),
                              child: const Text('Actualizar',style: TextStyle(fontSize: 20),)),
                        )),
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}

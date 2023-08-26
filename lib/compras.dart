import 'package:flutter/material.dart';

import 'EditarPerfil.dart';
import 'index.dart';
import 'login.dart';


class Compras extends StatelessWidget{
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
        title: Text('Publigrafit Compras'),
      ),

      body:  Column(
       mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
         Padding(
           padding: EdgeInsets.all(50.0),
           child: Center(
         
            child:Text('Mis Compras', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            
            ),
            
           ),
         ),
        Card(
 margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Producto: Lapiz'),
                  Text('Cantidad: 2'),
                  Text('Precio: \$10.00'),
                  Text('Subtotal: \$20.00'),
                ],
              ),
            
        ),
          IconButton(
              icon:const Icon(Icons.edit),
              onPressed: () {
                // Lógica para editar el producto
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                // Lógica para eliminar el producto
              },
            ),
        ],
        
        ),
        
        ),
        ),


        //Otra Card
          Card(
 margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Producto: Tinta'),
                  Text('Cantidad: 2'),
                  Text('Precio: \$100.000'),
                  Text('Subtotal: \$200.000'),
                ],
              ),
            
        ),
          IconButton(
              icon:const Icon(Icons.edit),
              onPressed: () {
                // Lógica para editar el producto
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                // Lógica para eliminar el producto
              },
            ),
        ],
        
        ),
        
        ),
        ),
              
             ],
          
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
              BannerForm.showBanner(context);

        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
    
  }

}

class BannerForm extends StatelessWidget {
  static void showBanner(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(decoration: InputDecoration(labelText: 'Producto')),
              TextFormField(decoration: InputDecoration(labelText: 'Cantidad')),
              TextFormField(decoration: InputDecoration(labelText: 'Precio')),
              TextFormField(decoration: InputDecoration(labelText: 'Subtotal')),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Acciones al hacer clic en "Comprar"
                  Navigator.pop(context); // Cerrar el banner
                },
                child: Text('Comprar'),
              ),
            ],
          ),
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  }
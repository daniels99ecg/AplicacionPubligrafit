import 'package:flutter/material.dart';
import 'package:tallerlogin/EditarPerfil.dart';
import 'package:tallerlogin/compras.dart';
import 'package:tallerlogin/login.dart';


class Purchase {
  final String productName;
  final double amount;
  final String date;

  Purchase({required this.productName, required this.amount, required this.date});
}



class Index extends StatelessWidget{

  
  @override

  final List<Purchase> purchases = [
    Purchase(productName: "Hoja", amount: 50.0, date: "2023-08-24"),
    Purchase(productName: "Cuaderno", amount: 30.0, date: "2023-08-23"),
    Purchase(productName: "tinta", amount: 20.0, date: "2023-08-22"),
     Purchase(productName: "Hoja", amount: 50.0, date: "2023-08-24"),
    Purchase(productName: "Cuaderno", amount: 30.0, date: "2023-08-23"),
    Purchase(productName: "tinta", amount: 20.0, date: "2023-08-22"),
     Purchase(productName: "Hoja", amount: 50.0, date: "2023-08-24"),
    Purchase(productName: "Cuaderno", amount: 30.0, date: "2023-08-23"),
    Purchase(productName: "tinta", amount: 20.0, date: "2023-08-22"),

    // Add more purchases here
  ];

  
  Widget build(BuildContext context) {
    
    return Scaffold(
            backgroundColor: Color.fromARGB(242, 255, 255, 255),

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
        title:const Text('Publigrafit'),
      ),
//Lo principal de la pantalla


      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
          
      
          itemCount: purchases.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(1.0),
              child: Card(
                
                child: ListTile(
                  
                  title: Text(purchases[index].productName),
                  subtitle: Text('Amount: \$${purchases[index].amount.toStringAsFixed(2)}\nDate: ${purchases[index].date}'),
                ),
                
            
              ),
            );
      
          },
        ),
      ),

    );
    
  }

}
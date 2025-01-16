import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  // Alert 1
  void showMyAlert1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert 1"),
          content: Text("Hola este es el contenido del alert1"),
          backgroundColor: Colors.white,
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  // Alert 2
  void showMyAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Invite People to this Project"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Invite existing team members or add new ones.",
                  style: TextStyle(color: Colors.blueGrey),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Search team members...',
                    prefixIcon: Icon(Icons.search), // Ícono de búsqueda
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2024/07/22/17/11/elegance-in-profile-8913207_640.png'),
                  ),
                  title: Text('Whitney Blessing'),
                  subtitle: Text('whitneyblessing@gmail.com'),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text('Add'),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTumr-ynIsoOEzb29PmGsYo5Dfem9Yio8dC8Q&s'),
                  ),
                  title: Text('Cheryl Green'),
                  subtitle: Text('cherylgreen@gmail.com'),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Remove',
                      style: TextStyle(color: Colors.red), // Texto rojo
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQBFy0j_72yEKBKNRbPbCzxfNxq1H9Y57ygg&s'),
                  ),
                  title: Text('Bonnie Lopez'),
                  subtitle: Text('bonnielopez@gmail.com'),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text('Add'),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Type their email below...',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 29, 24, 193), // Fondo azul
                foregroundColor: Colors.white, // Letras blancas
              ),
              onPressed: () {},
              child: Text('Invite 3 Users'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 58, 183, 91),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert1(context);
              },
              child: Text("Alert 1"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  showMyAlert2(context);
                },
                child: Text("Alert 2"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

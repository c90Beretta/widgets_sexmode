import 'package:flutter/material.dart';

const usuario = "Amlo";
const profilePicture = NetworkImage(
    "https://www.eluniversal.com.mx/resizer/37vqCsY4bA_5OtVsbNx6fp2B12M=/1100x666/filters:focal(346x37:356x47)/cloudfront-us-east-1.images.arcpublishing.com/eluniversal/WSZC2XZFPRDSXOW2EKXHEMOCDY.jpg");

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.chat,
              size: 30,
            ),
          ),
          title: const Text("Perfil de $usuario "),
          centerTitle: true,
          titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black)),
      body: const PerfilBody(),
    );
  }
}

class PerfilBody extends StatelessWidget {
  const PerfilBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: <Widget>[
            Center(
              child: InkWell(
                child: const Hero(
                  tag: "perfil",
                  child: CircleAvatar(
                    backgroundImage: profilePicture,
                    radius: 60,
                  ),
                ),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePicture(),
                  ),
                ),
              ),
            ),
            // Aquí puedes agregar más elementos al ListView si es necesario
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NameEditorViewer(),
                  )
                );
                
              },
              title: const Text('Nombre: '),
              subtitle: const Text(usuario, style: TextStyle(fontSize: 22)),
              leading: const Icon(Icons.person),              
              trailing: const Icon(
                          Icons.edit, 
                          color: Colors.grey,
                          size: 30, 
                        ),
            ),


            const ListTile(
              title: Text('Elemento 2'),
            ),
            // ...
          ],
        ),
      ),
    );
  }
}

class NameEditorViewer extends StatelessWidget {
  const NameEditorViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return  
     
       AlertDialog(
          title: const Text("Modificar texto"),
          content: const Text("Seguro que quiere modificar tu nombre?"),
          actions: [
            FloatingActionButton(child: const Text("Si"),onPressed: () => const Text("Correcto"),),
            FloatingActionButton(child: const Text("no"),onPressed: () => const Text("Incorrecto"),)
          ],
        );
      
  }
}







class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nombre:"),
      ),
      body: Hero(tag: "perfil", child: Image.asset("lib/img/profile.png")),
    );
  }
}

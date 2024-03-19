import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});
static const String name = "buttons_screen";
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const BottonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        }, ),
    );
  }
}

class BottonsView extends StatelessWidget {
  final bool isIconChanged = false;
  const BottonsView({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
  final colors = Theme.of(context).colorScheme;

    return  SizedBox(
      width: double.infinity,
      child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Elevated ")),
            const ElevatedButton(onPressed: null, child:  Text(" Disabled ")),
            
             ElevatedButton.icon(onPressed: () {},
             icon: const Icon(Icons.access_alarm_rounded),label: const Text("Elevated Icon")),
             const ElevatedButton(onPressed: null,
             child: Icon(Icons.circle_rounded)),
             
             FilledButton(onPressed: (){}, child: const Text("filled")),
             FilledButton.icon(onPressed: (){}, 
             icon: const Icon(Icons.favorite), label: const Text("filled Icon")),
             OutlinedButton(onPressed: (){}, child:  Text("Outlined Button", style: TextStyle(color: colors.primary),)),
             OutlinedButton.icon(onPressed: (){}, icon: const Icon(Icons.star_border_outlined), label: const Text("Outlined Icon")),
             TextButton(onPressed: (){}, child: const Text("TextButton")),
             TextButton.icon(onPressed: (){}, label: const Text("TextButton"), icon: const Icon(Icons.text_fields_rounded),),
             CloseButton(onPressed: () {null;}
             ,),


              const CustomButtons(),



            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_rounded)),
             IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_rounded),
             style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(colors.primary),
            iconColor: const MaterialStatePropertyAll(Colors.white),
            // splashFactory:InteractiveInkFeatureFactory(InkSplash(color: Colors.amber)) 
             ),
             )
             
            ],
        ), 
      ),
    );
  }
}



class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    

    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {
            
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("hola Mundo", style: TextStyle(color: Colors.white),)),
        ),
      ),
    );
  }
}
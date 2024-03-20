import 'package:widgets_sexmode/presentation/Screens/screens.dart';

class ThemeScreens extends ConsumerWidget {
  const ThemeScreens({super.key});
  static String name = "theme_screen";
  @override
  Widget build(BuildContext context, ref) {
  final isDarkMode = ref.watch(darkModeProvider);

    return  Scaffold(
      appBar: AppBar(
        title: const Text("Theme Changer Screen"),
        actions: [
          IconButton(
           icon:  Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
          
          onPressed: () {


          }
          ),

        ],
      ),
      body: const _ThemeChangerView(),
      
     
    );
  }
}

class _ThemeChangerView extends StatelessWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return const Text("color");
      },
    );
  }
}
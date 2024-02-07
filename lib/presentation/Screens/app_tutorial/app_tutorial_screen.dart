import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


final slides = <SlidesInfo> [
  SlidesInfo("Busca La Comida", "Mollit veniam aliqua nisi enim aute anim id qui.", "assets/image/1.png"),
  SlidesInfo("Entrega Rapida", "Enim deserunt magna ut velit sit consectetur laboris nulla et labore.", "assets/image/2.png"),
  SlidesInfo("Disfruta La Comida", "Cupidatat consectetur pariatur ipsum velit laborum nisi do pariatur non do aliquip sit.", "assets/image/3.png"),

  
];

class SlidesInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlidesInfo(this.title, this.caption, this.imageUrl);
}






class AppTutorialScreen extends StatefulWidget {

  static const name = "/tutorial_screen";   

  
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

   final  PageController pageViewController = PageController();
   bool isLastPage = false;

  @override
  void initState() {
    super.initState();
    
    pageViewController.addListener(() { 
      final page = pageViewController.page ?? 0;
      if (!isLastPage && page >= (slides.length - 1.5)) {
        setState(() {isLastPage = true;});
      }});
  }


  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Stack(


        children: [
          PageView(
            scrollDirection: Axis.vertical,
            controller: pageViewController,
            
            children: 
              slides.map(
                (slideData) => 
                _Slide(
                title: slideData.title,
                caption: slideData.caption,
                imageUrl: slideData.imageUrl,
                ),
                ).toList(),
          ),
            // botton de saltar
          Positioned(
            right: 20,
            top: 30,
            child: TextButton(
              child: const Text("Saltar"),
              onPressed: () {
               context.pop();
              },
            )
          ),


           isLastPage ?
            Positioned(
              bottom: 30,
              right: 30,
              child: FadeInUp(
                from: 15,
                delay: const Duration(seconds: 1),
                child: FilledButton(
                onPressed:() => context.pop(), 
                child: const Text("Comenzar")),
              )): const SizedBox()
        ],
      ),
    );
  }
}


class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;
  const _Slide({ 
  required this.title,
  required this.caption,
  required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageUrl),
            const SizedBox(height: 20),
            Text(title, style: titleStyle),
            const SizedBox(height: 20),
            Text(caption, style: captionStyle,),
          ],
        ),
      ),
    );
  }
}
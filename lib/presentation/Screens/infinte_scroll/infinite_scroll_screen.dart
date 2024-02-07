import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class InfiniteScrollScreen extends StatefulWidget {

  static const name = "Infinite_Scroll_Screen";   

  
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {

  List<int> imagesIds = [
    1,2,3,4,5
  ];

  final ScrollController scrollController = ScrollController();


@override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 500) {
        // load Next Page
        addFiveImages();
      }
    });
  
    }

    @override
    void dispose() {

      super.dispose();
    }


  void addFiveImages(){
    final lastId = imagesIds.last;

    imagesIds.addAll([1,2,3,4,5].map((e) => lastId + e));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          // controller: ??,
          itemCount: imagesIds.length,
          itemBuilder: (context, index) {
            return  FadeInImage(
              width: double.infinity,
              height: 300 ,
              fit: BoxFit.cover,
              placeholder: const AssetImage("assets/image/jar-loading.gif"), 
              image: NetworkImage("https://picsum.photos/id/${imagesIds[index]}/500/300"),
              );
          },
          ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon(Icons.arrow_back_ios_new_rounded)),
    );
  }
}
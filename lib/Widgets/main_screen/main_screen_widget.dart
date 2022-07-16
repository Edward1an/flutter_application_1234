import 'package:flutter/material.dart';
import 'package:flutter_application_1234/Widgets/main_screen/main_theme.dart';
import 'package:flutter_application_1234/Widgets/movie_list/movie_list_widget.dart';

import '../movie_details/movie_details_widget.dart';
class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _currentIndex = 1;
  void changeselTab(int index ){
    if(_currentIndex == index) return;
    setState((){
      _currentIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        theme: OurAppTheme.x,
      home: Scaffold(

      appBar: AppBar(
        title: const Text('hi'),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
    NewsWidget(),
    MovieListWidget(),
    Center(child: Text('TV Shows')),
],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          changeselTab(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'News',
            //activeIcon: FilmsWidget()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call_outlined),
            label: 'films',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv_rounded),
            label: 'tv shows',
              //activeIcon: TVShowsWidget()
          ),
        ],
      ),
    )
    );
  }
}

class NewsWidget extends StatefulWidget {
  const NewsWidget({Key? key}) : super(key: key);

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('News'));
  }
}
class TVShowsWidget extends StatelessWidget {
  const TVShowsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

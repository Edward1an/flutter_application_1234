
import 'package:flutter_application_1234/Widgets/app_images/app_images.dart';
import 'package:flutter/material.dart';

class Movie{
  final String  title, time, description;
  final int id;
  final AssetImage imageName;

  Movie({required this.id,required this.imageName,required this.title,required this.time,required this.description});
}

class MovieListWidget extends StatefulWidget {
   const MovieListWidget({Key? key}) : super(key: key);

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
    final _movies = [
    Movie(id: 1, imageName: AppImages.warcraft, description: 'Draenor, homeworld to the orcs, is being torn apart by a mysterious force known as fel magic. Gul\'dan, an orc warlock, unites the orc clans into the Horde, and creates a portal to the world of Azeroth by using fel magic to drain the life out of captive draenei. Gul\'dan leads a small warband through the portal to capture and sacrifice prisoners on Azeroth to bring the Horde. Durotan, the chieftain of the Frostwolf Clan, his pregnant mate Draka, and his friend Orgrim Doomhammer join this initial warband.', 
    time: 'May 24, 2016', title: 'waric',),
    Movie(id: 2,imageName: AppImages.tmnt, title: 'tmnt', time: 'August 8, 2014 ',
    description: '3,000 years ago, a warlord named Yaotl opens a portal into a parallel universe. The portal\'s energies grant Yaotl and his four sibling generals immortality, but the generals are turned to stone. The portal also releases 13 immortal monsters that destroy his army and his enemies while becoming the famous mythical monsters of legend as the centuries pass.'),
    Movie(id: 3,imageName: AppImages.warcraft, description: 'Draenor, homeworld to the orcs, is being torn apart by a mysterious force known as fel magic. Gul\'dan, an orc warlock, unites the orc clans into the Horde, and creates a portal to the world of Azeroth by using fel magic to drain the life out of captive draenei. Gul\'dan leads a small warband through the portal to capture and sacrifice prisoners on Azeroth to bring the Horde. Durotan, the chieftain of the Frostwolf Clan, his pregnant mate Draka, and his friend Orgrim Doomhammer join this initial warband.', 
    time: 'May 24, 2016', title: 'warcraft 2',),
    Movie(id: 4,imageName: AppImages.tmnt, title: 'tmnt 2', time: 'August 8, 2014 ',
    description: '3,000 years ago, a warlord named Yaotl opens a portal into a parallel universe. The portal\'s energies grant Yaotl and his four sibling generals immortality, but the generals are turned to stone. The portal also releases 13 immortal monsters that destroy his army and his enemies while becoming the famous mythical monsters of legend as the centuries pass.'),
    Movie(id: 5,imageName: AppImages.warcraft, description: 'Draenor, homeworld to the orcs, is being torn apart by a mysterious force known as fel magic. Gul\'dan, an orc warlock, unites the orc clans into the Horde, and creates a portal to the world of Azeroth by using fel magic to drain the life out of captive draenei. Gul\'dan leads a small warband through the portal to capture and sacrifice prisoners on Azeroth to bring the Horde. Durotan, the chieftain of the Frostwolf Clan, his pregnant mate Draka, and his friend Orgrim Doomhammer join this initial warband.', 
    time: 'May 24, 2016', title: 'sonic',),
    Movie(id: 6,imageName: AppImages.tmnt, title: 'tmnt 3', time: 'August 8, 2014 ',
    description: '3,000 years ago, a warlord named Yaotl opens a portal into a parallel universe. The portal\'s energies grant Yaotl and his four sibling generals immortality, but the generals are turned to stone. The portal also releases 13 immortal monsters that destroy his army and his enemies while becoming the famous mythical monsters of legend as the centuries pass.')

  ];
  var _filterredMovies = <Movie>[];
  final _searchController = TextEditingController();
  void _searchMovies(){
    final query = _searchController.text;
    if (_filterredMovies.isNotEmpty){
      _filterredMovies = _movies.where((Movie movie){
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filterredMovies = _movies;
    }
    setState(() {
      
    });
  } 
  @override
  void initState() {
    super.initState();
   _filterredMovies = _movies;
    _searchController.addListener(_searchMovies);

  }
  void _onMovieTab(int index){
    final id = _movies[index].id;
    Navigator.of(context).pushNamed('/main_screen/movie_details', arguments: id);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.only(top: 70),
          itemCount: _filterredMovies.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index){
            final movie = _filterredMovies[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black.withOpacity(0.2),
                      width: 1,
                      ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white, 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      )
                    ]
                    ),
                  child: Row(
                    children: [
                      Image(image: movie.imageName),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column( 
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text(movie.title, 
                              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                              overflow: TextOverflow.ellipsis, 
                              maxLines: 1,),
                            ),
                            Text(movie.time, style: const TextStyle(color: Colors.grey),  overflow: TextOverflow.ellipsis, maxLines: 1,),
                            const SizedBox(height: 20,),
                            Text( movie.description,
                            style: const TextStyle(fontWeight: FontWeight.w600,
                            fontSize: 14),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap:() { return _onMovieTab(index);}
                    ,
                  )
                )
              ],
            ),
          );
        }),
          Padding(
           padding: const EdgeInsets.all(10.0),
           child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'write your film',
              labelText: 'Search',
              filled: true,
              fillColor: Colors.white.withAlpha(230),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 2
                )
              )
            ),
        ),
         )
      ],
    );
  }
}
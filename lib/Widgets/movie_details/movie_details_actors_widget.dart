import 'package:flutter/material.dart';
import 'package:flutter_application_1234/Widgets/app_images/app_images.dart';

class MovieActorsWidget extends StatelessWidget {
  const MovieActorsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:   [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text('Cast Series', 
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),),
          ),
          SizedBox(
            height: 350,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemExtent: 120 ,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black.withOpacity(0.2),
                      width: 1,
                      ),
                    borderRadius:  const BorderRadius.all(Radius.circular(10)),
                    color: Colors.white, 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      )
                    ]
                    ),
                    child: ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              const Image(image: AppImages.warcraft),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text('Actor', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
                                    SizedBox(height: 10,),
                                    Text('actors description and role',style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                                    SizedBox(height: 10,),
                                    Text('Episodes',style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: Colors.grey),)                            
                                  ],
                                ),
                              )
                            ],
                          ),
                          Material(
                      color: Colors.transparent,
                      child: InkWell(
                         borderRadius:  const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                        onTap:() {}))
                        ,
                        ],
                      ),
                    ),
                  ),
                );
              }),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(onPressed: (){}, child: const Text('Full cast and crew', style: TextStyle(color: Colors.black,
            fontSize: 19,fontWeight: FontWeight.w500 ),)),
          )
        ],
      )
      );
  }
}
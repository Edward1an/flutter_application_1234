import 'package:flutter/material.dart';
import 'package:flutter_application_1234/Widgets/app_images/app_images.dart';
import 'package:flutter_application_1234/Widgets/score_rewiew_widget.dart';

class MovieMainWidget extends StatelessWidget {
  const MovieMainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  const [
        _TopPosterWidget(),
        _MovieNameWidget(),
        _MovieScoreWidget(),
        _TextDescriptionWidget()
      ],
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:  [
        Container(
          color: Colors.green,
          height: 220,
        ),
        const Positioned(
          top: 20,
          bottom: 20,
          left: 20,
          child: Image(image: AppImages.warcraft)),
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          children: [
            TextSpan(text: 'Warcraft', style: TextStyle(fontSize: 32)),
            TextSpan(text: ' (16.02.2016)', style: TextStyle(fontSize: 17, color: Colors.grey)),
          ]
        ),
      ),
    );
  }
}
class _MovieScoreWidget extends StatelessWidget {
  const _MovieScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         TextButton(onPressed: (){}, child: SizedBox(
          height: 50,
          width: 200,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: const [
              MyDrawWidget(),
              Text(' User Scores'),
             ],
           ),
         )),
        Container(
          color: Colors.grey,
          width: 1,
          height: 15,
        ),
         TextButton(onPressed: (){}, child:Row(
           children: const [
            Icon(Icons.play_arrow),
             Text('whatch trailer'),
           ],
         ))
      ],
    );
  }
}

class _TextDescriptionWidget extends StatelessWidget {
  const _TextDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'R 16/02/2016 (US) . 2h 3m Actoin, War, Fantasy',
      textAlign: TextAlign.center,
    );
  }
}
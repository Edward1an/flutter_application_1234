import '../Widgets/app_images/app_images.dart';
import '../models/movie.dart';

class MoviesState {
  final _movies = [
    Movie(
      id: 1,
      imageName: AppImages.warcraft,
      description:
          'Draenor, homeworld to the orcs, is being torn apart by a mysterious force known as fel magic. Gul\'dan, an orc warlock, unites the orc clans into the Horde, and creates a portal to the world of Azeroth by using fel magic to drain the life out of captive draenei. Gul\'dan leads a small warband through the portal to capture and sacrifice prisoners on Azeroth to bring the Horde. Durotan, the chieftain of the Frostwolf Clan, his pregnant mate Draka, and his friend Orgrim Doomhammer join this initial warband.',
      time: 'May 24, 2016',
      title: 'waric',
    ),
    Movie(
        id: 2,
        imageName: AppImages.tmnt,
        title: 'tmnt',
        time: 'August 8, 2014 ',
        description:
            '3,000 years ago, a warlord named Yaotl opens a portal into a parallel universe. The portal\'s energies grant Yaotl and his four sibling generals immortality, but the generals are turned to stone. The portal also releases 13 immortal monsters that destroy his army and his enemies while becoming the famous mythical monsters of legend as the centuries pass.'),
    Movie(
      id: 3,
      imageName: AppImages.warcraft,
      description:
          'Draenor, homeworld to the orcs, is being torn apart by a mysterious force known as fel magic. Gul\'dan, an orc warlock, unites the orc clans into the Horde, and creates a portal to the world of Azeroth by using fel magic to drain the life out of captive draenei. Gul\'dan leads a small warband through the portal to capture and sacrifice prisoners on Azeroth to bring the Horde. Durotan, the chieftain of the Frostwolf Clan, his pregnant mate Draka, and his friend Orgrim Doomhammer join this initial warband.',
      time: 'May 24, 2016',
      title: 'warcraft 2',
    ),
    Movie(
        id: 4,
        imageName: AppImages.tmnt,
        title: 'tmnt 2',
        time: 'August 8, 2014 ',
        description:
            '3,000 years ago, a warlord named Yaotl opens a portal into a parallel universe. The portal\'s energies grant Yaotl and his four sibling generals immortality, but the generals are turned to stone. The portal also releases 13 immortal monsters that destroy his army and his enemies while becoming the famous mythical monsters of legend as the centuries pass.'),
    Movie(
      id: 5,
      imageName: AppImages.warcraft,
      description:
          'Draenor, homeworld to the orcs, is being torn apart by a mysterious force known as fel magic. Gul\'dan, an orc warlock, unites the orc clans into the Horde, and creates a portal to the world of Azeroth by using fel magic to drain the life out of captive draenei. Gul\'dan leads a small warband through the portal to capture and sacrifice prisoners on Azeroth to bring the Horde. Durotan, the chieftain of the Frostwolf Clan, his pregnant mate Draka, and his friend Orgrim Doomhammer join this initial warband.',
      time: 'May 24, 2016',
      title: 'sonic',
    ),
    Movie(
        id: 6,
        imageName: AppImages.tmnt,
        title: 'tmnt 3',
        time: 'August 8, 2014 ',
        description:
            '3,000 years ago, a warlord named Yaotl opens a portal into a parallel universe. The portal\'s energies grant Yaotl and his four sibling generals immortality, but the generals are turned to stone. The portal also releases 13 immortal monsters that destroy his army and his enemies while becoming the famous mythical monsters of legend as the centuries pass.')
  ];

  Future<List<Movie>> getMovies() {
    return Future.value([..._movies]);
  }
}

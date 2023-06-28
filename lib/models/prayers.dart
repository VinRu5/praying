import 'package:equatable/equatable.dart';
import 'package:praying/misc/constants.dart';
import 'package:praying/models/prayer.dart';

class Prayers extends Equatable {
  final Prayer creed;
  final Prayer ourFather;
  final Prayer hailMary;
  final Prayer gloryBeToTheFather;
  final Prayer myJesus;
  final Prayer hailHolyQueen;
  final Prayer saintJoseph;
  final Prayer saintMichael;
  final Prayer morningPrayer;
  final Prayer nigthPrayer;
  final Prayer actToFaith;
  final Prayer actToHope;
  final Prayer actToLove;
  final Prayer morningOffering;
  final Prayer angelOfGod;
  final Prayer beforeTheCrucifix;
  final Prayer peacePrayer;
  final Prayer praiseOfGod;
  final Prayer absorbeat;
  final Prayer canticleOfAllCreatures;
  final Prayer reginaCoeli;
  final Prayer spiritualCommunion;
  final Prayer saintCatherineHolySpirit;
  final Prayer comeHolySpirit;

  const Prayers({
    required this.creed,
    required this.ourFather,
    required this.hailMary,
    required this.gloryBeToTheFather,
    required this.myJesus,
    required this.hailHolyQueen,
    required this.saintJoseph,
    required this.saintMichael,
    required this.morningPrayer,
    required this.nigthPrayer,
    required this.actToFaith,
    required this.actToHope,
    required this.actToLove,
    required this.morningOffering,
    required this.angelOfGod,
    required this.beforeTheCrucifix,
    required this.peacePrayer,
    required this.praiseOfGod,
    required this.absorbeat,
    required this.canticleOfAllCreatures,
    required this.reginaCoeli,
    required this.spiritualCommunion,
    required this.saintCatherineHolySpirit,
    required this.comeHolySpirit,
  });

  factory Prayers.fromJson(Map<String, dynamic> json) => Prayers(
        creed: json[K.creedKey],
        ourFather: json[K.ourFatherKey],
        hailMary: json[K.hailMaryKey],
        gloryBeToTheFather: json[K.gloryBeToTheFatherKey],
        myJesus: json[K.myJesusKey],
        hailHolyQueen: json[K.hailHolyQueenKey],
        saintJoseph: json[K.saintJosephKey],
        saintMichael: json[K.saintMichaelKey],
        morningPrayer: json[K.morningPrayerKey],
        nigthPrayer: json[K.nigthPrayerKey],
        actToFaith: json[K.actToFaithKey],
        actToHope: json[K.actToHopeKey],
        actToLove: json[K.actToLoveKey],
        morningOffering: json[K.morningOfferingKey],
        angelOfGod: json[K.angelOfGodKey],
        beforeTheCrucifix: json[K.beforeTheCrucifixKey],
        peacePrayer: json[K.peacePrayerKey],
        praiseOfGod: json[K.praiseOfGodKey],
        absorbeat: json[K.absorbeatKey],
        canticleOfAllCreatures: json[K.canticleOfAllCreaturesKey],
        reginaCoeli: json[K.reginaCoeliKey],
        spiritualCommunion: json[K.spiritualCommunionKey],
        saintCatherineHolySpirit: json[K.hailHolyQueenKey],
        comeHolySpirit: json[K.hailHolyQueenKey],
      );

  @override
  List<Object?> get props => [
        creed,
        ourFather,
        hailMary,
        gloryBeToTheFather,
        myJesus,
        hailHolyQueen,
        saintJoseph,
        saintMichael,
        morningPrayer,
        nigthPrayer,
        actToFaith,
        actToHope,
        actToLove,
        morningOffering,
        angelOfGod,
        beforeTheCrucifix,
        peacePrayer,
        praiseOfGod,
        absorbeat,
        canticleOfAllCreatures,
        reginaCoeli,
        spiritualCommunion,
        saintCatherineHolySpirit,
        comeHolySpirit,
      ];
}

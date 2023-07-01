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
        creed: Prayer.fromJson(json[K.creedKey]),
        ourFather: Prayer.fromJson(json[K.ourFatherKey]),
        hailMary: Prayer.fromJson(json[K.hailMaryKey]),
        gloryBeToTheFather: Prayer.fromJson(json[K.gloryBeToTheFatherKey]),
        myJesus: Prayer.fromJson(json[K.myJesusKey]),
        hailHolyQueen: Prayer.fromJson(json[K.hailHolyQueenKey]),
        saintJoseph: Prayer.fromJson(json[K.saintJosephKey]),
        saintMichael: Prayer.fromJson(json[K.saintMichaelKey]),
        morningPrayer: Prayer.fromJson(json[K.morningPrayerKey]),
        nigthPrayer: Prayer.fromJson(json[K.nigthPrayerKey]),
        actToFaith: Prayer.fromJson(json[K.actToFaithKey]),
        actToHope: Prayer.fromJson(json[K.actToHopeKey]),
        actToLove: Prayer.fromJson(json[K.actToLoveKey]),
        morningOffering: Prayer.fromJson(json[K.morningOfferingKey]),
        angelOfGod: Prayer.fromJson(json[K.angelOfGodKey]),
        beforeTheCrucifix: Prayer.fromJson(json[K.beforeTheCrucifixKey]),
        peacePrayer: Prayer.fromJson(json[K.peacePrayerKey]),
        praiseOfGod: Prayer.fromJson(json[K.praiseOfGodKey]),
        absorbeat: Prayer.fromJson(json[K.absorbeatKey]),
        canticleOfAllCreatures: Prayer.fromJson(json[K.canticleOfAllCreaturesKey]),
        reginaCoeli: Prayer.fromJson(json[K.reginaCoeliKey]),
        spiritualCommunion: Prayer.fromJson(json[K.spiritualCommunionKey]),
        saintCatherineHolySpirit: Prayer.fromJson(json[K.hailHolyQueenKey]),
        comeHolySpirit: Prayer.fromJson(json[K.hailHolyQueenKey]),
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

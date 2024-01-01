import 'package:event_concert_app/res/assets_constants.dart';

class EventModel{
  final String coverImage;
  final String name;
  final String date;
  EventModel({
   required this.name,
   required this.coverImage, 
   required this.date 
});
}

final eventsDemos = [
  EventModel(name: "Amelie Lens", coverImage: AssetsConstants.amelie, date: "21 september, 2022"),
  EventModel(name: "Exit Festival", coverImage: AssetsConstants.exitFestival, date: "27-29 october, 2022"),
  EventModel(name: "Carl Cox", coverImage: AssetsConstants.carCash, date: "02 noviembre, 2022"),

];



final lastEventsDemos = [
  EventModel(name: "Armin van Buuren", coverImage: AssetsConstants.amrMen, date: "10 august, 2022"),
  EventModel(name: "Luttrell", coverImage: AssetsConstants.luttrel, date: "03 august, 2022"),
  EventModel(name: "Charlote De Witte", coverImage: AssetsConstants.charlotte, date: "09 august, 2022"),
  EventModel(name: "Eric Prydz", coverImage: AssetsConstants.eric, date: "29 august, 2022"),
];

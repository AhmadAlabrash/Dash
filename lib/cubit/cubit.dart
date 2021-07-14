import 'package:bloc/bloc.dart';
import 'package:dash/cubit/state.dart';
import 'package:dash/models/itemhome.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class Cubithomefood extends Cubit<Statemomfood> {
  Cubithomefood() : super(Initialstate());

  static Cubithomefood getdata(context) => BlocProvider.of(context);

  List<String> chipsfood = ['Chicken', 'Pitza', 'Sea Food', 'Soup', 'Parbiqew'];

  var currentindex = false;

  void changechips(bool isselected) {
    currentindex = isselected;
    emit(Changechips());
  }

  List<Cardfood> cards = [
    Cardfood('This is balik fish eating', 'Sea food',
        'https://wallpaperaccess.com/full/767033.jpg', 4.5),
    Cardfood(
        'Chicken on rice it so delecious',
        'Chicken Food',
        'https://media.istockphoto.com/photos/top-view-table-full-of-food-picture-id1220017909?k=6&m=1220017909&s=170667a&w=0&h=Zy_NqTbEluSW0T667IHW7DVlpQih70V45k-rgeFt6Oo=',
        4.8),
    Cardfood(
        'Meat with some of tomato ',
        'Parbeqew Food',
        'https://media.istockphoto.com/photos/dinner-table-full-of-food-picture-id1136956875?k=6&m=1136956875&s=612x612&w=0&h=hsXh9MPH07poKAOiup8ZfGXX0l_bymVIdzlpgv72T6I=',
        4.7),
    Cardfood(
        'Vegtables Soup with makraona ',
        'Soup food',
        'https://thumbs.dreamstime.com/b/turkish-arabic-cuisine-turkish-food-dark-stone-background-turkish-arabic-cuisine-turkish-food-dark-stone-background-113542041.jpg',
        4.1),
    Cardfood('This is balik fish eating', 'Sea food',
        'https://static3.bigstockphoto.com/8/9/1/large1500/198979375.jpg', 4.5),
  ];
}

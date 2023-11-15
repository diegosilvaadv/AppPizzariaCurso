import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String saudacao() {
  var hour = DateTime.now().hour;
  if (hour < 4) {
    return 'Vai dormir, ';
  }
  if (hour < 12) {
    return 'Bom dia, ';
  }
  if (hour < 17) {
    return 'Boa Tarde, ';
  }
  return 'Boa Noite, ';
}

double? totalsomalista(List<double>? numeros) {
  if (numeros == null || numeros.isEmpty) {
    return 0;
  }

  double soma = 0;
  for (double elemento in numeros) {
    soma += elemento;
  }
  return soma;
}

DateTime dadoslistasoma() {
  // create a filter to display the sum of a list for the current day only
  List<double> lista = [2.5, 3.0, 4.5, 1.0, 2.0, 3.5, 4.0];
  DateTime now = DateTime.now();
  DateTime startOfDay = DateTime(now.year, now.month, now.day);
  DateTime endOfDay = startOfDay.add(Duration(days: 1));

  List<double> filteredList = lista.where((element) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(element.toInt());
    return date.isAfter(startOfDay) && date.isBefore(endOfDay);
  }).toList();

  double? sum = totalsomalista(filteredList);

  print('Sum of list for today: $sum');
  return now;
}

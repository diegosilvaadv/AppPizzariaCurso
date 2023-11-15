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

DateTimeRange dadosdodia() {
  // display the sum of a list for the current day only
  final now = DateTime.now();
  final startOfDay = DateTime(now.year, now.month, now.day);
  final endOfDay =
      startOfDay.add(Duration(days: 1)).subtract(Duration(milliseconds: 1));
  return DateTimeRange(start: startOfDay, end: endOfDay);
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
  // display the sum of a list for the current day only
  final now = DateTime.now();
  final startOfDay = DateTime(now.year, now.month, now.day);
  final endOfDay =
      startOfDay.add(Duration(days: 1)).subtract(Duration(milliseconds: 1));
  return startOfDay;
}

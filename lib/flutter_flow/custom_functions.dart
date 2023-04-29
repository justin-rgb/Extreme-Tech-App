import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

int sumatoria(List<int> subTotal) {
  int total = 0;
  for (int add in subTotal) {
    total += add;
  }
  return total;
}

int subTotal(
  int cantidad,
  int precio,
) {
  int total = precio * cantidad;

  return total;
}

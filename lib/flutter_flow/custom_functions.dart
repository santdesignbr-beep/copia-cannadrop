import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String listToString(List<String>? list) {
  // take list and convert to string with a ", " between each item
  String res = '';
  if (list != null) {
    for (String item in list) {
      res += ('${item.toString()}, ');
    }
  }
  return res;
}

DocumentReference returnUserFromLikes(List<DocumentReference> userLikes) {
  // Return an item from the list
  DocumentReference likedUser = userLikes[
      0]; // Put your method here and link with tag on run method in main.dart
  return likedUser;
}

int totalLikes(int numberoflikes) {
  // return the numberoflikes minus 1
  return numberoflikes - 1;
}

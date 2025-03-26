import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../../../../main.dart';

/// Pushes the user data to the waitlist if the data is valid. <br/>
Future<bool> pushToWaitlist({
  required String mail,
  required String firstName,
  required String lastName,
  required String comment,
}) async {
  final data = {"mail": mail.trim(), "createdAt": FieldValue.serverTimestamp()};

  data.addValue("firstName", firstName);
  data.addValue("lastName", lastName);
  data.addValue("comment", comment);

  data.addValue("referrer", referrerRoute?.replaceFirst("/", "") ?? "");

  try {
    await FirebaseFirestore.instance.collection("mails").doc().set(data);
  } catch (e) {
    debugPrint("Error adding to waitlist: $e");
    return false;
  }

  return true;
}

extension _UploadDataExtension on Map<String, Object> {
  /// Adds a value to the map if the value it is not empty.
  void addValue(String key, String value) {
    if (value.trim().isNotEmpty) {
      this[key] = value;
    }
  }
}

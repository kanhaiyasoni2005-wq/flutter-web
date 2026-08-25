import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/model/model.dart';

class Application extends ChangeNotifier {
  List<Webmodel> _application = [];
  List<Webmodel> get apps => _application;

  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  Future<void> addTocart(Webmodel apps) async {
    await firestore.collection("apps").add(apps.tojson());
  }

  Future<void> fatch() async {
    final snapshot = await firestore.collection("apps").get();
    _application = snapshot.docs.map((doc) {
      return Webmodel.fromjson(doc.data());
    }).toList();
    notifyListeners();
  }
}
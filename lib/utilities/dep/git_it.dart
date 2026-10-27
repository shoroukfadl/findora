import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:findora/core/localStorage/hive_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive_flutter/adapters.dart';

final sl = GetIt.instance;

class GitIt {
  static Box? settingsBox;
  static HiveManager? hiveManager;

  static Future initGitIt() async {
    await Hive.initFlutter();
    settingsBox = await Hive.openBox('settings');
    sl.registerSingleton<Box>(settingsBox!);

    final firebaseStore = FirebaseFirestore.instance;
    sl.registerLazySingleton<FirebaseFirestore>(() => firebaseStore);

    final firebaseAuth = FirebaseAuth.instance;
    sl.registerLazySingleton<FirebaseAuth>(() => firebaseAuth);

    final googleSignIn = GoogleSignIn();
    sl.registerLazySingleton<GoogleSignIn>(() => googleSignIn);

    final connectivity = Connectivity();
    sl.registerLazySingleton<Connectivity>(() => connectivity);

    await _initGitIt();
  }

  static Future<void> _initGitIt() async {
    hiveManager = HiveManager.instance;
    sl.registerLazySingleton<HiveManager>(() => hiveManager!);

    await hiveManager!.init();
  }
}

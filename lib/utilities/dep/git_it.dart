import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:findora/core/language/locale_cubit.dart';
import 'package:findora/core/localStorage/hive_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive_flutter/adapters.dart';


final sl = GetIt.instance;

class GitIt {
  static Future initGitIt() async {
    await Hive.initFlutter();
    final settingsBox = await Hive.openBox('settings');
    sl.registerSingleton<LocaleCubit>(LocaleCubit(settingsBox));

    final firebaseStore = FirebaseFirestore.instance;
    sl.registerLazySingleton<FirebaseFirestore>(() => firebaseStore);

    final firebaseAuth = FirebaseAuth.instance;
    sl.registerLazySingleton<FirebaseAuth>(() => firebaseAuth);

    final googleSignIn = GoogleSignIn();
    sl.registerLazySingleton<GoogleSignIn>(() => googleSignIn);

    final connectivity = Connectivity();
    sl.registerLazySingleton<Connectivity>(() => connectivity);

    _initGitIt();

    _initSendCode();
    _initVerifyCode();
    _initSettings();
  }

  static Future<void> _initGitIt() async {
    sl.registerLazySingleton<HiveManager>(
      () => HiveManager.instance,
    );

    final hiveManager = GetIt.I<HiveManager>();

    await hiveManager.init();
  }

  static void _initSendCode() {
    // sl.registerFactory(() => SendCodeCubit(
    //       sendCodeUseCase: sl(),
    //     ));
    // sl.registerLazySingleton(() => SendCodeUseCase(repository: sl()));
    // sl.registerLazySingleton<SendCodeRepository>(
    //   () => SendCodeRepositoryImpl(
    //     remoteDataSource: sl(),
    //   ),
    // );
    //
    // //! Data Sources
    // sl.registerLazySingleton<SendCodeRemoteDataSource>(
    //   () => SendCodeRemoteDataSourceImpl(
    //     sl(),
    //   ),
    // );
  }

  static void _initVerifyCode() {
    // sl.registerFactory(() => VerifyCodeCubit(
    //       sendCodeUseCase: sl(),
    //     ));
    // sl.registerLazySingleton(() => VerifyCodeUseCase(repository: sl()));
    // sl.registerLazySingleton<VerifyCodeRepository>(
    //   () => VerifyCodeRepositoryImpl(
    //     remoteDataSource: sl(),
    //   ),
    // );
    //
    // //! Data Sources
    // sl.registerLazySingleton<VerifyCodeRemoteDataSource>(
    //   () => VerifyCodeRemoteDataSourceImpl(
    //     sl(),
    //     sl(),
    //   ),
    //);
  }

  static void _initSettings() {
    // sl.registerFactory(() => SettingsCubit(
    //       logoutUsecase: sl(),
    //     ));
    // sl.registerLazySingleton(() => LogoutUsecase(repository: sl()));
    // sl.registerLazySingleton<SettingsRepository>(
    //   () => SettingsRepositoryImpl(
    //     remoteDataSource: sl(),
    //   ),
    // );
    //
    // //! Data Sources
    // sl.registerLazySingleton<SettingsRemoteDataSource>(
    //   () => SettingsRemoteDataSourceImpl(
    //     sl(),
    //     sl(),
    //   ),
    // );
  }
}

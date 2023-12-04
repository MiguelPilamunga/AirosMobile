import 'xcore.dart';
import 'dart:developer' as developer;


final getIt = GetIt.instance;


setupLocator() async {

  Stopwatch stopwatch = new Stopwatch()..start();

  await initSetup();

  developer.log('setupLocator completed in ${stopwatch.elapsed.inMilliseconds} milliseconds', name: 'setupLocator');
  stopwatch.stop();
}
initSetup() async{
  final sharedPreferences = await SharedPreferences.getInstance();

  getIt.registerLazySingleton<AppPreferences>(() => AppPreferenceImp(sharedPreferences));

  final isDarkMode = getIt<AppPreferences>().isDarkMode();

  if(!GetIt.I.isRegistered<ThemeCubit>()) {
    getIt.registerLazySingleton(() => ThemeCubit(isDarkMode ? ThemeMode.dark : ThemeMode.light));
  }



}
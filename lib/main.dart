
import 'package:airosmobile/core/constants/xcore.dart';
import 'package:airosmobile/core/router/approute.dart';
import 'package:airosmobile/core/theme/xcore.dart';
import 'package:airosmobile/data/logic/logs/AppBlocObserver.dart';
import 'package:airosmobile/data/service/xcore.dart';
import 'package:airosmobile/view/home/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  Bloc.observer = AppBlocObserver();

  runApp(MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<ThemeCubit>())
        ],
        child:  RootApp(),
  ));

}

class RootApp extends StatelessWidget {
  const RootApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      buildWhen: (previous, current) => previous != current,
      builder: (_,state){
        return MaterialApp(
          title: 'Airos Mobile',
          debugShowCheckedModeBanner: false,
          theme: lightAppTheme,
          darkTheme: darkAppTheme,
          themeMode: state,
          initialRoute: MyHomePage.routeName,
          onGenerateRoute: AppRoute.onGenerateRoute,
        );
      },
    );
  }
}
import 'package:airosmobile/data/service/xcore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key ,required this.title}) ;

  final String title;
  static const routeName = '/';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isDark = getIt<AppPreferences> ().isDarkMode();

  void _chageTheme(){
    BlocProvider.of<ThemeCubit>(context).changeTheme(isDark);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Hello World'),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _chageTheme();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

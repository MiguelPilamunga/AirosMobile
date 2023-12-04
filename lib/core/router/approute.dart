
import 'package:airosmobile/core/constants/xcore.dart';
import 'package:airosmobile/core/router/route_exeption.dart';
import 'package:airosmobile/view/home/home.dart';

class AppRoute {

  AppRoute._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case MyHomePage.routeName:
        return MaterialPageRoute(builder: (_) => MyHomePage(title: "Home"));
      default:
        throw const RouteException("route not found");
    }
  }

}
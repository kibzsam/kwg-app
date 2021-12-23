import 'package:flutter/material.dart';
import 'package:kwg/pages/AppView.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   if(state ==  AppLifecycleState.resumed){
  //     Timer(Duration(milliseconds: 1000), () {
  //       BlocProvider.of<DynamicCubit>(context).initDynamicLinks();
  //     });
  //   }
  // }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppView();
  }
}

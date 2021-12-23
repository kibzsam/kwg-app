import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kwg/blocs/posts/PostCubit.dart';
import 'package:kwg/providers/PostDataProvider.dart';
import 'package:kwg/utils/SharedObjects.dart';

import 'App.dart';
import 'config/ServiceLocator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  locator = ServiceLocator.getInstance();
  SharedObjects.prefs = await CachedSharedPreferences.getInstance();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  PostDataProvider _provider = PostDataProvider();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((value) {
    runApp(
      MultiBlocProvider(
        providers: [BlocProvider(create: (context) => PostCubit(_provider))],
        child: App(),
      ),
    );
  });
}

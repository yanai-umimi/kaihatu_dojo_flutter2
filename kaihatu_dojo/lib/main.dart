import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaihatu_dojo/bottom_navigation/bottom_navigation_bloc.dart';
import 'package:kaihatu_dojo/ui/app_screen.dart';
import 'package:kaihatu_dojo/ui/pages/first_page.dart';

import 'repositories/repositories.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<BottomNavigationBloc>(
        create: (context) => BottomNavigationBloc(
          FirstPageRepository(),
          SecondPageRepository(),
        )..add(AppStarted()),
        child: AppScreen(),
      ),
    );
  }
}

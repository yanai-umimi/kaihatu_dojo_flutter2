import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'logic/bottom_navigation/bottom_navigation_bloc.dart';
import 'ui/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  HydratedBlocOverrides.runZoned(
    () => runApp(
      MyApp(appRouter: AppRouter()),
    ),
    storage: storage,
  );
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;

  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: _buildBlocProviders(context),
      child: MaterialApp(
        title: 'BookShelf',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }

  List<BlocProvider> _buildBlocProviders(BuildContext context) {
    return [
      BlocProvider<BottomNavigationBloc>(
        create: (context) => BottomNavigationBloc()..add(AppStarted()),
      ),
    ];
  }
}

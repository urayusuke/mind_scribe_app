import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_scribe_app/common/services/shared_preferences.dart';
import 'package:mind_scribe_app/l10n/l10n.dart';
import 'package:mind_scribe_app/src/routes/route_path.dart';
import 'package:mind_scribe_app/src/routes/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferencesの初期化
  await SharedPreferencesService.init();

  runApp(
    GetMaterialApp(
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutePath.initialRoute,
      getPages: Routes.pages,
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(L10n.of(context)!.home),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              L10n.of(context)!.home,
            ),
          ],
        ),
      ),
    );
  }
}

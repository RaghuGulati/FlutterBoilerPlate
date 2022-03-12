import 'package:boilerplate/globalStateManagement/increment.dart';
import 'package:boilerplate/globalStateManagement/themeManagement.dart';
import 'package:boilerplate/utils/MyLocalizations.dart';
import 'package:boilerplate/utils/MyLocalizationsDelegate.dart';
import 'package:flutter/material.dart';
import 'package:boilerplate/ui/widgets/themes.dart';
import 'package:boilerplate/utils/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> Increment(),),
      ChangeNotifierProvider(create: (_)=> ThemeManagement(),),
    ], 
    
    child: MyApp(),));
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Boilerplate Project',
      routes: Routes.routes,
      theme: context.watch<ThemeManagement>().currentTheme,
      home: const MyHomePage(title: 'Flutter Boilerplate Project'),
      /*localizationsDelegates: [
        const MyLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('eng', ''),
        const Locale('hindi', ''),
      ],*/
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var incrementValue = context.watch<Increment>().count;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  /*  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Login(),
                    ));
                }, */
                Navigator.of(context).pushReplacementNamed(Routes.login);
                },
                child: Text(
                  'Login', 
                  style: mainTheme.textTheme.bodyText2,
                  ),
                ),
                SizedBox(height: 40,),

                ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Routes.register);
                },
                child: Text(
                  'Register', 
                  style: mainTheme.textTheme.bodyText2,
                  ),
                ),

                SizedBox(height: 40,),
                ElevatedButton(
                onPressed: () {
                  context.read<Increment>().increment();
                },
                child: Text(
                  'Increment using Providers', 
                  style: mainTheme.textTheme.bodyText2,
                  ),
                ),

                Text('Value: ${incrementValue}'),

                SizedBox(height: 40,),
                ElevatedButton(
                onPressed: () {
                  context.read<ThemeManagement>().toggleTheme();
                },
                child: Text(
                  'Change Theme',   
                  style: mainTheme.textTheme.bodyText2,
                  ),
                ),
                SizedBox(height: 40,),
                
          ],
          ),
      ),
    );
  }
}

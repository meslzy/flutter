import "package:flutter/material.dart";
import "package:provider/provider.dart";

import "providers/theme/provider.dart";
import "routes/home/widget.dart";

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: "/",
            routes: {
              "/": (context) => const Home(),
            },
            themeMode: themeProvider.themeMode,
            darkTheme: themeProvider.dark,
            theme: themeProvider.light,
          );
        },
      ),
    );
  }
}

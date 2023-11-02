import 'package:fluent_ui/fluent_ui.dart';
import 'package:www/src/presentation/pages/home_page.dart';

class Server extends StatelessWidget {
  const Server({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      themeMode: ThemeMode.dark,
      darkTheme: FluentThemeData.dark().copyWith(
        accentColor: Color(0xFF0096FF).toAccentColor(),
      ),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomePage.route:
            return FluentPageRoute(
              builder: (_) => const HomePage(),
            );

          default:
            return FluentPageRoute(
              builder: (_) => const Center(child: Text('ERR')),
            );
        }
      },
    );
  }
}

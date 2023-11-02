import 'dart:developer';

import 'package:fluent_ui/fluent_ui.dart';
import 'package:www/core/services/services.dart';
import 'package:www/src/controllers/server_controller.dart';

class HomePage extends StatelessWidget {
  static const String route = '/';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ServerController serverController = services<ServerController>();

    final FluentThemeData theme = FluentTheme.of(context);
    final Size size = MediaQuery.of(context).size;

    return NavigationView(
      // pane: NavigationPane(
      //   displayMode: PaneDisplayMode.minimal,
      //   header: Text(
      //     'Dash Inside',
      //   ),
      // ),
      content: Stack(
        children: [
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
              width: size.width / 3,
              height: size.height / 1.5,
              color: Colors.blue,
            ),
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Container(
              width: size.width / 5,
              height: size.height / 3,
              color: Colors.purple,
            ),
          ),
          const SizedBox.expand(
            child: Acrylic(
              tint: Colors.grey,
              luminosityAlpha: 0.5,
              // tint: theme.acrylicBackgroundColor,
              blurAmount: 180.0,
              elevation: 1.0,
            ),
          ),
          Positioned(
            top: 64.0,
            left: 64.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dash Inside',
                  style: theme.typography.display,
                ),
                Text(
                  'Developers Team',
                  style: theme.typography.bodyLarge,
                ),
              ],
            ),
          ),
          Positioned(
            left: 64.0,
            bottom: 64.0,
            child: FilledButton(
              onPressed: () {
                debugPrint('onFIgureOutPressed');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Text(
                  'Figure out',
                  style: theme.typography.bodyLarge?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 64.0,
            right: 64.0,
            child: SizedBox(
              width: size.width / 2,
              height: size.height - 128.0,
              child: TabView(
                currentIndex: 0,
                tabs: <Tab>[
                  Tab(
                    text: const Text('About us'),
                    closeIcon: null,
                    body: Container(
                      decoration: BoxDecoration(
                        color: theme.cardColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome to our site',
                              style: theme.typography.body?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'Ghuest@DashInside >',
                              style: theme.typography.body?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    text: const Text('Works'),
                    closeIcon: null,
                    body: Container(
                      color: theme.cardColor,
                    ),
                  ),
                  Tab(
                    text: const Text('Team'),
                    closeIcon: null,
                    body: Container(
                      color: theme.cardColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

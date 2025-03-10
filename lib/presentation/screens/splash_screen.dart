import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:weather_app/widgets/splash_logo_widget.dart';
import 'package:flutter/services.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
        // To set my System UI overlay stlye
        value: SystemChrome.setEnabledSystemUIMode(
          SystemUiMode.manual,
          overlays: [
            SystemUiOverlay.top,
          ],
        ),
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarColor: Color(0xFF612FAB), //main staus bar
            statusBarIconBrightness:
                Brightness.dark, // brightness of stauts bar icons
            systemNavigationBarColor:
                Color(0xFF612FAB), //set color of system navigation bar
            systemNavigationBarIconBrightness: Brightness.dark,
          ),
          child: FlutterSplashScreen(
            splashScreenBody: SplashLogoWidget(),
            backgroundColor: Color(0xFF612FAB),
            duration: Duration(seconds: 3),
            onEnd: () {
              context.router.replacePath('/home');
            },
          ),
        ));
  }
}

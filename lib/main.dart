import 'package:ecom_firebase/firebase_options.dart';
import 'package:ecom_firebase/presentation/splash/bloc/splash_cubit.dart';
import 'package:ecom_firebase/presentation/splash/pages/splash.dart';
import 'package:ecom_firebase/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecom_firebase/core/configs/theme/app_theme.dart';
import 'package:ecom_firebase/core/configs/theme/app_colors.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   await initializeDependencies();
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  final String environment;

  const MyApp({
    super.key,
    required this.environment,
  });

  @override
  Widget build(BuildContext context) {
    // Set the environment flag
    AppColors.isStaging = environment == 'staging';

    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        title: environment == 'staging'
            ? 'Ecom Firebase (Staging)'
            : 'Ecom Firebase',
        theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.background,
          colorScheme: ColorScheme.dark(
            primary: AppColors.primary,
            secondary: AppColors.accent,
            surface: AppColors.secondBackground,
          ),
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: AppColors.textPrimary),
            bodyMedium: TextStyle(color: AppColors.textPrimary),
            titleLarge: TextStyle(color: AppColors.textPrimary),
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.primary,
            foregroundColor: AppColors.textPrimary,
          ),
        ),
        debugShowCheckedModeBanner: environment == 'staging',
        home: Banner(
          location: BannerLocation.topEnd,
          message: environment.toUpperCase(),
          color: AppColors.primary,
          child: const SplashPage(),
        ),
      ),
    );
  }
}

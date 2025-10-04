import 'package:clima_quest/features/auth/login/login_view.dart';
import 'package:clima_quest/features/auth/signup/signup_view.dart';
import 'package:clima_quest/features/games/view/games_view.dart';
import 'package:clima_quest/features/home/home_view/details_view.dart';
import 'package:clima_quest/features/home/home_view/home_view.dart';
import 'package:clima_quest/features/home/navigation/navigation.dart';
import 'package:clima_quest/features/onboarding/view/onboarding_view.dart';
import 'package:clima_quest/features/profile/view/profile_view.dart';
import 'package:clima_quest/features/search/view/search_view.dart';
import 'package:clima_quest/features/splash/splash_screen_view.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String signUp = '/signUp';
  static const String login = '/login';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String games = '/games';
  static const String navigation = '/navigation';
  static const String details = '/details';
  static const String search = '/search';

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashScreenView(),
      ),
      GoRoute(
        path: onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: signUp,
        builder: (context, state) => const SignupView(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: profile,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: games,
        builder: (context, state) => const GamesView(),
      ),
      GoRoute(
        path: navigation,
        builder: (context, state) => const CustomNavigation(),
      ),
      GoRoute(
        path: details,
        builder: (context, state) => const DetailsView(),
      ),
      GoRoute(
        path: search,
        builder: (context, state) => const SearchView(),
      ),
     
    ],
  );
}
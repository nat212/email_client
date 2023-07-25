import 'package:email_client/src/pages/home.dart';
import 'package:email_client/src/pages/setup.dart';
import 'package:email_client/src/services/accounts.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  redirect: (context, state) {
    if (AccountService.instance.hasAccounts) {
      return '/';
    } else {
      return '/setup';
    }
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/setup',
      builder: (context, state) => const SetupPage(),
    ),
  ],
);

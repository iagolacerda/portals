// Router
import 'package:go_router/go_router.dart';
// Layout
import 'package:resident/layouts/auth_layout.dart';
import 'package:resident/layouts/main_layout.dart';
// Pages
import '../pages/sign_in.dart';
import '../pages/home.dart';

bool isLoggedIn = false;

final GoRouter appRouter = GoRouter(
  redirect: (context, state) {
    final loggedIn = false;
    final goingToLogin = state.matchedLocation.startsWith('/login');
    
    if (!loggedIn && !goingToLogin) return '/login';
    if (loggedIn && goingToLogin) return '/';
    
    return null;
  },
  routes: [
    ShellRoute(
      builder: (context, state, child) => AuthLayout(child: child),
      routes: [
        GoRoute(path: '/login', builder: (_, __) => const SignIn())
      ],
    ),

    ShellRoute(
      builder: (context, state, child) => MainLayout(child: child),
      routes: [
        GoRoute(path: '/', builder: (_, __) => const Home())
      ],
    ),
  ],
);

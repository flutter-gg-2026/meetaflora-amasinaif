import 'dart:io';

import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:meet_a_flora/features/discovery/presentation/pages/discovery_feature_screen.dart';
import 'routers.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meet_a_flora/features/discovery/presentation/cubit/discovery_cubit.dart';
import 'package:meet_a_flora/features/details/presentation/pages/details_feature_screen.dart';
import 'package:meet_a_flora/features/details/presentation/cubit/details_cubit.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: Routes.splash,
    routes: [
      GoRoute(
        path: Routes.splash,
        builder: (context, state) {
          return Scaffold(body: Center(child: Text("splash screen")));
        }, // SplashScreen
      ),

      GoRoute(
        path: Routes.discovery,
        builder: (context, state) => BlocProvider(
          create: (context) => GetIt.I<DiscoveryCubit>(),
          child: const DiscoveryFeatureScreen(),
        ),
      ),

      GoRoute(
        path: Routes.details,
        builder: (context, state) {
          final image = state.extra;
          if (image is! File) {
            return const Scaffold(body: Center(child: Text("No image passed")));
          }
          return BlocProvider(
            create: (context) => GetIt.I<DetailsCubit>(),
            child: DetailsFeatureScreen(image: image),
          );
        },
      ),
    ],

    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
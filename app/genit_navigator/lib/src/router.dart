import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home/home.dart';

part 'router.g.dart';
part 'routes/_root.dart';
part 'routes/home.dart';

final router = GoRouter(
  routes: $appRoutes,
  initialLocation: HomeRoute.location,
);

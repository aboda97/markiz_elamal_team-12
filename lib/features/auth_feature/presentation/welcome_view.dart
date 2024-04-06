import 'package:flutter/material.dart';
import 'package:markiz_elamal_team_12/features/auth_feature/presentation/widgets/welcome_view_body.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  @override
  Widget build(BuildContext context) {
    return const WelcomeViewBody();
  }
}

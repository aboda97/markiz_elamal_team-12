import 'package:flutter/material.dart';
import 'package:markiz_elamal_team_12/features/reservation_feature/presentation/widgets/reservation_view_body.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Select Date and Time',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
          ),
        ),
        body: const ReservationViewBody());
  }
}

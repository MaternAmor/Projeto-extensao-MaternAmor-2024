import 'package:flutter/material.dart';
import 'package:matern_amor/ui/requestDonation/view/requestDonationI.view.dart';
import 'package:matern_amor/ui/requestDonation/view/requestDonationII.view.dart';

class RequestDonationPage extends StatelessWidget {
  final int page;
  const RequestDonationPage({
    super.key,
    this.page = 0,
  });

  @override
  Widget build(BuildContext context) {
    switch (page) {
      case 0:
        return const RequestDonationIMobile();

      case 1:
        return const RequestDonationIIMobile();

      default:
        return const RequestDonationIMobile();
    }
  }
}

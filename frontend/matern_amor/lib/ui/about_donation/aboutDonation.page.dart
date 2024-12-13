import 'package:flutter/material.dart';
import 'package:matern_amor/ui/about_donation/view/doacaoLeiteMaterno.view.dart';
import 'package:matern_amor/ui/about_donation/view/doacaoPotes.view.dart';

class AboutFromPage extends StatelessWidget {
  int page;
  AboutFromPage({super.key, this.page = 0});

  @override
  Widget build(BuildContext context) {
    switch (page) {
      case 0:
        return const DoacaoLeiteMaternoMobile();
      case 1:
        return const DoacaoPotesMobile();
      default:
        return const DoacaoLeiteMaternoMobile();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:matern_amor/components/component.dart';

//======================================
// Classe ImageCarousel: cria um carrossel de imagens com três imagens, que podem ser roladas horizontalmente
// createState cria uma instância do estado associado ao carrossel (_ImageCarouselState).
// Estado da classe (_ImageCarouselState):_currentIndex: Um int que guarda o índice da imagem atual no carrossel.
//======================================

class ImageCarousel extends StatefulWidget {
  double height = 120;
  ImageCarousel({super.key, this.height = 120});
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentIndex = 0;

  // Lista de imagens
  final List<String> _imagePaths = [
    "images/carrousel1.png",
    "images/carrousel2.png",
    "images/carrousel3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: widget.height,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: PageView.builder(
            onPageChanged: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: _imagePaths.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(_imagePaths[index]),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: const Align(
                  alignment: Alignment.bottomCenter,
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [indicadorPaginaHome(index: _currentIndex)],
        ),
      ],
    );
  }
}

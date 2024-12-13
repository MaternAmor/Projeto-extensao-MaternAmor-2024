import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ======================================================
//Classe YouTubeVideoPlayer: é um StatefulWidget que cria um componente de interface de usuário para reproduzir vídeos do YouTube dentro de um aplicativo.
//Classe YoutubePlayerController: Controla o comportamento do player, como iniciar, pausar ou modificar o vídeo.
//videoId: Armazena o ID do vídeo do YouTube extraído da URL.
//void dispose: Libera os recursos do YoutubePlayerController quando o widget é removido da árvore de widgets, evitando vazamento de memória.
// ======================================================

class YouTubeVideoPlayer extends StatefulWidget {
  final String videoUrl; // Agora aceitamos a URL do vídeo
  final bool autoPlay;
  final bool mute;

  const YouTubeVideoPlayer({
    Key? key,
    required this.videoUrl, // A URL é obrigatória
    this.autoPlay = false,
    this.mute = false,
  }) : super(key: key);

  @override
  _YouTubeVideoPlayerState createState() => _YouTubeVideoPlayerState();
}

class _YouTubeVideoPlayerState extends State<YouTubeVideoPlayer> {
  late YoutubePlayerController _controller;
  late String? videoId;

  @override
  void initState() {
    super.initState();
    // Extrair o ID do vídeo da URL
    videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);

    if (videoId != null) {
      // Inicializa o player com o ID do vídeo e as flags
      _controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: YoutubePlayerFlags(
          autoPlay: widget.autoPlay,
          mute: widget.mute,
        ),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return videoId != null
        ? YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.blueAccent,
            onReady: () {
              print('Player is ready.');
            },
          )
        : const Center(
            child: Text('URL inválida'),
          );
  }
}

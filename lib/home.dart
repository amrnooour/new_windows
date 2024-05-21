import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Windows 10"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                AssetsAudioPlayer.newPlayer().open(
                  Audio(
                    "assets/audios/song1.mp3",
                    metas: Metas(
                      title: "Country",
                      artist: "Florent Champigny",
                      album: "CountryAlbum",
                      image: const MetasImage.asset(
                          "assets/images/country.jpg"), //can be MetasImage.network
                    ),
                  ),
                  autoStart: true,
                  showNotification: true,
                );
              },
              child: const Center(child: Text("play audio")))),
    );
  }
}

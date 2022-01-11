import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';

class ToLaughScreen extends StatefulWidget {

  const ToLaughScreen({ Key? key }) : super(key: key);

  @override
  _ToLaughScreenState createState() => _ToLaughScreenState();
}

class _ToLaughScreenState extends State<ToLaughScreen> {

  final VideoPlayerController _videoPlayerController = VideoPlayerController.asset('assets/fast-laughs-video.mp4');
  Icon _lolButton = const Icon(FontAwesomeIcons.solidLaughBeam, color: Colors.white, size: 22);
  Icon _listButton = const Icon(Feather.plus, color: Colors.white, size: 22);
  Icon _volumeButton = const Icon(FontAwesomeIcons.volumeUp,color: Colors.white,size: 18);
  bool pause = false;


  @override
  void initState() {
    super.initState();
    _videoPlayerController.addListener(() {
      setState(() {});
    });
    _videoPlayerController.setLooping(true);
    _videoPlayerController.initialize().then((_) => setState(() {}));
    _videoPlayerController.play();
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(pause){
          _videoPlayerController.play();
        } else {
          _videoPlayerController.pause();
        }
        setState(() {
          pause = !pause;
        });
      },
      child: Scaffold(
        body: Stack(
          children: [
            VideoPlayer(_videoPlayerController),
            Positioned(
              top: 50,
              left: 20,
              child: SizedBox(
                width: 150,
                height: 80,
                child: Image.asset("assets/fast-laughs-logo-1.png"),
              ),
            ),
            Positioned(
              top: 60,
              right: 30,
              child: Container(
                width: 20,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(2)
                ),
                child: const Center(child: Text("7+",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10))),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage("assets/fast-laughs-1.jpeg"),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if(_lolButton.color == Colors.white){
                            _lolButton = const Icon(FontAwesomeIcons.solidLaughBeam, color: Colors.yellow, size: 22);
                          } else {
                            _lolButton = const Icon(FontAwesomeIcons.solidLaughBeam, color: Colors.white, size: 22);
                          }
                        });
                      },
                      child: Column(
                        children: [
                          _lolButton,                       
                          const Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                          const Text("LOL", style: TextStyle(color: Colors.white,fontSize: 10))
                        ]
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if(_listButton.icon == Feather.check){
                            _listButton = const Icon(Feather.plus, color: Colors.white, size: 22);
                          } else {
                            _listButton = const Icon(Feather.check, color: Colors.white, size: 22);
                          }
                        });
                      },
                      child: Column(
                        children: [
                          _listButton,
                          const Text("My List", style: TextStyle(color: Colors.white,fontSize: 10))
                        ]
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                    Column(
                      children: const [
                        Icon(Feather.send, color: Colors.white, size: 22),
                        Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                        Text("Share", style: TextStyle(color: Colors.white,fontSize: 10))
                      ]
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                    Column(
                      children: const [
                        Icon(FontAwesome.play, color: Colors.white, size: 22),
                        Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                        Text("Play", style: TextStyle(color: Colors.white,fontSize: 10))
                      ]
                    ),
                  ]
                ),
              ),
            ),
            Positioned(
              bottom: 6,
              left: 8,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if(_volumeButton.icon == FontAwesomeIcons.volumeUp){
                      _videoPlayerController.setVolume(0);
                      _volumeButton = const Icon(FontAwesomeIcons.volumeMute,color: Colors.white,size: 18);
                    } else {
                      _videoPlayerController.setVolume(1);
                      _volumeButton = const Icon(FontAwesomeIcons.volumeUp,color: Colors.white,size: 18);
                    }
                  });
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black54,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: _volumeButton,
                  ),
                ),
              ),
            ),
            if(pause)
              const Center(
                child: Icon(FontAwesome.play, color: Colors.white60, size: 60),
              )
          ]
        )
      )
    );
  }
}
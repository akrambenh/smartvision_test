import 'dart:ui';
import 'package:audio_wave/audio_wave.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

void main() => runApp(const myApp());
class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: VideoChat(),
    );
  }
}
class VideoChat extends StatefulWidget {
  const VideoChat({super.key});

  @override
  State<VideoChat> createState() => _VideoChatState();
}

class _VideoChatState extends State<VideoChat> {
  TextStyle myStyle =  const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0);
  TextStyle whiteText =  const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15.0);
  TextStyle greyText =  const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 15.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // background image which is the video chat blurred
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
          child: Column(
            children: <Widget>[
              // "In Call With" Header
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                  Text('In Call With', style: myStyle,),
                ],),
              ),
              // Profile pictures of both call ends (caller and receptor)
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        // Receptor Profile Pic
                        Container(
                          width: 140.0, height: 140.0,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(70.0), border: Border.all(color: Colors.white)),
                          child: Center(
                            child: Container(
                              width: 120.0, height: 120.0,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(70.0) ,image: const DecorationImage(image: AssetImage('assets/receptor.jpg'), fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        // Caller Profile Pic
                        Padding(
                          padding: const EdgeInsets.only(top: 100.0, left: 90.0),
                          child: Container(
                            width: 60.0, height: 60.0,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(70.0), border: Border.all(color: Colors.white)),
                            child: Center(
                              child: Container(
                                width: 45.0, height: 45.0,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(70.0) ,image: const DecorationImage(image: AssetImage('assets/caller.jpg'), fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],),
              ),
              // Call duration
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('01:56', style: myStyle,),
                ],),
              ),
              // Speech to Text
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(width: 280.0, height: 150.0,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.grey[200]?.withOpacity(0.15)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SingleChildScrollView(
                              child: RichText(
                                text: TextSpan(text: 'It was a pleasure to do business with you, and thats what i was looking', style: whiteText,
                                children: [
                                  TextSpan(text: ' for since we started our late project. I just hope that we can meet again and discuss other bright ideas.'
                                      ' Dont forget to hit me with a text once you get to town maybe we can go grab some drinks om me',
                                      style: greyText)
                                ]),
                              ),
                            ),
                          )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // audio waveform using a package
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 210.0,
                      height: 50.0,
                      child: AudioWave(
                        height: 48,
                        width: 210,
                        spacing: 2.5,
                        animation: false,
                        bars: [
                          AudioWaveBar(heightFactor: 0.7, color: Colors.white),
                          AudioWaveBar(heightFactor: 0.8, color: Colors.white),
                          AudioWaveBar(heightFactor: 0.2, color: Colors.white),
                          AudioWaveBar(heightFactor: 0.1, color: Colors.white),
                          AudioWaveBar(heightFactor: 0.2, color: Colors.white),
                          AudioWaveBar(heightFactor: 0.4, color: Colors.white),
                          AudioWaveBar(heightFactor: 0.7, color: Colors.white),
                          AudioWaveBar(heightFactor: 0.8, color: Colors.white),
                          AudioWaveBar(heightFactor: 0.6, color: Colors.white),
                          AudioWaveBar(heightFactor: 0.4, color: Colors.white),
                          AudioWaveBar(heightFactor: 0.2, color: Colors.white),
                          AudioWaveBar(heightFactor: 0.1, color: Colors.white),
                          AudioWaveBar(heightFactor: 0.1, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.1, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.3, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.5, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.7, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.8, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.9, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.9, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.5, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.3, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.2, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.8, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.9, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.9, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.9, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.8, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.9, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.7, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.6, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.85, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.9, color: Colors.grey),
                          AudioWaveBar(heightFactor: 0.7, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // call buttons - switching to message button, turning mic on & off, call end button
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // switching to message button
                    Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 60.0,)]),
                        child: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey, child: const Icon(Iconsax.message),)),
                    //turning mic on & off
                    Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [BoxShadow(color: Colors.blue, blurRadius: 60.0,)]),
                        child: FloatingActionButton(onPressed: (){}, child: const Icon(Iconsax.microphone),)),
                    //call end button
                    Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [BoxShadow(color: Colors.red, blurRadius: 60.0,)]),
                        child: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.red, child: const Icon(Iconsax.stop),)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


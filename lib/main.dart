import 'dart:ui';
import 'package:audio_wave/audio_wave.dart';
import 'package:flutter/cupertino.dart';
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
  late var screenSize;
  late var screenPadding;
  TextStyle boldStyle =  const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20.0);
  TextStyle normalStyle =  const TextStyle(color: Colors.white, fontSize: 16.0);
  TextStyle whiteText =  const TextStyle(color: Colors.white, fontSize: 13.0, height: 1.4);
  TextStyle greyText =  const TextStyle(color: Colors.grey, fontSize: 13.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // background image which is the video chat blurred
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
          child: Column(
            children: <Widget>[
              // "In Call With" Header
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 16),
                child: Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                  Text('In Call With', style: normalStyle,),
                ],),
              ),
              // Profile pictures of both call ends (caller and receptor)
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 27),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        // Receptor Profile Pic
                        Container(
                          width: MediaQuery.of(context).size.width / 2.8, height: MediaQuery.of(context).size.width / 2.8,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(70.0), border: Border.all(color: Colors.white)),
                          child: Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3.2, height: MediaQuery.of(context).size.width / 3.2,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(70.0) ,image: const DecorationImage(image: AssetImage('assets/receptor.jpg'), fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        // Caller Profile Pic
                        Padding(
                          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 9.6, left: MediaQuery.of(context).size.width / 3.1),
                          child: Container(
                            width: MediaQuery.of(context).size.width / 6.5, height: MediaQuery.of(context).size.width / 6.5,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(70.0), border: Border.all(color: Colors.white)),
                            child: Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width / 8.5, height: MediaQuery.of(context).size.width / 8.5,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(70.0) ,image: const DecorationImage(image: AssetImage('assets/caller.jpg'), fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],),
              ),
              // Caller/Receptor name
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 40),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Abbas', style: boldStyle,),
                ],),
              ),
              // Speech to Text
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 40),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(width: MediaQuery.of(context).size.width / 1.1, height: MediaQuery.of(context).size.height / 4.1,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: Colors.grey[200]?.withOpacity(0.15)),
                          child: Padding(
                            padding: EdgeInsets.all(MediaQuery.of(context).size.width / 30),
                              child: RichText(
                                text: TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud', style: whiteText,
                                children: [
                                  TextSpan(text: ' exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt',
                                      style: greyText)
                                ]),
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
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height / 15,
                      child:
                      // This is the waves to represent audio built with multiple containers.
                      // Comment This Widget & uncomment the AudioWave Widget if you want to se the result using a package.
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 4,
                            height: 100,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 15, bottom: 17),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 10, bottom: 8),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 4, bottom: 15),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 1, bottom: 20),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 10, bottom: 10),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 20, bottom: 0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 15, bottom: 10),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  bottom: 10),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 10),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 15, bottom: 5.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 0, bottom: 15.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 15.0, bottom: 0.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 0.0, bottom: 17.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 4.0, bottom: 5.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 14.0, bottom: 2.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 14.0, bottom: 2.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 0.0, bottom: 0.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 14.0, bottom: 12.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 0.0, bottom: 14.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 10, bottom: 10.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 12.0, bottom: 3.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 5.0, bottom: 0.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 2.0, bottom: 14.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0,  top: 9.0, bottom: 7.0),
                            child: Container(
                              width: 4,
                              height: 100,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                        // This is the package of audio waves
                      /*AudioWave(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 1.5,
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
                      ),*/
                    ),
                  ],
                ),
              ),
              // Call Duration
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('02 : 30', style: normalStyle,),
                  ],),
              ),
              // call buttons - switching to message button, turning mic on & off, call end button
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // switching to message button
                    Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 100.0,)]),
                        child: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.grey, child: const Icon(Iconsax.message),)),
                    //turning mic on & off
                    Container(width: MediaQuery.of(context).size.width / 5, height: MediaQuery.of(context).size.width / 5,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [BoxShadow(color: Colors.blue, blurRadius: 100.0,)]),

                        child: FloatingActionButton(onPressed: (){}, child: const Icon(Iconsax.microphone),),),
                    //call end button
                    Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [BoxShadow(color: Colors.red, blurRadius: 100.0,)]),
                        child: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.red, child: const Icon(CupertinoIcons.phone_down_fill),)),
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


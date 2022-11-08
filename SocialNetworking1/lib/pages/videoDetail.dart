/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:socialnetworking/helper/style.dart';
import 'package:video_player/video_player.dart';

class videoDetail extends StatefulWidget {
  videoDetail({Key? key}) : super(key: key);

  static const String page_id = "Video Detail";

  @override
  State<videoDetail> createState() => _videoDetailState();
}

class _videoDetailState extends State<videoDetail> {
  late VideoPlayerController videoPlayerController;
  late Future<void> videoPlayerFuture;

  int _value = 6;
  @override
  void initState() {
    super.initState();
    videoPlayerController =
        VideoPlayerController.asset('assets/images/video.mp4');
    videoPlayerFuture = videoPlayerController.initialize();
    videoPlayerController.setLooping(true);
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.close),
      ),
      title: Text(
        'Video Detail',
        style: whiteHeadText(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: FutureBuilder(
                  future: videoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: videoPlayerController.value.aspectRatio,
                        child: VideoPlayer(videoPlayerController),
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    videoPlayerController.value.isPlaying
                        ? videoPlayerController.pause()
                        : videoPlayerController.play();
                  });
                },
                child: Icon(
                  videoPlayerController.value.isPlaying
                      ? Icons.pause
                      : Icons.play_arrow,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text('1:03'),
                  Expanded(
                    child: Slider(
                      value: _value.toDouble(),
                      min: 1.0,
                      max: 20.0,
                      activeColor: appColor,
                      inactiveColor: appColor.withOpacity(0.2),
                      onChanged: (double newValue) {
                        setState(() {
                          _value = newValue.round();
                        });
                      },
                    ),
                  ),
                  Text('4:12'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite_outline,
                        color: appColor,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('110'),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.chat_bubble_outline),
                      SizedBox(
                        width: 5,
                      ),
                      Text('66'),
                    ],
                  ),
                  Icon(Icons.bookmark_outline)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              detailContainer(),
              detailContainer(),
              detailContainer(),
              detailContainer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget detailContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage('assets/images/s3.jpg'),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Hardik Gohil',
                    style: TextStyle(
                      fontFamily: 'medium',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Text('32 min')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
        ],
      ),
    );
  }
}

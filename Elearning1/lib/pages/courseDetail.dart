/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/aboutInstructor.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class courseDetail extends StatefulWidget {
  courseDetail({Key? key}) : super(key: key);

  @override
  _courseDetailState createState() => _courseDetailState();
}

class _courseDetailState extends State<courseDetail> {
  late VideoPlayerController videoPlayerController;
  late Future<void> videoPlayerFuture;
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
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
      title: SizedBox(
        width: 250,
        child: Text(
          'Hi,Jaydeep Hirani',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          maxLines: 1,
          softWrap: false,
          style: headText(),
        ),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchbar(),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coding With Python \n Interface',
                  style: headText(),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: appColor, borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'BEST SELLER',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('4.5'),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.amber,
                ),
                Icon(
                  Icons.star_outline,
                  size: 20,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '(122 ratings) 25,190 Students',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                text:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry... ',
                style: TextStyle(
                    fontFamily: 'regular', color: Colors.black, height: 1.5),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Read more',
                    style: TextStyle(
                      fontFamily: 'regular',
                      color: appColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    child: FutureBuilder(
                      future: videoPlayerFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return AspectRatio(
                            aspectRatio:
                                videoPlayerController.value.aspectRatio,
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
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'This course includes:',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            courseInclude('10.5 hours on demand video'),
            courseInclude('15 Question Patterns'),
            courseInclude('Support Files'),
            courseInclude('Access on all devices'),
            courseInclude('Certificate of completions'),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What will you learn',
                    style: headText(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  courseInclude(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been'),
                  courseInclude(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been'),
                  courseInclude(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry')
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Description',
              style: headText(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been text of the printing and'),
            SizedBox(
              height: 5,
            ),
            Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'SEE ALL',
                  style: TextStyle(color: appColor),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: appColor,
                  size: 20,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 20.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Curricullum',
                    style: headText(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '179 Lectures / 20h 4min Length',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Episode 1 - Introduction to 3D Animations & tools'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Episode 2 - Basic of 3D animation theory'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Episode 3 - What are tools use in design'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Episode 4 - The Selection Tools tools'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Episode 5 - Objective of 3D Animations'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Episode 6 - The Conclusion'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Course Info :',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone_android,
                  color: Colors.teal,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Last uploaded on Jan 21, 2022')
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.teal,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => aboutInstructer()));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'Auther : ',
                      style: TextStyle(
                          fontFamily: 'regular',
                          color: Colors.black,
                          height: 1.5),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' STEPHEN MORIS',
                          style: TextStyle(
                            fontFamily: 'regular',
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.language,
                  color: Colors.teal,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('English, French')
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget courseInclude(text) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.circle,
            color: appColor,
            size: 10,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(child: Text(text))
        ],
      ),
    );
  }
}

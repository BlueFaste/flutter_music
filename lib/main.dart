import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Player',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue,
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
           HeaderSection(),
            PlaylistSection(),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  Size get preferredSize => new Size.fromHeight(60);
  @override
  Widget build (BuildContext context){
    return AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        actions: [IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          onPressed: null,
        ),],
      );
  }
}

class HeaderSection extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Container(
      height: 500,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/ariana.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 20,
              bottom: 30,
              child: Text(
                'Ariana Grande',
                style: GoogleFonts.arizonia(
                  color: Colors.white,
                  fontSize: 43,
                  fontWeight: FontWeight.w800
                ),
              ),
          ),
          Positioned(
            right: 0,
            bottom: 20,
            child: MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              shape: CircleBorder(),
              child: Padding(
                padding: EdgeInsets.all(17),
                child: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class PlaylistSection extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Container(
      padding: EdgeInsets.fromLTRB(30, 40, 20, 20),
      child: Column(
        children: [

        ],
      ),
    );
  }
}
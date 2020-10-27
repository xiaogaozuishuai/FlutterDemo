import 'package:flutter/material.dart';
import 'my_home_page.dart';


class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen>  with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller =  AnimationController(duration: Duration(milliseconds: 5000), vsync: null);
    _animation = Tween(begin: 0.0 ,end: 1.0).animate(_controller);

    _animation.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder:(context)=> MyHomePage()),
         (route) => false);
      }
    });
    _controller.forward();

  }

  @override
  void dispose() {
   _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child:
      /*Image.network(
        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1602766338983&di=a747ef97a2126ff01051bc6ab4c3fdb3&imgtype=0&src=http%3A%2F%2Fpics5.baidu.com%2Ffeed%2F11385343fbf2b211c438c51ee7780e3f0dd78e4f.jpeg%3Ftoken%3D3dc64d71055a1ad6b329b07edaf44fa7",
      fit: BoxFit.cover,
      scale: 2.0,)*/
      Image.asset(
        "assets/images/timg.jpg",
        scale: 1.0,
        fit: BoxFit.cover
      ),
    );
  }
}

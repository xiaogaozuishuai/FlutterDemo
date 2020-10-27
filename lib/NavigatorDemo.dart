import 'Package:flutter/Material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Text('Home'),
              onPressed: (){
                Navigator.pushNamed(context, "/MyPage");
                /*Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context)=>MyPage(title: "My Page"),
                    )
                );*/
              },
            ),
            FlatButton(
              child: Text('About'),
              onPressed: (){
                Navigator.pushNamed(context, "/About");
              },
            )
          ],
        ),
      ),
    );
  }
}

class MyPage extends StatelessWidget {

  final String title;

  MyPage({
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(title),
          elevation: 8.0
      ),
    );
  }
}



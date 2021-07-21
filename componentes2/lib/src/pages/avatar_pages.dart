import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina de Avatars'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage ('https://www.occhionotizie.it/wp-content/uploads/2018/12/stan-lee-780x470.jpg'),
              radius: 30.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.amber,
            ),
            
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://www.tomshw.it/images/images/2019/01/stan-lee-14113.jpg'), 
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeOutDuration: Duration ( milliseconds: 200), 
          
        ) 
      ,)
    );
  }
}

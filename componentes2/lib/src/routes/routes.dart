import 'package:componentes2/src/pages/Slider_page.dart';
import 'package:componentes2/src/pages/animated_container.dart';
import 'package:componentes2/src/pages/input_page.dart';
import 'package:componentes2/src/pages/listview_page.dart';
import 'package:flutter/material.dart';

import 'package:componentes2/src/home_page.dart';
import 'package:componentes2/src/pages/alert_page.dart';
import 'package:componentes2/src/pages/avatar_pages.dart';
import 'package:componentes2/src/pages/card_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{
        '/'                 : (BuildContext context) => HomePage(),
        'alert'             : (BuildContext context) => AlertPage(),
        'avatar'            : (BuildContext context) => AvatarPage(),
        'card'              : (BuildContext context) => CardPage(),
        'list'              : (BuildContext context) => ListaPage(),
        'animatedContainer' : (BuildContext context) => AnimatedContainerPage(),
        'inputs'            : (BuildContext context) => InputPage(),
        'slider'            : (BuildContext context) => SliderPage(),

        
       

};

}
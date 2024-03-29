import 'package:beachmap/screens/all_screens.dart';
import 'package:flutter/material.dart';

class CardMaps extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 60.0),
                child: Image(
                  image: AssetImage("assets/img/logo.png"),
                  width: 180.0,
                  
                  ),
              ),
          
              
              Container(
                margin: EdgeInsets.only(bottom: 50.0),
                child: Text("DOVE VUOI ANDARE?", 
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0,2.0),
                        blurRadius: 3.0
                      )
                    ]
              
                    ),),
              ),
              
              Row(
                
                children: <Widget>[
                 Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NordOvest()));
                          }, // onTap
                          child: Image(
                            image: AssetImage("assets/img/nord-ovest.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),

                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: InkWell(
                          onTap: (){ 
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NordEst()));
                          }, // onTap
                          child: Image(
                            image: AssetImage("assets/img/nord-est.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],

              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SudOvest()));
                          },
                          child: Image(
                            image: AssetImage("assets/img/sud-ovest.jpg")
                            ),
                        ),
                      ),
                    ),
                    ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SudEst()));
                          },
                          child: Image(
                          image: AssetImage("assets/img/sud-est.jpg")
                          ),
                        ),
                      ),
                    ),
                  ),
                ],

              ),
            ],
          );
    
    
  } 
  
  void tmpFunction() {
    
    print('Function Called');
  }
}

/* // MediaQuery for Size of the phone
    final size = MediaQuery.of(context).size;
    
    Container(
      width: double.infinity,
      height: size.height * 0.3,
      color: Colors.red,
      margin: EdgeInsets.all(10),
    );*/
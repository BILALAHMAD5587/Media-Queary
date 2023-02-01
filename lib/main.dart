import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    var width = MediaQuery.of(context).size.width;
    var orientation = mq.orientation;
    //var height = MediaQuery.of(context).size.height;
    var tsize = mq.textScaleFactor;

    return Scaffold(
      body: Center(
        child: Container(
          width: mq.size.width * 0.5,
          height: mq.size.height * 0.2,
          color: Colors.cyan,

          child: FractionallySizedBox(
            widthFactor: 0.2,
            heightFactor: 0.1,
            child: LayoutBuilder(
              builder: (context, covariant) {
                return ElevatedButton(onPressed: (){}, child: Text('Play $tsize', style: TextStyle(
                  fontSize: covariant.maxWidth<80 ? 8 : 16
                ),));
              },
            )
          ),
        ),
      )
    );

   /*return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            width: mq.size.width * 0.5,
            height: mq.size.height * 0.8,
            color: Colors.blue.shade200,
            child: FractionallySizedBox(
              widthFactor: 0.4,
              heightFactor: 0.1,
              child: ElevatedButton(
                onPressed: (){


                },
                child: Text('Play'),
              ),
            )
          ),
        ),
      ),
    );*/

    /*return Container(
      child: Center(
        child: Container(
          color: Colors.cyan,
          width: mq.size.width * 0.1,
          height: mq.size.height * 0.2,
        )
      ),
    );*/
  }

  Widget LandscapeUI(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,height: 100,color:  Colors.cyan,),
        SizedBox(width: 15,),
        Container(
          width: 100,height: 100,color:  Colors.greenAccent,),
      ],
    );
  }

  Widget pottraitUI(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,height: 100,color:  Colors.cyan,),
        SizedBox(height: 15,),
        Container(
          width: 100,height: 100,color:  Colors.greenAccent,),
      ],
    );
  }

}

/*
* orientation == Orientation.landscape ? LandscapeUI(): pottraitUI()*/



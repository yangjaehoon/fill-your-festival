import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Login app',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: LogInFirebase(),
    );
  }
}

class LogInFirebase extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign in',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50.0,
              child: ElevatedButton(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('asset/img/glogo.png',),
                    Text(
                        'Login with Google',
                        style: TextStyle(color: Colors.black87, fontSize:15.0)
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: Image.asset('asset/img/glogo.png',),
                    )
                  ],
                ),
                //color: Colors.white,
                style: ButtonStyle (
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    ),
                  ),
                ),
                onPressed: (){},
              ),

            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 50.0,
              child: ElevatedButton(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('asset/img/flogo.png',),
                    Text(
                        'Login with Facebook',
                        style: TextStyle(color: Colors.white, fontSize:15.0)
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: Image.asset('asset/img/flogo.png',),
                    )
                  ],
                ),
                //color: Colors.white,
                style: ButtonStyle (
                  backgroundColor: MaterialStateProperty.all(Color(0xFF334D92)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    ),
                  ),
                ),
                onPressed: (){},
              ),

            ),
            SizedBox(
              height: 10.0,
            ),

          ],
        )
      ),
    );
  }
}
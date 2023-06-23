import 'package:flutter/material.dart';
import 'package:feple/screen/home_screen.dart';


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget{

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){}
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){}
          )
        ],
      ),
      body: Builder(
        builder:(context) {
          return GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                    child: Image(
                      image: AssetImage('asset/img/logo_center.png'),
                      width: 170.0,
                      height: 190.0,
                    ),
                  ),
                  Form(child: Theme(
                      data: ThemeData(
                          primaryColor: Colors.teal,
                          inputDecorationTheme: InputDecorationTheme(
                              labelStyle: TextStyle(
                                  color: Colors.teal,
                                  fontSize:15.0
                              )
                          )
                      ),
                      child: Container(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              autofocus: true,
                              controller: controller, //아이디 부분
                              decoration: InputDecoration(
                                  labelText: 'Enter email(dice)'
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            TextField(
                              controller: controller2, //비밀번호 부분
                              decoration: InputDecoration(
                                  labelText: 'Enter Password(1234)'
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true, //비밀번호 안보이게 타이핑 하는거
                            ),
                            SizedBox(height: 40.00), //  비밀번호창과 버튼 사이 띄우즈기 위한거(padding안쓰기 위함)
                            ButtonTheme(
                                minWidth: 100.0,
                                height: 50.0,
                                child: ElevatedButton(
                                  style:ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blueAccent,
                                  ),
                                  child: Icon(Icons.arrow_forward,
                                      color: Colors.white,
                                      size:35.0
                                  ),
                                  onPressed: (){
                                    if(controller.text == 'dice' && controller2.text == '1234') {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (BuildContext context)=>HomeScreen()
                                          )
                                      );
                                    }
                                    else if(controller.text != 'dice' && controller2.text == '1234'){
                                      showSnackBar1(context);
                                    }else if(controller.text != 'dice' && controller2.text == '1234'){
                                      showSnackBar2(context);
                                    }else{
                                      showSnackBar3(context);
                                    }


                                  },
                                )
                            )
                          ],
                        ),
                      )
                  )
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
void showSnackBar1(BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '일치하는 아이디가 없습니다.',
          textAlign: TextAlign.center,),
        backgroundColor: Colors.blue,
      )
  );
}
void showSnackBar2(BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '비밀번호가 올바르지 않습니다.',
          textAlign: TextAlign.center,),
        backgroundColor: Colors.blue,
      )
  );
}
void showSnackBar3(BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        '로그인 정보를 다시 확인하세요',
    textAlign: TextAlign.center,),
    backgroundColor: Colors.blue,
    )
  );
}
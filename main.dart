import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: ScoreMain(),
    );
  }
}

//첫페이지
class ScoreMain extends StatefulWidget {
  @override
  _ScoreMainState createState() => _ScoreMainState();
}

class _ScoreMainState extends State<ScoreMain> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('성적입력'),),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('성적', textAlign: TextAlign.start,),

                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '성적',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '등급',
                ),
                keyboardType: TextInputType.number,
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                alignment: Alignment.centerRight,
                child: ElevatedButton(onPressed: (){if(_formKey.currentState.validate()){}},
                child: Text('결과'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//두번째페이지
class ScoreResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

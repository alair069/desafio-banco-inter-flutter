import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          customHeader(),
          Align(
            alignment: Alignment(0,-.65),
            child: Image.asset('assets/img/logo.png', width: 130),
          ),
          Align(
            alignment: Alignment(0, -.3),
            child: dataContainer(),
          ),
          Align(
            alignment: Alignment(0, .55),
            child: isafeContainer(),
          ),
        ],
      ),
    );
  }

  Widget customHeader() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.centerLeft,
          colors: [Color(0xFF002032), Color(0xFF004768)],
        ),
      ),
    );
  }

  Widget dataContainer() {
    TextStyle customText = TextStyle(color: Color(0xFFB1B1BB), fontSize: 16);
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF6F7FB),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: SizedBox(
                        height: 48,
                        width: 48,
                        child: CircleAvatar(
                          backgroundColor: Color(0xFFD1D5E4),
                          child:
                              Text('FP', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                    Text("Operador", style: customText),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'TROCAR',
                    style: TextStyle(
                      color: Color(0XFF65656E),
                      fontSize: 16,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: Color(0xFFB1B1BB),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          RaisedButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF002032), Color(0xFF004768)],
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
              child: Text('ENTRAR',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  Widget isafeContainer() {
    TextStyle customText = TextStyle(color: Color(0xFFB1B1BB), fontSize: 16);
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF6F7FB),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Image.asset('assets/img/isafe.png', width: 100),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipOval(
                        child: Material(
                          color: Colors.white, // button color
                          child: InkWell(
                            splashColor: Colors.grey, // inkwell color
                            child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(
                                  Icons.more_horiz,
                                  color: Color(0xFFFE8A51),
                                )),
                            onTap: () {},
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Gerar', style: customText)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

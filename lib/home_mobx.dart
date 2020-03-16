import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:primeiros_passos_mobx/store/user_store.dart';

class HomeMobx extends StatefulWidget {

  @override
  _HomeMobxState createState() => _HomeMobxState();
}

class _HomeMobxState extends State<HomeMobx> {
  final _idController = TextEditingController(); 
  final userstore = UserStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: (){
              _idController.text = "";
              userstore.getUser("Flutterando");
            },
            icon: Icon(Icons.refresh),
          )
        ],
        title: Text("MobX + Consumo de API"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Observer(
            builder: (_){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 75,
                    backgroundImage: NetworkImage(userstore.avatarUrl),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: <Widget>[
                        Text("Name: ", 
                          style: TextStyle(
                            fontSize: 20.0, 
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(userstore.name, 
                          style: TextStyle(
                            fontSize: 20.0, 
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        Text("Bio: ", 
                          style: TextStyle(
                            fontSize: 20.0, 
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(userstore.bio, 
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0, 
                            fontWeight: FontWeight.w300
                          ),
                        )
                      ],
                    )
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "User ID",
                        labelStyle: TextStyle(fontSize: 20),
                        icon: Icon(Icons.account_circle, size: 40)
                      ),
                      controller: _idController,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.center,
                      onFieldSubmitted: (user){
                        userstore.getUser(user);
                      },
                    )
                  )
                ],
              );
            }
          ),
        )
      )
    );
  }
}
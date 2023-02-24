import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myxogame/ScreenTwo.dart';

class Names extends StatefulWidget {
  Names();
  late String name1 ;
  late String name2 ;
  @override
  State<Names> createState() => _NamesState();
}

class _NamesState extends State<Names> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'XO Game',
          style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.normal
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('asset/FB_IMG_15931112998678769.jpg',
                height: 250,
                width: 250,
                fit: BoxFit.cover,),
                SizedBox(height: 30),
                TextField(
                  onChanged:(String Name1){
                    widget.name1 = Name1;
                  },
                  decoration: InputDecoration(
                    label: Text('Player One (O)',
                    style: TextStyle(
                      color: Colors.black
                    ),),
                    hintText: '  Please enter your name',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 3
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 3
                        )
                    ),

                  ),

                ),
                SizedBox(height: 30),
                TextField(
                  onChanged:(String Name2){
                    widget.name2 = Name2;
                  },
                  decoration: InputDecoration(
                    label: Text('Player Two (X)',
                      style: TextStyle(
                          color: Colors.black
                      ),),
                    hintText: '  Please enter your name',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 3
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 3
                        )
                    ),

                  ),

                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: (){
                  if( widget.name2 != '' && widget.name1 != '');
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                      return  XoGame(
                        playerO: widget.name1,
                        playerX: widget.name2 ,
                      );
                    }));
                    },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text('Go',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),),
                    height: 55,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.deepPurple,
                    ),
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}

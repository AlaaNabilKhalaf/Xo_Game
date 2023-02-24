import 'package:flutter/material.dart';
import 'Players.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class XoGame extends StatefulWidget {
  XoGame({required this.playerO , required this.playerX});
  String playerO = '';
  String playerX = '';
  @override
  State<XoGame> createState() => _XoGameState();
}

class _XoGameState extends State<XoGame> {

  @override
  List <String> symble = ['' , '' , '' , '' , '' , '' , '' , '' , ''];
  bool isO = true ;
  int counterX = 0 ;
  int counterO = 0 ;
  int counter = 0 ;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('XO Game',
            style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.normal
            ),),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('${widget.playerO}(O) \n score:$counterO',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 50,
                          fontWeight: FontWeight.bold
                      ),),
                    Text('${widget.playerX}(X) \n score:$counterX',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 50,
                            fontWeight: FontWeight.bold
                        )),
                  ],
                )),

            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          TestSymbol(0);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('${symble[0]}',
                            style: TextStyle(
                                color: symble[0]=='X'?Colors.white: Colors.black,
                                fontSize: 90

                            ),),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black,width:3)
                          ),
                        ),


                      )
                      , ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          TestSymbol(1);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('${symble[1]}',
                            style: TextStyle(
                                color: symble[1]=='X'?Colors.white: Colors.black,
                                fontSize: 90

                            ),),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black,width:3)
                          ),
                        ),


                      )
                      , ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          TestSymbol(2);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('${symble[2]}',
                            style: TextStyle(
                                color: symble[2]=='X'?Colors.white: Colors.black,
                                fontSize: 90
                              // isO==true? Colors.red  : Colors.black
                            ),),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black,width:3),
                          ),
                        ),


                      )
                      , ),

                  ],
                )),
            Expanded(
                flex: 2,
                child:
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          TestSymbol(3);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('${symble[3]}',
                            style: TextStyle(
                                color: symble[3]=='X'?Colors.white: Colors.black,

                                fontSize: 90

                            ),),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black,width:3)
                          ),
                        ),


                      )
                      , ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          TestSymbol(4);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('${symble[4]}',
                            style: TextStyle(
                                color: symble[4]=='X'?Colors.white: Colors.black,
                                fontSize: 90

                            ),),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black,width:3)
                          ),
                        ),


                      )
                      , ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          TestSymbol(5);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('${symble[5]}',
                            style: TextStyle(
                                color: symble[5]=='X'?Colors.white: Colors.black,
                                fontSize: 90

                            ),),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black,width:3)
                          ),
                        ),


                      )
                      , ),

                  ],
                )),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          TestSymbol(6);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('${symble[6]}',
                            style: TextStyle(
                                color: symble[6]=='X'?Colors.white: Colors.black,
                                fontSize: 90

                            ),),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black,width:3),
                          ),
                        ),


                      )
                      , ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          TestSymbol(7);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('${symble[7]}',
                            style: TextStyle(
                                color: symble[7]=='X'?Colors.white: Colors.black,
                                fontSize: 90
                            ),),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black,width:3)
                          ),
                        ),


                      )
                      , ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          TestSymbol(8);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text('${symble[8]}',
                            style: TextStyle(
                                color: symble[8]=='X'?Colors.white: Colors.black,
                                fontSize: 90

                            ),),
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black,width:3)
                          ),
                        ),


                      )
                      , ),

                  ],
                )),

            Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: (){
                    restart();
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.deepPurple,width:5)
                    ),
                    child: Text('Restart' ,
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 50,
                          fontWeight: FontWeight.w600

                      ),),
                  ),

                )

            )

          ],
        ),
      ),
    );
  }
  TestSymbol(int index){
    if( symble[index].isNotEmpty){
      return ;
    }
    if( isO == true ){
      symble[index] = 'O';
    }
    if ( isO == false ){
      symble[index] = 'X';
    }
    counter++;
    TestWinner(symble[index]);
    isO = !isO ;
    setState(() {});
  }
  restart( ) {
    symble = ['','','' ,'','','' ,'','',''] ;
    counter = 0 ;
    setState(() {});
  }
  TestWinner(String i){
    if(symble[0] == symble[1] && symble[1] == symble[2] && symble[2] == i && i == 'O'){
      counterO++;
      Alert(context: context, title: "WINNER", desc: "${symble[2]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[0] == symble[3] && symble[3] == symble[6] && symble[6] == i && i == 'O'){
      counterO++;
      Alert(context: context, title: "WINNER", desc: "${symble[6]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[0] == symble[4] && symble[4] == symble[8] && symble[8] == i && i == 'O'){
      counterO++;
      Alert(context: context, title: "WINNER", desc: "${symble[8]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[1] == symble[4] && symble[4] == symble[7] && symble[7] == i && i == 'O'){
      counterO++;
      Alert(context: context, title: "WINNER", desc: "${symble[7]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[2] == symble[5] && symble[5] == symble[8] && symble[8] == i && i == 'O'){
      counterO++;
      Alert(context: context, title: "WINNER", desc: "${symble[5]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[2] == symble[4] && symble[4] == symble[6] && symble[6] == i && i == 'O'){
      counterO++;
      Alert(context: context, title: "WINNER", desc: "${symble[6]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[3] == symble[4] && symble[4] == symble[5] && symble[5] == i && i == 'O'){
      counterO++;
      Alert(context: context, title: "WINNER", desc: "${symble[5]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[6] == symble[7] && symble[7] == symble[8] && symble[8] == i && i == 'O'){
      counterO++;
      Alert(context: context, title: "WINNER", desc: "${symble[6]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[0] == symble[1] && symble[1] == symble[2] && symble[2] == i && i == 'X'){
      counterX++;
      Alert(context: context, title: "WINNER", desc: "${symble[2]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[0] == symble[3] && symble[3] == symble[6] && symble[6] == i && i == 'X'){
      counterX++;
      Alert(context: context, title: "WINNER", desc: "${symble[6]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[0] == symble[4] && symble[4] == symble[8] && symble[8] == i && i == 'X'){
      counterX++;
      Alert(context: context, title: "WINNER", desc: "${symble[7]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[1] == symble[4] && symble[4] == symble[7] && symble[7] == i && i == 'X'){
      counterX++;
      Alert(context: context, title: "WINNER", desc: "${symble[7]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[2] == symble[5] && symble[5] == symble[8] && symble[8] == i && i == 'X'){
      counterX++;
      Alert(context: context, title: "WINNER", desc: "${symble[8]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[2] == symble[4] && symble[4] == symble[6] && symble[6] == i && i == 'X'){
      counterX++;
      Alert(context: context, title: "WINNER", desc: "${symble[6]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[3] == symble[4] && symble[4] == symble[5] && symble[5] == i && i == 'X'){
      counterX++;
      Alert(context: context, title: "WINNER", desc: "${symble[5]} is a winner").show();

      restart();
      setState(() {});
    }
    else if(symble[6] == symble[7] && symble[7] == symble[8] && symble[8] == i && i == 'X'){
      counterX++;
      Alert(context: context, title: "WINNER", desc: "${symble[6]} is a winner").show();
      restart();
      setState(() {});
    }
    else if (counter == 9 ){
      restart();
    }


  }

}
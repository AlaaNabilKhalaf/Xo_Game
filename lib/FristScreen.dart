import 'package:flutter/material.dart';
import 'Players.dart';
class  first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          'XO Game',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.normal
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('asset/img_5.png',
              height: 310,
              width: 310,
              fit: BoxFit.cover,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return Names();
                  }));
                },
                child:  Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 50.0,
                      horizontal: 70.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 110,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(65),
                        border: Border.all(
                            color: Colors.black,
                            width: 5
                        )
                    ),
                    child: Text('Start',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 70,
                          fontWeight: FontWeight.w500
                      ),),
                  ),
                ),

              ),
            ],
          ),
        ),
      ),

    );
  }
}


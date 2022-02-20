import 'package:flutter/material.dart';
class TemaScreen extends StatelessWidget {
  const TemaScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.grey[900],
            title: const Text('Ayar Penceresi',style: TextStyle(color:Colors.white),),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text('Bu pencere ayarlar için test amaçlı eklenmiştir.',style: TextStyle(color:Colors.white),),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Anlaşıldı'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }


    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20,
                  child: Text(
                    'Önizleme',style: TextStyle(color: const Color(0xff097969)),
                  ),),],
              ),
              SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                  width: 300,
                  height: 300,

                  child: Image.asset('assets/pattern.gif'),
                ),
                ],

              ),

            ],
          ),


          //

          SizedBox(height: 25,),
          //
          Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              //


              Text('Tema Renkleri',style: TextStyle(color: const Color(0xff097969),fontSize: 20),),

              SizedBox(height: 5,),
              GestureDetector(
                onTap: (){
                  _showMyDialog();
                },
                child: Container(
                  height: 50,
                  color: Colors.transparent ,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:40,
                              width: 40,

                              child: Icon(Icons.color_lens,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Ana Renk',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),

                          SizedBox(height: 5,),

                          Row(
                            children: [
                              Text('Ana rengi seçin',style: TextStyle(color: Colors.white54, fontSize: 14),),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

              //


              //

              GestureDetector(
                onTap: (){
                  _showMyDialog();
                },
                child: Container(
                  height: 50,
                  color: Colors.transparent ,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height:40,
                              width: 40,

                              child: Icon(Icons.color_lens_outlined,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Vurgu Rengi',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),

                          SizedBox(height: 5,),

                          Row(
                            children: [
                              Text('Vurgu rengini seçin',style: TextStyle(color: Colors.white54, fontSize: 14),),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

              //




            ],


          ),
        ],
      ),
    );
  }
}

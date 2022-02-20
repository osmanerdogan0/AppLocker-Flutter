import 'package:flutter/material.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

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


    return SingleChildScrollView(
      child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Center(

      child: Column(

      children: [

        Row(
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: (){
                    _showMyDialog();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff097969),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),

                    width: ((MediaQuery.of(context).size.width*0.90)/2)-5,
                    height: ((MediaQuery.of(context).size.width*0.90)/4)-5,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.whatshot,color: Colors.white,size: 35,),
                        SizedBox(height: 3,),
                        Text('Premium ile reklamlardan kurtulun!',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 14),),
                      ],
                    ),


                  ),
                ),
              ],
            ),

            //

            SizedBox(width: 5,),

            //
            Column(
              children: [
                GestureDetector(
                  onTap: (){
                    _showMyDialog();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff097969),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),

                    width: ((MediaQuery.of(context).size.width*0.90)/2)-5,
                    height: ((MediaQuery.of(context).size.width*0.90)/4)-5,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.add_moderator,color: Colors.white,size: 35,),
                        SizedBox(height: 3,),
                        Text('Davetsiz Misafir',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 14),),
                      ],
                    ),


                  ),
                ),
              ],
            ),
          ],

        ),
        //


        SizedBox(height: 10,),
        //


        Row(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),

                  width: ((MediaQuery.of(context).size.width*0.90)),
                  height: ((MediaQuery.of(context).size.width*0.90)/4),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add_photo_alternate,color: Colors.white,size: 35,),
                      SizedBox(height: 3,),
                      Text('Reklam Alanı',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 14),),
                    ],
                  ),


                ),
              ],
            ),
          ],

        ),




        //


        SizedBox(height: 20,),
        //



      //Arama Bölümü Başlangıç
      SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width*0.85,
        child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
        labelText: "Uygulama ara...",
        labelStyle: TextStyle(color:Colors.white),
        hintText: "Uygulama ara...",
        hintStyle: TextStyle(color:Colors.white),
        prefixIcon: Icon(Icons.search,color: Colors.white,),
        focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        borderSide: BorderSide(width: 1,color: Colors.white),
        ),
        disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        borderSide: BorderSide(width: 1,color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        borderSide: BorderSide(width: 1,color: Colors.white),
        ),
        border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        borderSide: BorderSide(width: 1,)
        ),
        errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        borderSide: BorderSide(width: 1,color: Colors.black)
        ),
        focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        borderSide: BorderSide(width: 1,color: Colors.white)
        ),

        ),
        ),
      ),
      //Arama Bölümü Bitiş

        SizedBox(height: 15,),

        // Uygulama Listeleme Başlangıç
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.68,
              child: ListView.builder(
                  itemCount: 25,
                  itemBuilder: (BuildContext context,int index){
                    return ListTile(
                        leading: Icon(Icons.whatshot,color: Colors.white,),
                        trailing: Icon(Icons.lock_open,color: Colors.white,),
                        title:Text("Uygulama Örnek $index",style: TextStyle(color: Colors.white),)
                    );
                  }
              ),
            ),
          ],
        ),


      ],

      ),
      ),
      ),
    );
  }
}

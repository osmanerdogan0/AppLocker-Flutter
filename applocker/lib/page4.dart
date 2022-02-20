import 'package:flutter/material.dart';

class AyarlarScreen extends StatelessWidget {
  const AyarlarScreen({Key? key}) : super(key: key);

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
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kilit Ekranı',style: TextStyle(color: const Color(0xff097969),fontSize: 20),),
              SizedBox(height: 12,),
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

                              child: Icon(Icons.lock_sharp,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Kilitleme Şekli',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),

                          SizedBox(height: 5,),

                          Row(
                            children: [
                              Text('Desen Kilidi',style: TextStyle(color: Colors.white54, fontSize: 14),),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),


              //

              SizedBox(height: 5,),

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

                              child: Icon(Icons.wifi_tethering,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Parmak İzi Desteği',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),

                          SizedBox(height: 5,),

                          Row(
                            children: [
                              Text('Kilidi açmak için parmak izini kullan',style: TextStyle(color: Colors.white54, fontSize: 14),),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

              //
              SizedBox(height: 5,),
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

                              child: Icon(Icons.access_alarm,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Kilit Sıklığı ',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),

                          SizedBox(height: 5,),

                          Row(
                            children: [
                              Text('Her zaman',style: TextStyle(color: Colors.white54, fontSize: 14),),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

              //
              SizedBox(height: 5,),


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

                              child: Icon(Icons.mail,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Güvenlik Maili',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),

                          SizedBox(height: 5,),

                          Row(
                            children: [
                              Text('mail@mail.com',style: TextStyle(color: Colors.white54, fontSize: 14),),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

              //
              SizedBox(height: 5,),
              //

              SizedBox(
                height: 1,
                child: Container(color: Colors.white12,),
              ),

              //
              SizedBox(height: 15,),

              Text('Ekstra Güvenlik',style: TextStyle(color: const Color(0xff097969),fontSize: 20),),

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

                              child: Icon(Icons.new_releases,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Yeni Uygulama Uyarısı',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),

                          SizedBox(height: 5,),

                          Row(
                            children: [
                              Text('Yeni yüklenen uygulamalar için uyarı ver',style: TextStyle(color: Colors.white54, fontSize: 14),),
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










              //
              SizedBox(height: 5,),
              //

              SizedBox(
                height: 1,
                child: Container(color: Colors.white12,),
              ),

              //
              SizedBox(height: 15,),

              Text('Şifreleri Sıfırla',style: TextStyle(color: const Color(0xff097969),fontSize: 20),),

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

                              child: Icon(Icons.password,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('PIN Oluşturun',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

              //

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

                              child: Icon(Icons.padding,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Deseni Sıfırla',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

              //

              //
              SizedBox(height: 5,),
              //

              SizedBox(
                height: 1,
                child: Container(color: Colors.white12,),
              ),

              //
              SizedBox(height: 15,),

              Text('Desen Ayarları',style: TextStyle(color: const Color(0xff097969),fontSize: 20),),

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

                              child: Icon(Icons.airplay,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Desen İzlerini Gizle',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),
                          SizedBox(height: 5,),

                          Row(
                            children: [
                              Text('Desen izleri görünür',style: TextStyle(color: Colors.white54, fontSize: 14),),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),

              //

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

                              child: Icon(Icons.vibration,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Deseni Titreşimi',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),
                          SizedBox(height: 5,),

                          Row(
                            children: [
                              Text('Titreşim açık',style: TextStyle(color: Colors.white54, fontSize: 14),),
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
              SizedBox(height: 5,),
              //

              SizedBox(
                height: 1,
                child: Container(color: Colors.white12,),
              ),

              //
              SizedBox(height: 15,),

              Text('Gizlilik Ayarları',style: TextStyle(color: const Color(0xff097969),fontSize: 20),),

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

                              child: Icon(Icons.security,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Gizlilik Ayarları',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),
                          SizedBox(height: 5,),

                          Row(
                            children: [
                              Text('Gizlilik ayarlarını görüntüleyin',style: TextStyle(color: Colors.white54, fontSize: 14),),
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

              //
              SizedBox(height: 5,),
              //

              SizedBox(
                height: 1,
                child: Container(color: Colors.white12,),
              ),

              //
              SizedBox(height: 15,),

              Text('Lisans Anahtarı',style: TextStyle(color: const Color(0xff097969),fontSize: 20),),

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

                              child: Icon(Icons.local_police,color: const Color(0xff097969),size: 24,)),
                        ],
                      ),
                      SizedBox(width: 5,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text('Lisansı Yönet',style: TextStyle(color: Colors.white, fontSize: 18),),
                          ],),
                          
                        ],
                      ),

                    ],
                  ),
                ),
              ),

              //

              //



            ],
          ),
        ),
      ),
    );
  }



}

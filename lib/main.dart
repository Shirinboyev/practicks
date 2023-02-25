import'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
 
 Widget chat (String image, String txt, ){
  return ListView(
    children:[ ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(image),),
      title: Text(txt),
    ),]
  );
 }
  Widget profil(String text ){
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
      Text(text)
      ],)
    ],);
  }
  Widget func(IconData icons ,String txt,){
    return  ListTile(
    onTap: () {
    },
      leading: Icon(icons),
      title: Text(txt),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        drawer: Drawer(backgroundColor: Color.fromARGB(255, 113, 219, 191),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Column(children: [
                  Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/sevgii.png'),
          fit: BoxFit.fill
          )),
                    width: 350,height: 150,
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 130),
                              child: Image.asset('images/avatar.png',scale: 6,),
                            ),
                          ],
                        ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20),
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Text("Shirinboyev G'ayrat",style: TextStyle(fontSize: 18 ,color: Colors.black, ),),
                               ],
                             ),
                             Row(
                               children: [
                                 Text('+998 97 395 67 07',style: TextStyle(color: Colors.black, fontSize: 16),),
                               ],
                             ),
                           ],
                         ),
                       ),
                      ],
                    ),
                  ),
                ],
                ),
              ),
              Expanded(
                flex:13,
                child: Container(color: Color.fromARGB(255, 119, 249, 160),
                child: ListView(
                  children: [ Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        func(Icons.people, 'Contacts'),
                        func(Icons.person, 'Contacts Changes'),
                        func(Icons.call, 'Calls'),
                        func(Icons.settings, 'Setting'),
                        func(Icons.chat, 'Chat Setting'),
                        func(Icons.settings_outlined, 'Telegram Setting')
                      ],
                    ),
                  ),
            ]),
                ))
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Telegram'),
          ),
          body: Container(child: 
          Column(
            children: [
              chat(('images/avatar.png'), 'shrsfbdbshkfjbvsjfbvsdfv'),
              chat(('images/sevgii.png'), 'Love'),
            ],
          )
          ),
          ),
    );
  }
}
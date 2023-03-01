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
  int scale = 0;
 Widget chat (String image, String txt,String sub , IconData? icon){
  return ListTile(
    onTap: () {
    },
    leading: CircleAvatar(backgroundImage: AssetImage(image),),
    title: Text(txt),
    subtitle: Text(sub),
    trailing: Icon(icon),
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
        backgroundColor:Color.fromARGB(255, 87, 66, 125),
        drawer: Drawer(backgroundColor: Color.fromARGB(255, 113, 219, 191),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Column(children: [
                  Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/profill.png'),
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
                flex:18,
                child: Container(color: Color.fromARGB(255, 119, 249, 160),
                child: ListView(
                  children: [ Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        chat('images/avatar.png', 'Shirinboyev G`ayrat', '', null),
                        func(Icons.plus_one, 'Add Account'),
                        Container(color: Colors.black,width: 500,height: 1,),
                        func(Icons.people, 'Contacts'),
                        func(Icons.person, 'Contacts Changes'),
                        func(Icons.call, 'Calls'),
                        func(Icons.settings, 'Setting'),
                        func(Icons.chat, 'Chat Setting'),
                        Container(color: Colors.black,width: 600,height: 1,),
                        func(Icons.settings_outlined, 'Telegram Setting'),
                        func(Icons.chat_bubble, 'New Chat'),
                        func(Icons.color_lens, 'Theme Setting'),
                        func(Icons.perm_contact_cal_sharp, 'Contact Special'),
                        func(Icons.people_alt, 'People Nearbay'),
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
          body: Container(
            child: SingleChildScrollView(
              child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  TextButton(onPressed: (){
                    int scale =1;
                    if(scale ==1){
                    }
                  }, child: Text('All')),
                  Container(color: Colors.black,width: 1,height: 40,),
                  TextButton(onPressed: (){}, child: Text('Secret')),
                  Container(color: Colors.black,width: 1,height: 40,),
                  TextButton(onPressed: (){}, child: Text('People')),
                  Container(color: Colors.black,width: 1,height:40,),
                  TextButton(onPressed: (){}, child: Text('Chat')),
                  Container(color: Colors.black,width: 1,height:40,),
                  TextButton(onPressed: (){}, child: Text('Channel')),
                  Container(color: Colors.black,width: 1,height:40,),
                  TextButton(onPressed: (){}, child: Text('Robot')),
                ],),
                Container(color: Colors.black,width: 500,height: 1,),
                chat(('images/javohir.png'), 'Javohir Jalolov', 'Assalomu Alaykum                                   09:17',Icons.done_all),
                Container(color: Colors.black,width: 500,height: 1,),
                chat(('images/adham.png'), 'Adham Niyozboyev', 'Qalesan Adham Yaxshimisan                  16:12', Icons.done), 
                Container(color: Colors.black,width: 500,height: 1,),
                chat(('images/rustam.png'), 'Rustam  Safarov', 'Ha Borayabman                                          14:24',Icons.done_all), 
                Container(color: Colors.black,width: 500,height: 1,),
                chat(('images/lochin.png'), 'Lochin  Rustamov', 'G`ayrat bir qarab yubor                              15:54',null),
                Container(color: Colors.black,width: 500,height: 1,),
                chat(('images/mirjalol.png'), 'Mirjalol Akam', 'Vo alaykum assalom                                  20:18',null),
                Container(color: Colors.black,width: 500,height: 1,),
                chat(('images/ruziboy.png'), 'Ro`ziboy Aka','Qandaysiz                                                    20:18',Icons.done),
                Container(color: Colors.black,width: 500,height: 1,),
                chat(('images/ozod.png'), 'Ozodbek Uka','Assalomu Alaykum                                    12:45',null),
                Container(color: Colors.black,width: 500,height: 1,),
                chat(('images/nurbek.png'), 'Nurbek Aka','Assalomu Alaykum                                    17:13',Icons.done),
                Container(color: Colors.black,width: 500,height: 1,),
                chat(('images/diyor.png'), 'Diyor Aka','Joined Telegram                                        18:45',null),
                Container(color: Colors.black,width: 500,height: 1,),
                chat(('images/javlon.png'), 'Javlon Akam','Assalomu Alaykum                                    12:45',Icons.done),
                Container(color: Colors.black,width: 500,height: 1,),
                chat(('images/usmon.png'), 'Usmon aka','Qlaesan                                                14:45',null),
                Container(color: Colors.black,width: 500,height: 1,),
               ],
              ),
            ) 
          ),
         ),
       );
     }
   }  
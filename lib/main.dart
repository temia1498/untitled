import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(topRight: Radius.elliptical(13,34),)

                ),
              )
            ],

      ),
            Row(


            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              ElevatedButton(
                child: Text("Press",textAlign: TextAlign.end,style: TextStyle(color:Colors.grey),),
                onPressed: (){
                print("pressed");
              },
              ),

              // TextButton(onPressed: (){}, child: Text()),

              IconButton(onPressed: (){
                print("icon button pressed");
              }, icon: Icon(Icons.remove_red_eye),),

              FloatingActionButton(onPressed: (){

              },child: Icon(Icons.add),),

              InkWell(
                child: Container(
                  color: Colors.red,
                  height: 150,
                  width: 150,
                  child: Center(
                    child: Text('container 1',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                    ),
                  ),
                ),
              ),
              Container(
                  color: Colors.green,
                  height: 100,
                  width: 100,
                child: Center(
                  child: Text('container 2',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                  ),
                ),

                ),
            ],

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
            color: Colors.blue,
            height: 150,
            width: 150,
            child: Center(
          child: Text('container 3',style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
          ),
    ),),
              Container(
                color: Colors.yellow,
                height: 150,
                width: 150,
                child: Center(
              child: Text('container 4',style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
              ),
    ),),
            ],
          ),
        ],
      ),

    );
  }
}
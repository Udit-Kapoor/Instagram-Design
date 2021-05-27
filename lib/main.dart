import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meethive/screen.dart';

void main() {
  runApp(MyApp());
}

const TextStyle black = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w700);
const TextStyle text1 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 10,
    color: Colors.black,
    fontWeight: FontWeight.w700);

const TextStyle name = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.w600);

const TextStyle user = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 13,
    color: Colors.grey,
    fontWeight: FontWeight.w600);

const TextStyle select = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 13,
    color: Color(0xFFFF455B),
    fontWeight: FontWeight.w500);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not estarted.
          primaryColor: Color(0xFFFF455B),
          fontFamily: 'Poppins'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget tile() {
    return ListTile(
      leading: CircleAvatar(
        radius: 30.0,
        backgroundImage: NetworkImage("https://picsum.photos/200"),
      ),
      title: Text(
        "name",
        style: name,
      ),
      subtitle: Text(
        "username",
        style: user,
      ),
      trailing: Container(
        width: 80,
        height: 35,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.elliptical(45, 45),
            )),
        child: Center(
            child: Text(
          "Select",
          style: select,
        )),
      ),
      horizontalTitleGap: 20.0,
    );
  }

  Widget selected(String name) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/200"))),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.cancel_rounded,
              color: Color(0xFFFF4E64),
              size: 30,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: text1,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color(0xFFFF455B),
          elevation: 5.0,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Screen()));
          },
          label: Container(
            width: queryData.size.width - 100,
            height: 20,
            child: Center(
              child: Text(
                "Invite Participants",
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w600),
              ),
            ),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // appBar: AppBar(
      //   leading: Icon(
      //     Icons.arrow_back,
      //     color: Colors.black,
      //   ),
      //   title: Text("Add Participants", style: black),
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      //   actions: [
      //     Icon(
      //       Icons.group_add,
      //       color: Colors.black,
      //     )
      //   ],
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                Text("Add Participants", style: black),
                Icon(
                  Icons.group_add,
                  color: Colors.black,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Container(
              height: 35,
              width: queryData.size.width,
              decoration: BoxDecoration(
                color: Color(0xFFF0F0F0),
                borderRadius: new BorderRadius.all(Radius.elliptical(45, 45)),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
                      hintText: "Search here... "),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Selected",
              style: name,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                selected("lanasmith"),
                SizedBox(
                  width: 20,
                ),
                selected("john"),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFFECEF),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Color(0xFFFF576B),
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Add",
                      style: text1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: queryData.size.width,
            height: 1,
            color: Color(0xFFD6D8DB),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              "Recents",
              style: name,
            ),
          ),
          Container(
            height: queryData.size.height - 400,
            child: ListView(
              children: [
                tile(),
                tile(),
                tile(),
                tile(),
                tile(),
                tile(),
                tile(),
                tile(),
                tile(),
                tile(),
                tile(),
              ],
            ),
          ),
          // Column(
          //   children: [
          //     Expanded(
          //       child: ListView(
          //         children: [
          //           ListTile(
          //             leading: Container(
          //               height: 50,
          //               width: 50,
          //               decoration: BoxDecoration(
          //                   shape: BoxShape.circle,
          //                   image: DecorationImage(
          //                       image:
          //                           NetworkImage("https://picsum.photos/200"))),
          //             ),
          //           )
          //         ],
          //       ),
          //     )
          //   ],
          // )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

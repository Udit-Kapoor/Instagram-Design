import 'package:flutter/material.dart';

const TextStyle black = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w700);
const TextStyle text1 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.w700);

const TextStyle name = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.w500);

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

class Screen extends StatefulWidget {
  Screen({
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
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int idx = 0;

  Widget showDynamicBody() {
    if (idx == 0) {
      return Text("Something here");
    } else if (idx == 1) {
      return Text("Screen 2");
    } else if (idx == 2) {
      return Text("Screen 3");
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.compass_calibration,
                color: Colors.grey,
              ),
              label: "com"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle,
                color: Color(0xFFFF566A),
              ),
              label: "add"),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
            label: "noti",
          ),
          BottomNavigationBarItem(
              icon: new Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
              label: "profile"),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                ),
                Text(
                  "uditkapoor",
                  style: text1,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: 30,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage("https://picsum.photos/200"),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "23",
                              style: text1,
                            ),
                            Text(
                              "Discussions",
                              style: user,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              "123.2k",
                              style: text1,
                            ),
                            Text(
                              "Followers",
                              style: user,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              "1.4M",
                              style: text1,
                            ),
                            Text(
                              "Following",
                              style: user,
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 200,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(45, 45))),
                      child: Center(
                        child: Text(
                          "Edit Profile",
                          style: text1,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Udit Kapoor",
              style: text1,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "efjoiewjf oif jof iewfiuw fjdsfhiushf iu dsfiu afi hsdiu fishfuihdsfh sdiu fh iudshfihsdifh sdiufh iuds lorem efjkewjf oeifdf onfods f nodsf dnfsd fkl",
                style: name,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "https://github.com/Udit-Kapoor",
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        idx = 0;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 5.0,
                                  color: idx == 0
                                      ? Color(0xFFFF5B6F)
                                      : Colors.white))),
                      height: 40,
                      child: Center(
                        child: Text(
                          "Published",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color:
                                  idx == 0 ? Color(0xFFFF5B6F) : Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        idx = 1;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 5.0,
                                  color: idx == 1
                                      ? Color(0xFFFF5B6F)
                                      : Colors.white))),
                      height: 40,
                      child: Center(
                        child: Text(
                          "Tagged",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color:
                                  idx == 1 ? Color(0xFFFF5B6F) : Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        idx = 2;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 5.0,
                                  color: idx == 2
                                      ? Color(0xFFFF5B6F)
                                      : Colors.white))),
                      height: 40,
                      child: Center(
                        child: Text(
                          "Draft",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color:
                                  idx == 2 ? Color(0xFFFF5B6F) : Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            showDynamicBody(),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

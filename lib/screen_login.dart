import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:map/screen_dashboard.dart';
import 'package:map/widget_slider.dart';

class LoginScreen extends StatelessWidget {
  int currentLanguage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 84,
                  width: 156,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      Text(
                        "Login",
                        style: Theme.of(context).textTheme.headline3.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Welcome back",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Colors.white),
                      ),
                    ],
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                  ),
                ),
                Container(
                  width: 164,
                  height: 32,
                  margin: EdgeInsets.only(right: 16),
                  child: TabSlideChoose(
                    names: ["English", "বাংলা"],
                    selection: (index) {},
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.white24,
                      spreadRadius: 8,
                      blurRadius: 8,
                      offset: Offset(0, 0))
                ],
              ),
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    height: 160,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 4,
                              blurRadius: 4,
                              offset: Offset(0, 0))
                        ],
                        borderRadius: BorderRadius.circular(8)),
                    child: ListView(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              border: InputBorder.none,
                              hintText: "Email"),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: .25,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              border: InputBorder.none,
                              hintText: "Password"),
                        ),
                      ],
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Forget Password",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .1),
                    height: 48,
                    child: RaisedButton(
                      color: Colors.black,
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(DashboardScreen().route);
                      },
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(72)),
                      child: Text(
                        "LOGIN",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Continue With Social Media",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        .copyWith(color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * .1),
                    height: 42,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(FontAwesomeIcons.github,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
                physics: ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

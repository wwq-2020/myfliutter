import 'package:flutter/material.dart';
import 'simple.dart';
import 'news.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}



class _MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin{

  TabController _bottomNavigationController;
  final List<Tab> _bottomTabs = <Tab>[
    Tab(text:"home",icon:Icon(Icons.home)),
    Tab(text:"history",icon:Icon(Icons.history)),
    Tab(text:"help",icon:Icon(Icons.help)),

  ];


  @override
  void initState() {
    super.initState();
    print("==========");
    _bottomNavigationController = TabController(length: _bottomTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _bottomNavigationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("mynews"), backgroundColor: Colors.blue),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("hej1988"),
              accountEmail: Text("hej1988@gmail.com"),
              currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                //backgroundImage:  ExactAssetImage("images/timg.jpeg"),
                backgroundImage:
                    NetworkImage("http://up.qqjia.com/z/25/tu32710_4.jpg"),
              )),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: ExactAssetImage("images/timg.jpeg"),
                  // image: NetworkImage("http://up.qqjia.com/z/25/tu32710_4.jpg")
                ),
              ),
            ),
            ListTile(
                title: Text("first sidebar"),
                trailing: new Icon(Icons.arrow_right),
                onTap: () => Navigator.of(context).pushNamed("/firstsidebar")),
            Divider(),
            ListTile(
                title: Text("close"),
                trailing: Icon(Icons.cancel),
                onTap: () => Navigator.of(context).pop()),
          ],
        ),
      ),
      body:TabBarView(
          controller: _bottomNavigationController,
          children: <Widget>[
           News(),
            Simple("tab2body"),
            Simple("tab3body"),



          ],),
      bottomNavigationBar: Material(
        color:Colors.blue,
        child:TabBar(
          controller: _bottomNavigationController,
          tabs: _bottomTabs,
          indicatorColor: Colors.red,
        )
      ),

    );
  }
}


//body: new TabBarView(^M
//129     ┆   ┆   ┆ controller: _bottomNavigation,^M
//130     ┆   ┆   ┆ children:  [      //注意顺序与TabBar保持一直^M
//131     ┆   ┆   ┆   new News(data: '参数值'),^M
//132     ┆   ┆   ┆   new TabPage2(),^M
//133     ┆   ┆   ┆   new TabPage3(),^M
//134     ┆   ┆   ┆ ]^M
//135     ┆   ┆   ),^M
//136     ┆   ┆ bottomNavigationBar: new Material(^M
//137     ┆   ┆   color: Colors.deepOrange,   //底部导航栏主题颜色^M
//138     ┆   ┆   child: new TabBar(^M
//139     ┆   ┆   ┆ controller: _bottomNavigation,^M
//140     ┆   ┆   ┆ tabs: _bottomTabs,^M
//141     ┆   ┆   ┆ indicatorColor: Colors.white, //tab标签的下划线颜色^M
//142     ┆   ┆   ),^M
//143             ^M
//144     ┆   ┆ ) ^M
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class NewsTab {
  String text;
  NewsList newsList;

  NewsTab(this.text,this.newsList);
}

class NewsList extends StatefulWidget  {
  String text;
  NewsList(this.text);
  @override
  _NewsListState createState() => _NewsListState();
}

//class _NewsListState extends State<NewsList> with AutomaticKeepAliveClientMixin{
  class _NewsListState extends State<NewsList>{// with AutomaticKeepAliveClientMixin{

@override
void initState() {
  print("22222222222");
    super.initState();
  }
//
//  @override
//  // TODO: implement wantKeepAlive
//  bool get wantKeepAlive => true;



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Center(child:Text(widget.text)),
    );
  }
}


class _NewsState extends State<News>  with SingleTickerProviderStateMixin{

  final List<NewsTab> myTabs=  <NewsTab>[
    NewsTab("新闻",NewsList("新闻")),
    NewsTab("娱乐",NewsList("娱乐")),
  ];
  TabController _tabController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blue,
        title: new TabBar(
        controller: _tabController,
            tabs: myTabs.map((NewsTab tab)=>Tab(text: tab.text)).toList(),
        ),
        ),
      body:TabBarView(
          controller:_tabController,
          children: myTabs.map((NewsTab tab)=> tab.newsList).toList()),
    );
  }
}

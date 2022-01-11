import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewScreen extends StatefulWidget {

  const NewScreen({ Key? key }) : super(key: key);

  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    TabController _tabController;
    ScrollController _scrollController;

    @override
    void initState() {
      _tabController = TabController(vsync: this, length: 4);
      _scrollController = ScrollController();
      super.initState();
    }

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Coming Soon",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold)),
            Row(
              children: [
                Icon(MaterialIcons.cast,color: Theme.of(context).colorScheme.secondary),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(2)
                  ),
                  child: Image.asset("assets/profile-1.png", fit: BoxFit.fill)
                )
              ],
            )
          ]
        )
      ),
    );
  }
}
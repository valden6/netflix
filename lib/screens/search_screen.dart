import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey.withOpacity(0.3)
                    ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                      cursorColor: Theme.of(context).colorScheme.secondaryVariant,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8.5),
                        prefixIconConstraints: const BoxConstraints(minWidth: 30),
                        border: InputBorder.none,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left:10, right: 10),
                          child: Icon(Feather.search, color: Colors.white.withOpacity(0.3), size: 15),
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.3),fontWeight: FontWeight.bold),
                      )
                    )
                  )
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Text("The most sought after",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold,fontSize: 15)),
                )
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
              ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                    
                  String userName = (index % 3 == 0) ? "Inception" : "Gran Torino";
                  String userImg = (index % 3 == 0) ? "assets/film-11.jpeg" : "assets/film-12.jpg";
                  
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: SizedBox(
                      height: 70,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(userImg),
                                  fit: BoxFit.fill
                                )
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(userName,style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold)),
                            )
                          ),
                          Expanded(
                            flex: 3,
                            child: Icon(AntDesign.playcircleo,color: Theme.of(context).colorScheme.secondary,size: 30),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        )
      )
    );
  }
}
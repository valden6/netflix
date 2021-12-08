import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 550,
                      child: Image.asset("assets/film-2.jpeg",fit: BoxFit.fill),
                    ),
                    Positioned(
                      bottom: 5,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Dystopian",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 18)),
                                const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                                CircleAvatar(backgroundColor: Theme.of(context).colorScheme.secondary,radius: 3),
                                const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                                Text("Unbelievable",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 18)),
                                const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                                CircleAvatar(backgroundColor: Theme.of(context).colorScheme.secondary,radius: 3),
                                const Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                                Text("Cyberpunk",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 18)),
                              ],
                            ),
                            const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Icon(Feather.plus,size: 20,color: Theme.of(context).colorScheme.secondary),
                                    const Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                                    Text("My list",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold))
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Theme.of(context).colorScheme.secondary
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Icon(FontAwesomeIcons.play,color: Theme.of(context).primaryColor,size: 15),
                                        const Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                                        Text("Play",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Icon(Feather.info,size: 20,color: Theme.of(context).colorScheme.secondary),
                                    const Padding(padding: EdgeInsets.symmetric(vertical: 1)),
                                    Text("Infos",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Text("My list",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold,fontSize: 20)),
                  )
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    itemCount: 8,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
          
                      String img = (index % 3 == 0) ? "assets/film-1.jpeg" : "assets/film-2.jpeg";
              
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Container(
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(3),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(img)
                            )
                          ),
                        )
                      );
                    }
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Text("Top 10 in France today",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold,fontSize: 20)),
                  )
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    itemCount: 10,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
          
                      String img = (index % 3 == 0) ? "assets/film-5.jpeg" : "assets/film-6.jpeg";
              
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: SizedBox(
                          width: 145,
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 110,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(3),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(img)
                                    )
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Text((index + 1).toString(),style: TextStyle(fontFamily: GoogleFonts.firaSans().fontFamily,fontSize: 100,foreground: Paint()..style = PaintingStyle.stroke..strokeWidth = 3..color = Theme.of(context).colorScheme.secondary)),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Text((index + 1).toString(),style: TextStyle(fontFamily: GoogleFonts.firaSans().fontFamily,fontSize: 100,color: Theme.of(context).primaryColor)),
                              )
                            ],
                          ),
                        )
                      );
                    }
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Text("Only on Netflix",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold,fontSize: 20)),
                  )
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                SizedBox(
                  height: 330,
                  child: ListView.builder(
                    itemCount: 5,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
          
                      String img = (index % 3 == 0) ? "assets/film-3.jpeg" : "assets/film-4.jpeg";
              
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Container(
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(3),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(img)
                            )
                          ),
                        )
                      );
                    }
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Text("Resume with Balou profile",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold,fontSize: 20)),
                  )
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    itemCount: 8,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
          
                      String img = (index % 3 == 0) ? "assets/film-7.jpeg" : "assets/film-8.jpeg";
              
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Column(
                          children: [
                            Container(
                              width: 110,
                              height: 140,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(3),topRight: Radius.circular(3)),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(img)
                                )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(25),
                                child: CircleAvatar(
                                  backgroundColor: Colors.black54,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 3),
                                    child: Icon(FontAwesomeIcons.play,color: Theme.of(context).colorScheme.secondary),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(3),bottomRight: Radius.circular(3)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Feather.info,color: Theme.of(context).colorScheme.secondary),
                                    Icon(FontAwesomeIcons.ellipsisV,color: Theme.of(context).colorScheme.secondary,size: 18),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
                      );
                    }
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: Text("Biggest hits on Netflix",style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontWeight: FontWeight.bold,fontSize: 20)),
                  )
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                SizedBox(
                  height: 180,
                  child: ListView.builder(
                    itemCount: 8,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
          
                      String img = (index % 3 == 0) ? "assets/film-9.jpeg" : "assets/film-10.jpeg";
              
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Container(
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(3),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(img)
                            )
                          ),
                        )
                      );
                    }
                  ),
                ),
              ],
            ),
            SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 35,
                          child: Image.asset("assets/netflix-logo.png")
                        ),
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
                      ],
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Series",style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
                        Text("Movies",style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
                        Row(
                          children: [
                            Text("Categories",style: TextStyle(color: Theme.of(context).colorScheme.secondary)),
                            Icon(MaterialIcons.arrow_drop_down,color: Theme.of(context).colorScheme.secondary,size: 25),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}
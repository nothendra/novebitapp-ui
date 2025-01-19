import 'package:flutter/material.dart';
import 'package:hendras_app/components/exports.dart';
import 'package:image_card/image_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // -------- SEARCH BAR --------
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: TextField(
                decoration: InputDecoration(
              labelText: 'Search...',
              hintText: 'Search for something',
              prefixIcon: Icon(Icons.search),
              filled: true,
              fillColor: const Color.fromARGB(149, 255, 255, 255),
              border: InputBorder.none,
            )),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 0, 123, 224),
                ),
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TransparentImageCard(
                  width: 150,
                  imageProvider: AssetImage('lib/assets/img/rpg.png'),
                  title: Text(
                    "RPG",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),  
                ),
                SizedBox(width: 5,),
                TransparentImageCard(
                  width: 150,
                  imageProvider: AssetImage('lib/assets/img/racing.png'),
                  title: Text(
                    "Racing",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),  
                ),
                SizedBox(width: 5,),
                TransparentImageCard(
                  width: 150,
                  imageProvider: AssetImage('lib/assets/img/openworldgames.png'),
                  title: Text(
                    "Open World",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),  
                ),
                SizedBox(width: 5,),
                TransparentImageCard(
                  width: 150,
                  imageProvider: AssetImage('lib/assets/img/adventure.png'),
                  title: Text(
                    "Adventure",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),  
                ),
                SizedBox(width: 5,),
                TransparentImageCard(
                  width: 150,
                  imageProvider: AssetImage('lib/assets/img/roguelike.png'),
                  title: Text(
                    "Rogue-like",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),  
                ),
                SizedBox(width: 5,),
                TransparentImageCard(
                  width: 150,
                  imageProvider: AssetImage('lib/assets/img/simulation.png'),
                  title: Text(
                    "Simulation",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),  
                ),
                SizedBox(width: 5,),
              ],
            ),
          ),
        )
      ],
    );
  }
}

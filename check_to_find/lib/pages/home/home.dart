import 'package:check_to_find/pages/home/widgets/category.dart';
import 'package:check_to_find/pages/home/widgets/header.dart';
import 'package:check_to_find/pages/home/widgets/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF5F67EA),
        body: SingleChildScrollView(
            child: Stack(children: [
              Transform(transform: Matrix4.identity()
                ..rotateZ(20),
                origin: const Offset(125, 10),
                child: Image.asset('assets/images/image1000_feuille.jpeg',
                    width: 200
                ),
              ),
              Positioned(
                right: 50,
                top: 100,
                child:
                Transform(transform: Matrix4.identity()
                  ..rotateZ(20),
                  origin: const Offset(150, 120),
                  child: Image.asset('assets/images/image1000_feuille.jpeg',
                      width: 200
                  ),
                ),
              ),
              Column(
                children: [
                  HeaderSection(),
                  SearchSection(),
                  CategorySection(),
                ],
              ),
              // pour espacer les deux images on crée un container vide
            ],)
        ),
        bottomNavigationBar: NavigationBar()
    );
  }

  Widget NavigationBar(){
    return Container(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            selectedItemColor: const Color(0xFF5F67EA),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.2),
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home_rounded,
                  size: 58,),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(Icons.search,
                  size: 58,),
              ),
              BottomNavigationBarItem(
                label: 'Share',
                icon: Icon(Icons.share_rounded,
                  size: 58,),
              ),
              BottomNavigationBarItem(
                label: 'Images',
                icon: Icon(Icons.image_search,
                  size: 58,),
              ),
            ],
          ),
        ),
      ),
    );
  }
  /*Widget NavigationBar(){
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
      BottomNavigationBarItem(
        label: 'home',
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: 'search',
        icon: Icon(Icons.search),
      ),
      BottomNavigationBarItem(
        label: 'poste',
        icon: Icon(Icons.post_add),
      ),
      BottomNavigationBarItem(
        label: 'home',
        icon: Icon(Icons.home),
      ),
    ]);
  }*/

}
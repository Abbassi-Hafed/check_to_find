import 'package:check_to_find/models/markt.dart';
import 'package:flutter/material.dart';

class PopularProduct extends StatelessWidget{
  PopularProduct({super.key});

  final List<Markt> markts = Markt.markts();

  @override
  Widget build(BuildContext context){
    return SizedBox(
      height: 250,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
            onTap: (() => print('Ob Tap')),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Hero(
                    tag: markts[index].name,
                    child: Image.asset(markts[index].bgImage),
                  ),
                ),
              )),
          )),
          separatorBuilder: ((context, index) => const SizedBox(width: 10,)),
          itemCount: markts.length),

    );

  }
}
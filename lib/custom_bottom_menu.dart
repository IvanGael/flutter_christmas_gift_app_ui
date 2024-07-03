import 'package:flutter/material.dart';

class CustomBottomMenu extends StatefulWidget {
  const CustomBottomMenu({super.key});

  @override
  State<CustomBottomMenu> createState() => _CustomBottomMenuState();
}

class _CustomBottomMenuState extends State<CustomBottomMenu> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 14,
      child: Container(
        width: 360,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: (){
                }, 
                icon: const Icon(
                  Icons.home_filled
                )
              ),
              IconButton(
                onPressed: (){
                }, 
                icon: const Icon(
                  Icons.home_filled
                )
              ),
              IconButton(
                onPressed: (){
                }, 
                icon: const Icon(
                  Icons.home_filled
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_app/views/widgets/CustomAppBar.dart';
import 'package:wallpaper_app/views/widgets/catBlock.dart';

import '../widgets/SearchBar.dart';
import 'fullScreen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title:CustomAppBar("Wallpaper","Hub"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Stack(
              children:[ 
                Image.network("https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              height:150,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                color: Colors.black38,
              ),
              Positioned(
                left:140,
                top:50,
                child: Column(
                  children: [
                    Text("Category",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20)),
                    Text("Mountains",style: TextStyle(color: Color.fromARGB(255, 16, 142, 167),fontWeight: FontWeight.w700,fontSize: 30))
                  ],
                ),
              ),
          ],
          ),
            SizedBox(height:20,),
            Container(
                                    height: MediaQuery.of(context).size.height,
                                    child: GridView.builder(physics: BouncingScrollPhysics(),
                                      gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        mainAxisExtent: 400,
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 13,
                                        mainAxisSpacing: 10
                                        ),
                                        itemCount: 16, 
                                        itemBuilder: (context,index)=> GridTile(
                                          child: InkWell(
                                             onTap: () {
                    },
                                            child: Container(
                                              height: 800,
                                              width:50,
                                              decoration: BoxDecoration(
                                                                  borderRadius: BorderRadius.circular(20),
                                                                  color:Colors.amberAccent,
                                              ),
                                              child: ClipRRect(
                                                                  borderRadius: BorderRadius.circular(20),
                                                                  child: Image.network("https://images.pexels.com/photos/7751835/pexels-photo-7751835.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                                                  height: 800,
                                                                  width:50,
                                                                  fit:BoxFit.cover,
                                                                
                                                                  ),
                                              )
                                            ),
                                          ),
                                        ),
                                    ),
                                  ),
          ],
        ),
      ),
    ); 
  }
}

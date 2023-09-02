import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hmbg/models/favourite_model.dart';

import 'boxes/boxes.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favourites'),
      ),
      body: ValueListenableBuilder<Box<FavouriteModel>>(
        valueListenable: Boxes.getData().listenable(),
        builder: (context,box,_){
          var data = box.values.toList().cast<FavouriteModel>();
          return ListView.builder(
            itemCount: box.length,
              shrinkWrap: true,
              itemBuilder: (context,index){
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: Image.network(data[index].image),
                            ),
                            Column(
                              children: [
                                Text(data[index].book.toString()+'. '+data[index].chapterNum.toString()+'.'+data[index].shlokaNum.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Spacer(),
                            InkWell(
                              onTap: (){
                                delete(data[index]);
                              },
                                child: Icon(Icons.favorite , color: Colors.red,)
                            )
                          ],

                        ),
                      ],
                    ),
                  ),
                );
              }
          );
        },
      ),
    );
  }
}

void delete(FavouriteModel favouriteModel) async{
  await favouriteModel.delete();
}

import 'package:backstage/constants.dart';
import 'package:backstage/details_screen.dart';
import 'package:backstage/sample_data.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => 
                    DetailsScreen(equipmentItem: EquipmentItem()),
                    ),);
                  },
      child: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
              childAspectRatio: 0.8,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                  padding: EdgeInsets.fromLTRB(7.0, 0.0, 7.0, 4.0),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    equipments[index].title,
                     style: kTitleTextStyle,
                     ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:NetworkImage(equipments[index].imageUrl[0]),
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter,
                    ),
                    shape: BoxShape.rectangle,
                    boxShadow:[BoxShadow(color: Colors.indigo[400])],
                  ),
                ),
                ),
               );
              },
              childCount: equipments.length,
            ),
          ),
        ],
      ),
    );
  }                        
}
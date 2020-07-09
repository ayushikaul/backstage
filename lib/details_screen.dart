import 'package:flutter/material.dart';
import './sample_data.dart';
 
class DetailsScreen extends StatelessWidget {
final EquipmentItem equipmentItem;
const DetailsScreen ({Key key, this.equipmentItem}): super(key : key); 
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo[200],
        elevation : 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()=> Navigator.pop(context),
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20.0,
                    right: 20.0,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(8.0)),
                      Text(
                      equipments.toString(),
                     style: TextStyle(height: 1.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}
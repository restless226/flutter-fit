import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/models/gym_model.dart';
import '../data/gym_data.dart';

class SubModuleWidgetGym extends StatefulWidget {
  final String ID;

  SubModuleWidgetGym(this.ID);

  @override
  _SubModuleWidgetGymState createState() => _SubModuleWidgetGymState();
}

class _SubModuleWidgetGymState extends State<SubModuleWidgetGym> {
  @override
  Widget build(BuildContext context) {
    List<Gym?>? _gymList = GYM_DATA.where((element) {
      return element.id!.contains(widget.ID);
    }).toList();

    print("printing LIST...");
    for (int i = 0; i < _gymList.length; i++) {
      print(_gymList.elementAt(i)?.id);
      print(_gymList.elementAt(i)?.title);
      print(_gymList.elementAt(i)?.equipment);
      print(_gymList.elementAt(i)?.muscle);
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          (_gymList.elementAt(0)?.title).toString(),
          style: TextStyle(
              color: Theme.of(context).accentColor,
              fontSize: 15,
              fontFamily: 'QuickSand',
              fontWeight: FontWeight.bold),
        )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1.3,
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NETWORK IMAGE
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13),
                    topRight: Radius.circular(13),
                    bottomRight: Radius.circular(13),
                    bottomLeft: Radius.circular(13),
                  ),
                  // clipBehavior: Clip.hardEdge,
                  child: Center(
                    child: Image.network(
                      (_gymList.elementAt(0)?.imageUrl).toString(),
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      // height: 180,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Divider(
                        thickness: 1,
                        color: Theme.of(context).accentColor,
                      ),

                      //TITLE
                      Text(
                        'Title : ',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),

                      Text(
                        (_gymList.elementAt(0)?.title).toString(),
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontFamily: 'Quicksand',
                            // fontWeight: FontWeight.bold,
                            fontSize: 15),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),

                      Divider(
                        thickness: 1,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        height: 8,
                      ),

                      // DIFFICULTY
                      Text(
                        'Difficulty : ',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),

                      Text(
                        (_gymList.elementAt(0)?.difficulty).toString(),
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontFamily: 'Quicksand',
                            // fontWeight: FontWeight.bold,
                            fontSize: 15),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),

                      Divider(
                        thickness: 1,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        height: 8,
                      ),

                      // MUSCLE
                      Text(
                        'Muscle : ',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),

                      Text(
                       ( _gymList.elementAt(0)?.muscle).toString(),
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontFamily: 'Quicksand',
                            // fontWeight: FontWeight.bold,
                            fontSize: 15),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),

                      Divider(
                        thickness: 1,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        height: 8,
                      ),

                      // EQUIPMENT
                      Text(
                        'Equipments : ',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),

                      Text(
                        (_gymList.elementAt(0)?.equipment).toString(),
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontFamily: 'Quicksand',
                            // fontWeight: FontWeight.bold,
                            fontSize: 15),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),

                      Divider(
                        thickness: 1,
                        color: Theme.of(context).accentColor,
                      ),
                      SizedBox(
                        height: 8,
                      ),

                      // DESCRIPTION
                      Text(
                        'Description : ',
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _gymList[0]?.description?.length,
                      itemBuilder: (context, index) {
                        print(_gymList[0]?.description![index]);
                        print('');
                        return Text(
                          _gymList[0]?.description?.length != 0
                              // ? Text((index+1).toString(),style: TextStyle(fontWeight: FontWeight.bold),)
                              //   .toString()
                              ? (index + 1).toString() +
                                  '. ' +
                                  (_gymList[0]?.description![index]).toString()
                              : 'description is null',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontFamily: 'Quicksand',
                            fontSize: 15,
                            // decoration: TextDecoration.underline,
                          ),
                        );
                        // return Text(_gymList[0].description[index]);
                      },
                    ),
                  ),
                ),

                Divider(
                  thickness: 1,
                  color: Theme.of(context).accentColor,
                ),
                SizedBox(
                  height: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/data/cardio_data.dart';
import 'package:pbl_fitness_app/models/cardio_model.dart';

class SubModuleWidgetCardio extends StatefulWidget {
  final String ID;

  SubModuleWidgetCardio(this.ID);

  @override
  _SubModuleWidgetCardioState createState() => _SubModuleWidgetCardioState();
}

class _SubModuleWidgetCardioState extends State<SubModuleWidgetCardio> {
  @override
  Widget build(BuildContext context) {
    List<Cardio?>? _cardioList = CARDIO_DATA.where((element) {
      return element.id!.contains(widget.ID);
    }).toList();

    print("printing LIST...");
    for (int i = 0; i < _cardioList.length; i++) {
      print(_cardioList.elementAt(i)?.id);
      print(_cardioList.elementAt(i)?.title);
      print(_cardioList.elementAt(i)?.equipment);
    }

    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          (_cardioList.elementAt(0)?.title).toString(),
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
            height: MediaQuery.of(context).size.height * 1.5,
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
                      (_cardioList.elementAt(0)?.imageUrl).toString(),
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: 250,
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
                        (_cardioList.elementAt(0)?.title).toString(),
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
                        (_cardioList.elementAt(0)?.difficulty).toString(),
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
                        (_cardioList.elementAt(0)?.equipment).toString(),
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
                    ],
                  ),
                ),

                // DESCRIPTION
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
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
                ),

                //TODO
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      itemCount: _cardioList[0]?.description?.length,
                      itemBuilder: (context, index) {
                        print(_cardioList[0]?.description![index]);
                        print('');
                        return Text(
                          _cardioList[0]?.description?.length != 0
                              ? (index + 1).toString() +
                                  '. ' +
                                  (_cardioList[0]?.description![index]).toString()
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

                // BENEFITS
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Benefits : ',
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
                ),

                //TODO
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _cardioList[0]?.benefits?.length,
                      itemBuilder: (context, index) {
                        print(_cardioList[0]?.benefits![index]);
                        print('');
                        return Text(
                          _cardioList[0]?.benefits?.length != 0
                              ? (index + 1).toString() +
                                  '. ' +
                                  (_cardioList[0]?.benefits![index]).toString()
                              : 'benefits null',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontFamily: 'Quicksand',

                            fontSize: 15,
                            // decoration: TextDecoration.underline,
                          ),
                        );
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

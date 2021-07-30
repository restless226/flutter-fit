import 'package:flutter/material.dart';
import 'package:pbl_fitness_app/models/yoga_model.dart';
import 'package:pbl_fitness_app/data/yoga_data.dart';

class SubModuleWidgetYoga extends StatefulWidget {

  final String ID;

  SubModuleWidgetYoga(@required this.ID,);

  @override
  _SubModuleWidgetYogaState createState() => _SubModuleWidgetYogaState();
}

class _SubModuleWidgetYogaState extends State<SubModuleWidgetYoga> {
  @override
  Widget build(BuildContext context) {
    List<Yoga> _yogaList=YOGA_DATA.where((element){
      return element.id.contains(widget.ID);
    }).toList();


    print("printing LIST...");
    for(int i=0;i<_yogaList.length;i++){
      print(_yogaList.elementAt(i).id);
      print(_yogaList.elementAt(i).title);
      print(_yogaList.elementAt(i).category);
    }



    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              _yogaList.elementAt(0).title,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'QuickSand',
                  fontWeight: FontWeight.bold
              ),
            )
        ),
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*1.3,
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


                // ASSET IMAGE
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(13),
                    topRight: Radius.circular(13),
                    bottomRight: Radius.circular(13),
                    bottomLeft: Radius.circular(13),
                  ),
                  // clipBehavior: Clip.hardEdge,
                  child: Center(
                    child: Image.asset(
                      _yogaList.elementAt(0).imageUrl,
                      fit: BoxFit.cover,
                      width:MediaQuery.of(context).size.width,
                      // height: 180,
                    ),
                  ),
                ),




                Padding(
                  padding: EdgeInsets.all(4),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Divider(thickness: 1,color: Theme.of(context).accentColor,),



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
                        _yogaList.elementAt(0).title,
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontFamily: 'Quicksand',
                            // fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),


                      Divider(thickness: 1,color: Theme.of(context).accentColor,),
                      SizedBox(height: 8,),

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
                        _yogaList.elementAt(0).difficulty,
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontFamily: 'Quicksand',
                            // fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),


                      Divider(thickness: 1,color: Theme.of(context).accentColor,),
                      SizedBox(height: 8,),




                      //CATEGORY
                      Text(
                        'Category : ',
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
                        _yogaList.elementAt(0).category,
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontFamily: 'Quicksand',
                            // fontWeight: FontWeight.bold,
                            fontSize: 15
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),

                      Divider(thickness: 1,color: Theme.of(context).accentColor,),
                      SizedBox(height: 8,),

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



                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _yogaList[0].description.length,
                      itemBuilder: (context,index){
                        print(_yogaList[0].description[index]);
                        print('');
                        return Text(_yogaList[0].description.length!=0
                            ? (index+1).toString()+'. '+_yogaList[0].description[index]
                            :'description is null',
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


                Divider(thickness: 1,color: Theme.of(context).accentColor,),
                SizedBox(height: 4,),

                //BENEFITS
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


                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: _yogaList[0].benefits.length,
                      itemBuilder: (context,index){
                        print(_yogaList[0].benefits[index]);
                        print('');
                        return Text(_yogaList[0].benefits.length!=0
                            ? (index+1).toString()+'. '+_yogaList[0].benefits[index]
                            :'description is null',
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

                Divider(thickness: 1,color: Theme.of(context).accentColor,),
                SizedBox(height: 4,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

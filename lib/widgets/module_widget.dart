import 'package:flutter/material.dart';

class ModuleWidget extends StatefulWidget {

  final Widget _widget;
  final String _buttonText;
  final String _imageUrl;
  ModuleWidget(this._widget,this._buttonText,this._imageUrl);

  @override
  _ModuleWidgetState createState() => _ModuleWidgetState();
}

class _ModuleWidgetState extends State<ModuleWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            // color: Colors.grey,
            border: Border.all(
              //TODO
              color: Theme.of(context).primaryColor,
              width: 2,
            ),

            // border: Border(
            //   top: BorderSide(width: 2, color: Colors.deepPurple),
            //   bottom: BorderSide(width: 2, color: Colors.deepPurple),
            //   right: BorderSide(width: 2, color: Colors.deepPurple),
            //   left: BorderSide(width: 2, color: Colors.deepPurple)
            // ),
            borderRadius: BorderRadius.circular(15),
          ),

          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Column(
                children: [
                  ClipRRect(

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                    // clipBehavior: Clip.hardEdge,
                    child: Center(

                      child: Image.asset(
                        widget._imageUrl,
                        fit: BoxFit.cover,
                        width:MediaQuery.of(context).size.width,
                        height: 220,
                      ),
                    ),
                  ),
                  // Divider(thickness: 2,color: Colors.deepPurple,),
                ],
              ),

              // Container(
              //
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.only(
              //             topLeft: Radius.circular(13),
              //             topRight: Radius.circular(13),
              //     ),
              //     // clipBehavior: Clip.hardEdge,
              //     child: Center(
              //       child: Image.asset(
              //           _imageUrl,
              //           fit: BoxFit.cover,
              //           width:MediaQuery.of(context).size.width,
              //           height: 150,
              //       ),
              //     ),
              //   ),
              // ),

              // Divider(thickness: 2,color: Colors.deepPurple,),

              Padding(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: Text(
                      widget._buttonText,
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    softWrap: true,
                    // overflow: TextOverflow.fade,
                    ),
                ),
              ),
              // Image.asset('',B)
              SizedBox(height: 5,),


            ],
          ),

        ),

        onTap: (){
          Navigator.push(
              context,MaterialPageRoute(builder: (BuildContext context) => widget._widget));
        },
      ),
    );

      RaisedButton(
      onPressed: (){
        Navigator.push(
            context,MaterialPageRoute(builder: (BuildContext context) => widget._widget));
      },
      color: null,
      child: Center(child: Text(widget._buttonText)),
    );
  }
}

import 'package:flutter/material.dart';

class ModuleWidgetCardio extends StatefulWidget {
  final Widget _widget;
  final String _buttonText;
  final String _imageUrl;

  ModuleWidgetCardio(this._widget, this._buttonText, this._imageUrl);

  @override
  _ModuleWidgetCardioState createState() => _ModuleWidgetCardioState();
}

class _ModuleWidgetCardioState extends State<ModuleWidgetCardio> {
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
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
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
                      child: Image.network(
                        widget._imageUrl,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                        height: 220,
                      ),
                    ),
                  ),
                  // Divider(thickness: 2,color: Colors.deepPurple,),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Center(
                  child: Text(
                    widget._buttonText,
                    style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    softWrap: true,
                    // overflow: TextOverflow.fade,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => widget._widget));
        },
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeBuilder extends StatefulWidget {

  final Widget Function(BuildContext context, Brightness brightness) builder;

  // DEFAULT PARAMETER
  final Brightness defaultBrightness;

  ThemeBuilder({this.builder,this.defaultBrightness});

  // TO ACCESS THEME OBJECT WE NEED A STATIC OBJECT HERE IN THIS CLASS. HENCE:
  static _ThemeBuilderState of(BuildContext context){
    return context.ancestorStateOfType(const TypeMatcher<_ThemeBuilderState>());
  }

  @override
  _ThemeBuilderState createState() => _ThemeBuilderState();

}


class _ThemeBuilderState extends State<ThemeBuilder> {

  Brightness _brightness;

  @override
  void initState() {
    // TODO: implement initState

    _brightness=widget.defaultBrightness;

    if(mounted){
      setState(() {

      });
    }

    super.initState();
  }


  void changeTheme(){
    setState(() {
      if(_brightness==Brightness.dark){
        _brightness=Brightness.light;
      }else{
        _brightness=Brightness.dark;
      }
    });
  }


  Brightness getCurrentTheme(){
    return _brightness;
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context,_brightness);
  }
}

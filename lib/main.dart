import 'package:bloc_one/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Bloc App',
      theme: ThemeData(
        primaryColor: Colors.lightBlueAccent,

      ),
      home: ShowScreen(),
    ),
  );
}

class ShowScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShowScreenState();
  }
}

class _ShowScreenState extends State<ShowScreen> {
  final colorBloc = ColorshapeBloc();
  Color coloured;
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Container(
        margin: EdgeInsets.all(4.0),
        padding: EdgeInsets.all(4.0),
        child: BlocBuilder(
          bloc: colorBloc,
          builder: (BuildContext context, ColorshapeState state) {
            if(state is RedColorState) {
              coloured = Colors.red;
            }
            else coloured = Colors.green;
            return buildColumn(coloured);
            
          },
        ),
      ),
    );
  }

  Column buildColumn(Color colourr) {
    return Column(
          children: <Widget>[
            Container(
              height: 200.0,
              width: 200.0,
              color: colourr,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                    child: Text('Red'),
                    onPressed: () {
                      colorBloc.dispatch(ChangeColor(1));
                    }),
                RaisedButton(
                    child: Text('Green'),
                    onPressed: () {
                      colorBloc.dispatch(ChangeColor(0));
                    }),
              ],
            )
          ],
        );
  }

  @override
  void dispose() {
    super.dispose();
    colorBloc.dispose();
  }
}

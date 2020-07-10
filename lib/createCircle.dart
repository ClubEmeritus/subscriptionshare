import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Create Circle')),
      body: CircleCreationForm(),
    );
  }
}

class CircleCreationForm extends StatefulWidget {
  CircleCreationForm({Key key});

  @override
  _CircleCreationForm createState() => _CircleCreationForm();
}

class _CircleCreationForm extends State<CircleCreationForm> {
  TextEditingController circleNameController = TextEditingController();
  TextEditingController circleTotalSubscriptionAmountController =
      TextEditingController();

  @override
  void dispose() {
    circleNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(45.0),
          child: TextField(
            controller: circleNameController,
            onChanged: (v) => circleNameController.text = v,
            decoration: InputDecoration(labelText: 'Circle Name'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Builder(
            builder: (context) {
              return RaisedButton(
                onPressed: () => print('PRESSED'),
                color: Colors.blueGrey,
                child: Text('Create Circle'),
              );
            },
          ),
        )
      ],
    );
  }
}

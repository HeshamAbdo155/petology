import 'package:flutter/material.dart';
import 'package:petology/components/default_container.dart';

class DropButton extends StatelessWidget {
  const DropButton({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Color(0xff492F24),
          ),
        ),
        SizedBox(height: 20.0),
        DefaultContainer(
          rightPad: 10.0,
          bottomPad: 15.0,
          width: 255.0,
          height: 70.0,
          radius: 15.0,
          borderWidth: 0.5,
          elevation: 1.0,
          child: DropdownButton<String>(
            underline: Container(),
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Color(0xff492F24),
            ),
            iconSize: 40.0,
            isExpanded: true,
            dropdownColor: Colors.white,
            items: <String>['Egypt', 'Brazil', 'France', 'Australia']
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (selectedCounty) {},
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:petology/components/default_button.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard({
    Key? key,
    required this.image,
    required this.name,
    this.colorCard = Colors.transparent,
    this.widthBorder = 0.3,
    this.colorBorder = Colors.transparent,
    this.colorButton = Colors.white,
    this.textButtonColor,
    this.widthButton = 5.0,
    this.colorButtonBorder = Colors.transparent,
    this.bottomName,
    this.bottom = false,
  }) : super(key: key);

  final String image;
  final String name;
  final Color colorCard;
  final double widthBorder;
  final Color colorBorder;
  final Color colorButton;
  final Color? textButtonColor;
  final double widthButton;
  final Color colorButtonBorder;
  final String? bottomName;
  final bool bottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470,
      width: 310,
      decoration: BoxDecoration(
        color: colorCard,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(width: widthBorder, color: colorBorder),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            child: Image.asset('assets/images/$image.png'),
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff492F24),
            ),
          ),
          SizedBox(height: 20),
          DefaultButton(
            onPress: () {},
            height: 62,
            width: 225,
            buttonColor: colorButton,
            radius: 28.0,
            title: '    Read more',
            textColor: textButtonColor!,
            fontWeight: FontWeight.bold,
            borderColor: colorButtonBorder,
            borderWidth: widthButton,
          ),
          SizedBox(height: 10.0),
          bottom
              ? Column(
                  children: [
                    Text(
                      'By $bottomName',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff492F24),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      height: 5.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFFE3C5),
                      ),
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}

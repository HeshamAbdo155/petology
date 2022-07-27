import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/bottombar.dart';
import '../components/default_button.dart';
import '../components/default_container.dart';
import '../components/default_text_form.dart';

class RequestScreen extends StatelessWidget {
  RequestScreen({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var locationController = TextEditingController();
  var phoneController = TextEditingController();
  var colorController = TextEditingController();
  var nameController = TextEditingController();
  var descrepsionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Stack(
                children: [
                  AppBarView(
                    image: 'background-request',
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 180.0),
                      child: Container(
                        height: 2100,
                        width: 900,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(88),
                          border: Border.all(
                            width: 3.0,
                            color: const Color(0xff492F24),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 60.0,bottom: 110.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Request',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 55,
                                  color: Color(0xff492F24),
                                ),
                              ),
                              SizedBox(height: 60.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 40.0),
                                child: SizedBox(
                                  height: 320.0,
                                  child: Image.asset(
                                      'assets/images/dog-mask-request.png'),
                                ),
                              ),
                              SizedBox(height: 60.0),
                              DefaultContainer(
                                child: DefaultTextForm(
                                  label: 'Name',
                                  type: TextInputType.name,
                                  controller: nameController,
                                  validate: (String) {},
                                ),
                              ),
                              SizedBox(height: 50.0),
                              DefaultContainer(
                                leftPad: 50.0,
                                rightPad: 20.0,
                                topPad: 12.0,
                                child: DropdownButton<String>(
                                  hint: const Text(
                                    'Category',
                                    style: TextStyle(
                                      color: Color(0xff707070),
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  underline: Container(),
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xff492F24),
                                  ),
                                  iconSize: 45.0,
                                  isExpanded: true,
                                  dropdownColor: Colors.white,
                                  items: <String>[
                                    'Egypt',
                                    'Brazil',
                                    'France',
                                    'Australia'
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (selectedCounty) {},
                                ),
                              ),
                              SizedBox(height: 50.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultContainer(
                                    leftPad: 50.0,
                                    rightPad: 20.0,
                                    topPad: 12.0,
                                    width: 240.0,
                                    child: DropdownButton<String>(
                                      hint: const Text(
                                        'Year',
                                        style: TextStyle(
                                          color: Color(0xff707070),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      underline: Container(),
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Color(0xff492F24),
                                      ),
                                      iconSize: 45.0,
                                      isExpanded: true,
                                      dropdownColor: Colors.white,
                                      items: <String>[
                                        'Egypt',
                                        'Brazil',
                                        'France',
                                        'Australia'
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (selectedCounty) {},
                                    ),
                                  ),
                                  SizedBox(width: 120.0),
                                  DefaultContainer(
                                    leftPad: 50.0,
                                    rightPad: 20.0,
                                    topPad: 12.0,
                                    width: 240.0,
                                    child: DropdownButton<String>(
                                      hint: const Text(
                                        'Months',
                                        style: TextStyle(
                                          color: Color(0xff707070),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      underline: Container(),
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Color(0xff492F24),
                                      ),
                                      iconSize: 45.0,
                                      isExpanded: true,
                                      dropdownColor: Colors.white,
                                      items: <String>[
                                        'Egypt',
                                        'Brazil',
                                        'France',
                                        'Australia'
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (selectedCounty) {},
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 50.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultContainer(
                                    leftPad: 50.0,
                                    rightPad: 20.0,
                                    topPad: 12.0,
                                    width: 240.0,
                                    child: DropdownButton<String>(
                                      hint: const Text(
                                        'Size',
                                        style: TextStyle(
                                          color: Color(0xff707070),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      underline: Container(),
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Color(0xff492F24),
                                      ),
                                      iconSize: 45.0,
                                      isExpanded: true,
                                      dropdownColor: Colors.white,
                                      items: <String>[
                                        'Egypt',
                                        'Brazil',
                                        'France',
                                        'Australia'
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (selectedCounty) {},
                                    ),
                                  ),
                                  SizedBox(width: 120.0),
                                  DefaultContainer(
                                    leftPad: 50.0,
                                    rightPad: 20.0,
                                    topPad: 12.0,
                                    width: 240.0,
                                    child: DropdownButton<String>(
                                      hint: const Text(
                                        'Breed',
                                        style: TextStyle(
                                          color: Color(0xff707070),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      underline: Container(),
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Color(0xff492F24),
                                      ),
                                      iconSize: 45.0,
                                      isExpanded: true,
                                      dropdownColor: Colors.white,
                                      items: <String>[
                                        'Egypt',
                                        'Brazil',
                                        'France',
                                        'Australia'
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (selectedCounty) {},
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 50.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultContainer(
                                    leftPad: 50.0,
                                    rightPad: 20.0,
                                    topPad: 12.0,
                                    width: 240.0,
                                    child: DropdownButton<String>(
                                      hint: const Text(
                                        'Gender',
                                        style: TextStyle(
                                          color: Color(0xff707070),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      underline: Container(),
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Color(0xff492F24),
                                      ),
                                      iconSize: 45.0,
                                      isExpanded: true,
                                      dropdownColor: Colors.white,
                                      items: <String>[
                                        'Egypt',
                                        'Brazil',
                                        'France',
                                        'Australia'
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (selectedCounty) {},
                                    ),
                                  ),
                                  SizedBox(width: 120.0),
                                  DefaultContainer(
                                    leftPad: 50.0,
                                    rightPad: 20.0,
                                    topPad: 12.0,
                                    width: 240.0,
                                    child: DropdownButton<String>(
                                      hint: const Text(
                                        'Breed',
                                        style: TextStyle(
                                          color: Color(0xff707070),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      underline: Container(),
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Color(0xff492F24),
                                      ),
                                      iconSize: 45.0,
                                      isExpanded: true,
                                      dropdownColor: Colors.white,
                                      items: <String>[
                                        'Egypt',
                                        'Brazil',
                                        'France',
                                        'Australia'
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (selectedCounty) {},
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 50.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultContainer(
                                    leftPad: 50.0,
                                    rightPad: 20.0,
                                    topPad: 12.0,
                                    width: 240.0,
                                    child: DropdownButton<String>(
                                      hint: const Text(
                                        'Heir Lenght',
                                        style: TextStyle(
                                          color: Color(0xff707070),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      underline: Container(),
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Color(0xff492F24),
                                      ),
                                      iconSize: 45.0,
                                      isExpanded: true,
                                      dropdownColor: Colors.white,
                                      items: <String>[
                                        'Egypt',
                                        'Brazil',
                                        'France',
                                        'Australia'
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (selectedCounty) {},
                                    ),
                                  ),
                                  SizedBox(width: 120.0),
                                  DefaultContainer(
                                    leftPad: 50.0,
                                    rightPad: 20.0,
                                    topPad: 12.0,
                                    width: 240.0,
                                    child: DropdownButton<String>(
                                      hint: const Text(
                                        'Care & behavior',
                                        style: TextStyle(
                                          color: Color(0xff707070),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      underline: Container(),
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Color(0xff492F24),
                                      ),
                                      iconSize: 45.0,
                                      isExpanded: true,
                                      dropdownColor: Colors.white,
                                      items: <String>[
                                        'Egypt',
                                        'Brazil',
                                        'France',
                                        'Australia'
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (selectedCounty) {},
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 50.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  DefaultContainer(
                                    leftPad: 50.0,
                                    rightPad: 20.0,
                                    topPad: 12.0,
                                    width: 240.0,
                                    child: DropdownButton<String>(
                                      hint: const Text(
                                        'House Traind',
                                        style: TextStyle(
                                          color: Color(0xff707070),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      underline: Container(),
                                      icon: const Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: Color(0xff492F24),
                                      ),
                                      iconSize: 45.0,
                                      isExpanded: true,
                                      dropdownColor: Colors.white,
                                      items: <String>[
                                        'Egypt',
                                        'Brazil',
                                        'France',
                                        'Australia'
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (selectedCounty) {},
                                    ),
                                  ),
                                  SizedBox(width: 120.0),
                                  DefaultContainer(
                                    width: 240.0,
                                    child: DefaultTextForm(
                                      label: 'Color',
                                      type: TextInputType.name,
                                      controller: colorController,
                                      validate: (String) {},
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 35.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10.0, left: 28.0),
                                    child: Text(
                                      'Detect your current location',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff492F24),
                                      ),
                                    ),
                                  ),
                                  DefaultContainer(
                                    child: DefaultTextForm(
                                      label: 'Location',
                                      suffix: Icons.location_on,
                                      type: TextInputType.name,
                                      controller: locationController,
                                      validate: (String) {},
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 35.0),
                              DefaultContainer(
                                child: DefaultTextForm(
                                  label: 'Phone number',
                                  type: TextInputType.phone,
                                  controller: phoneController,
                                  validate: (String) {},
                                ),
                              ),
                              SizedBox(height: 35.0),
                              Expanded(
                                child: DefaultContainer(
                                  child: DefaultTextForm(
                                    label: 'Descrebsion',
                                    type: TextInputType.text,
                                    controller: descrepsionController,
                                    validate: (String) {},
                                  ),
                                ),
                              ),
                              SizedBox(height: 65.0),
                              DefaultButton(
                                onPress: () {},
                                height: 85,
                                width: 600,
                                fontSize: 30.0,
                                buttonColor: Color(0xff492F24),
                                radius: 35.0,
                                title: '   Send',
                                textColor: Color(0xffFFE3C5),
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80.0),
              BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}

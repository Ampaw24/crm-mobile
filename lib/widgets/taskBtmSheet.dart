// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, missing_required_param, no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:intl/intl.dart';

import '../Specs/colors.dart';
import '../Specs/text_field.dart';

void taskBottomSheet(BuildContext context) {
  String selectedValue = 'Select';
  List<String> options = [
    'Select',
    'No',
  ];
 

final _formKey = GlobalKey<FormState>();

  final TextEditingController _dateController = TextEditingController();
  double h = MediaQuery.of(context).size.height;
  showModalBottomSheet(
      enableDrag: T,
      isDismissible: T,
      isScrollControlled: T,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                color: WHITE,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            height: h * 0.80,
            child: ListView(
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 30,top: 25),
                        child: Text(
                          "Add Diary",
                          style: TextStyle(
                            fontSize: 17,
                            color: GITBLUE,
                            fontWeight: FontWeight.w900,
                          ),
                        )),
                    Container(
                      alignment: Alignment.center,
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.cancel,
                              color: GITBLUE,
                              size: 25,
                            )))
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "All fields are required",
                        style: TextStyle(
                          fontSize: 12,
                          color: RED,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    "Client",
                    style: TextStyle(
                      fontSize: 12,
                      color: GITBLUE,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),

                // Container(
                //   width: MediaQuery.of(context).size.width * 0.8,
                //   height: 50,
                //   margin: const EdgeInsets.symmetric(
                //     horizontal: 40,vertical: 15
                //   ),
                //   decoration: BoxDecoration(
                //     border: Border.all(color: DEEPGREY),
                //     borderRadius: BorderRadius.circular(8),
                //   ),
                //   child: DropdownButton<String>(
                //     value: selectedValue,
                     
                //     onChanged: (newValue) {
                //       // setState(() {
                //       //   selectedValue = newValue!;
                //       // });
                //     },
                //     items:
                //         options.map<DropdownMenuItem<String>>((String value) {
                //       return DropdownMenuItem<String>(
                //         value: value,
                //         child: Text(value),
                //       );
                //     }).toList(),
                //   ),
                // ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(
                        "Active Type",
                        style: TextStyle(
                          fontSize: 11,
                          color: GITBLUE,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: DEEPGREY),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButton<String>(
                    value: selectedValue,
                    onChanged: (newValue) {
                      // setState(() {
                      //   selectedValue = newValue!;
                      // });
                    },
                    items:
                        options.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(
                        "Percentage Completed",
                        style: TextStyle(
                          fontSize: 11,
                          color: GITBLUE,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: textFormField(
                      cursorColor: Colors.black,
                      prefixIconColor: Colors.blueAccent,
                      borderWidth: 2,
                      borderRadius: 10,
                      labelStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                      ),
                      keyboardType: TextInputType.multiline,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ]),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(
                        "Status",
                        style: TextStyle(
                          fontSize: 11,
                          color: GITBLUE,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 50,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: DEEPGREY),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButton<String>(
                    value: selectedValue,
                    onChanged: (newValue) {
                      // setState(() {
                      //   selectedValue = newValue!;
                      // });
                    },
                    items:
                        options.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(
                        "Hour",
                        style: TextStyle(
                          fontSize: 11,
                          color: GITBLUE,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child: textFormField(
                      cursorColor: Colors.black,
                      prefixIconColor: Colors.blueAccent,
                      borderWidth: 2,
                      borderRadius: 10,
                      labelStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                      ),
                      keyboardType: TextInputType.multiline,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly,
                      ]),
                ),
                SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: DEEPGREY),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Date',
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: () async {
                          DateTime? selectedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          );
                          if (selectedDate != null) {
                            _dateController.text =
                                DateFormat('yyyy-MM-dd').format(selectedDate);
                          }
                        },
                      ),
                    ),
                    controller: _dateController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please select your date of birth';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Text(
                        "Diary Details",
                        style: TextStyle(
                          fontSize: 11,
                          color: GITBLUE,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 40,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: DEEPGREY)),
                    height: 100,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    )),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 45,
                      width: 150,
                      decoration: BoxDecoration(
                          color: GITBLUE,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "Save Changes",
                        style: TextStyle(
                          fontSize: 13,
                          color: WHITE,
                          fontWeight: FontWeight.w900,
                        ),
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      });
}

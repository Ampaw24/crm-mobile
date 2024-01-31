// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, missing_required_param, no_leading_underscores_for_local_identifiers, unused_field, unused_local_variable, use_build_context_synchronously

import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:crm_mobile/Hive/boxe.dart';
import 'package:crm_mobile/Hive/todotask.dart';
import 'package:crm_mobile/Specs/colors.dart';
import 'package:crm_mobile/Specs/text.dart';
import 'package:crm_mobile/Specs/text_field.dart';
import 'package:crm_mobile/controllers/todocontrollers.dart';
import 'package:crm_mobile/widgets/texteditingdialog.dart';
import 'package:date_time_picker_widget/date_time_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  late bool _isLoading;

  @override
  Widget build(BuildContext context) {
    TextEditingController _taskController = TextEditingController();
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('d MMMM y').format(now);
    final reader = context.read<TodoController>();

    double w = MediaQuery.of(context).size.width;
    Color _color = Colors.blue;
    String d1 = '';
    String t1 = '';

    final _updateController = TextEditingController();

    Future addTaskSheet() {
      return showModalBottomSheet(
          elevation: 5,
          enableDrag: true,
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return Container(
              decoration: BoxDecoration(
                  color: WHITE,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15))),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .60,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 130),
                          child: Text(
                            "Add a Daily Todo",
                            style:
                                textStylespoppins(17, BLACK, FontWeight.w400),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            margin: const EdgeInsets.only(right: 25),
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue[50],
                            ),
                            child: Center(
                                child: Icon(
                              Ionicons.close,
                              color: Colors.blue,
                              size: 20,
                            )),
                          ),
                        )
                      ],
                    ),
                    Gap(15),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: textFormField(
                          controller: _taskController,
                          cursorColor: Colors.black,
                          prefixIcon: Ionicons.bookmark_outline,
                          prefixIconColor: Colors.blueAccent,
                          hintText: "Todo Description",
                          borderWidth: 2,
                          borderRadius: 10,
                          labelText: "Todo Description",
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: DateTimePicker(
                        type: DateTimePickerType.Date,
                        timeInterval: Duration(minutes: 15),
                        datePickerTitle: 'Add Todo Date',
                        timePickerTitle: 'Pick your preferred time',
                        timeOutOfRangeError: '',
                        is24h: false,
                        onDateChanged: (date) {
                          d1 = DateFormat('dd MMM, yyyy').format(date);
                        },
                        onTimeChanged: (time) {
                          t1 = DateFormat('hh:mm:ss aa').format(time);
                        },
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          todoBox.put(
                              'key_${_taskController.text}',
                              Todotask(
                                  title: _taskController.text,
                                  date: d1,
                                  time: t1,
                                  isCompleted: false));
                          _taskController.text = " ";
                          Navigator.pop(context);
                        });
                      },
                      child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 350,
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: <Color>[
                                Color(0xff2980b9),
                                Color(0xff6dd5fa),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text("Add Todo",
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: WHITE)),
                          )),
                    ),
                  ],
                ),
              ),
            );
          });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: AppBar(
          automaticallyImplyLeading: false,
          elevation: 10,
          centerTitle: true,
          actions: [
            GestureDetector(
              onTap: () => addTaskSheet(),
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(top: 18, right: 15),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(),
                  child: Icon(
                    Ionicons.add_circle,
                    size: 35,
                    weight: 39,
                    opticalSize: 30,
                    color: Colors.white,
                  ),
                ),
              ]),
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xff2980b9),
                  Color(0xff6dd5fa),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 30),
                  child: Text(
                    "Todo",
                    style: TextStyle(
                      fontSize: 20,
                      color: WHITE,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                  ),
                  child: Text(
                    formattedDate,
                    style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(210, 255, 255, 255),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(150),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: todoBox.length,
                itemBuilder: (context, index) {
                  Todotask task = todoBox.getAt(index);

                  return Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: ListTile(
                        leading: Icon(
                          Ionicons.checkmark_circle,
                          color: task.isCompleted ? Colors.blue : Colors.grey,
                          weight: 2.0,
                          size: 25,
                        ),
                        title: Text(
                          task.title,
                          style: TextStyle(
                              fontSize: 15,
                              decoration: task.isCompleted
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                              fontWeight: FontWeight.w400),
                        ),
                        subtitle: Text(task.date,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w200)),
                        trailing: SizedBox(
                          width: 100,
                          height: 40,
                          child: Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      todoBox.deleteAt(index);
                                    });
                                  },
                                  child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red[50],
                                      ),
                                      child: Icon(
                                        Ionicons.trash_sharp,
                                        color: Colors.red,
                                        size: 15,
                                      ))),
                              GestureDetector(
                                  onTap: () async {
                                    String currentTask = task
                                        .title; // Replace with your actual task data
                                    String? updatedTask = await showDialog(
                                      context: context,
                                      builder: (context) => TaskEditDialog(
                                          currentTask: currentTask),
                                    );

                                    if (updatedTask != null) {
                                      // Perform further actions with the updated task
                                     
                                    }
                                  },
                                  child: Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.green[50],
                                      ),
                                      child: Icon(
                                        Ionicons.pencil_sharp,
                                        color: Colors.green,
                                        size: 15,
                                      ))),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      task.isCompleted = true;
                                      Get.showSnackbar(GetSnackBar(
                                        duration: Duration(seconds: 2),
                                        backgroundColor:
                                            Colors.green[50] as Color,
                                        borderRadius: 10,
                                        messageText: Text(
                                          "Task Completed",
                                          style: GoogleFonts.robotoCondensed(
                                              color: Colors.green),
                                        ),
                                      ));
                                    });
                                  },
                                  child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.indigo[50],
                                      ),
                                      child: Icon(
                                        Ionicons.checkmark,
                                        color: Colors.indigo,
                                        size: 15,
                                      ))),
                            ],
                          ),
                        )),
                  );
                }),
          )
        ],
      ),
    );
  }
}

// void getDialog(Ar)async{
//    GlobalKey<ArtDialogState> _artDialogKey;
//   ArtDialogResponse response = await ArtSweetAlert.show(
//     artDialogKey: _artDialogKey,
//     context: context,
//     artDialogArgs: ArtDialogArgs(
//         title: "Submit your Github username!",
//         customColumns: [
//             Container(
//                 margin: EdgeInsets.only( bottom: 20.0 ),
//                 child: CupertinoTextField(
//                     controller: _textController,
//                 ),
//             )
//         ],
//         onConfirm: () async  {
//             _artDialogKey.currentState.showLoader();
//             var response = await http.get(Uri.parse('https://api.github.com/users/'+_textController.text));
//             if(response.statusCode!=200) {
//                 _artDialogKey.currentState.hideLoader();
//                 _artDialogKey.currentState.showErrors(["Request failed: Error"]);
//                 return;
//             }
//             var body = response.body;
//             var bodyJson = json.decode(body);
//             _artDialogKey.currentState.hideLoader();
//             _artDialogKey.currentState.closeDialog( data: { "image": bodyJson["avatar_url"] } );
//         },
//         onDispose: () {
//             _artDialogKey = GlobalKey<ArtDialogState>();
//         },
//     )
// );

// if (response == null) { return; }

// if (response.isTapConfirmButton) {
//     ArtSweetAlert.show(
//         context: context,
//         artDialogArgs: ArtDialogArgs(
//             customColumns: [
//                 Container(
//                     margin: EdgeInsets.only(bottom: 12.0),
//                     child: Image.network( response.data["image"]),
//                 )
//             ]
//         )
//     );
//     return;
// }

// }
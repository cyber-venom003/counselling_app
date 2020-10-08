import 'package:flutter/material.dart';

class ChoiceFilling extends StatefulWidget {
  @override
  _ChoiceFillingState createState() => _ChoiceFillingState();
}

class _ChoiceFillingState extends State<ChoiceFilling> {
  String examName = null;
  String categoryName = null;
  int yearVal = null;
  String courseName = null;
  String instituteType = null;
  String quota = null;
  bool disability = null;
  String seatPool = null;
  int rank = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('College Predictor'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DropdownButton<String>(
                    value: examName,
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem<String>(
                          value: 'jee',
                          child: Text('IIT JEE')
                      ),
                    ],
                    icon: Icon(Icons.arrow_drop_down),
                    onChanged: (String newVal){
                      setState(() {
                        examName = newVal;
                        print(examName);
                      });
                    },
                    hint: Text('Select Exam'),
                ),
                DropdownButton<int>(
                  value: yearVal,
                  items: <DropdownMenuItem<int>>[
                    DropdownMenuItem<int>(
                        value: 2019,
                        child: Text('2019')
                    ),
                    DropdownMenuItem<int>(
                        value: 2018,
                        child: Text('2018')
                    ),
                    DropdownMenuItem<int>(
                        value: 2017,
                        child: Text('2017')
                    ),
                  ],
                  icon: Icon(Icons.arrow_drop_down),
                  onChanged: (int newVal){
                    setState(() {
                      yearVal = newVal;
                      print(yearVal);
                    });
                  },
                  hint: Text('Select Year'),
                ),
                DropdownButton<String>(
                  value: courseName,
                  items: <DropdownMenuItem<String>>[
                    DropdownMenuItem<String>(
                        value: 'architecture',
                        child: Text('Architecture')
                    ),
                    DropdownMenuItem<String>(
                        value: 'engineering',
                        child: Text('Engineering')
                    ),
                    DropdownMenuItem<String>(
                        value: 'planning',
                        child: Text('Planning')
                    ),
                    DropdownMenuItem<String>(
                        value: 'science',
                        child: Text('Science')
                    )
                  ],
                  icon: Icon(Icons.arrow_drop_down),
                  onChanged: (String newVal) {
                    setState(() {
                      courseName = newVal;
                      print(courseName);
                    });
                  },
                  hint: Text('Select Course'),
                ),
                DropdownButton<String>(
                  value: instituteType,
                  items: <DropdownMenuItem<String>>[
                    DropdownMenuItem<String>(
                        value: 'iit',
                        child: Text('IIT')
                    ),
                    DropdownMenuItem<String>(
                        value: 'nit',
                        child: Text('NIT')
                    ),
                    DropdownMenuItem<String>(
                        value: 'iiit',
                        child: Text('IIIT')
                    ),
                    DropdownMenuItem<String>(
                        value: 'cfti',
                        child: Text('CFTI')
                    )
                  ],
                  icon: Icon(Icons.arrow_drop_down),
                  onChanged: (String newVal) {
                    setState(() {
                      instituteType = newVal;
                      print(instituteType);
                    });
                  },
                  hint: Text('Select Institute'),
                ),
                DropdownButton<String>(
                  value: quota,
                  items: instituteType == 'iit' || instituteType == 'iiit' ? <DropdownMenuItem<String>>[
                    DropdownMenuItem<String>(
                        value: 'ai',
                        child: Text('All India Quota')
                    )
                  ] : (instituteType == 'nit') ? <DropdownMenuItem<String>>[
                    DropdownMenuItem<String>(
                        value: 'hs',
                        child: Text('Home State Quota')
                    ),
                    DropdownMenuItem<String>(
                        value: 'os',
                        child: Text('Other State Quota')
                    ),
                    DropdownMenuItem<String>(
                        value: 'ap',
                        child: Text('Andhra Pradesh Quota')
                    ),
                    DropdownMenuItem<String>(
                        value: 'go',
                        child: Text('Goa Quota')
                    ),
                  ] : <DropdownMenuItem<String>>[
                    DropdownMenuItem<String>(
                      value: 'hs',
                      child: Text('Home State Quota')
                    ),
                    DropdownMenuItem<String>(
                      value: 'os',
                      child: Text('Other State Quota')
                    ),
                  ],
                  icon: Icon(Icons.arrow_drop_down),
                  onChanged: (String newVal) {
                    setState(() {
                      quota = newVal;
                      print(quota);
                    });
                  },
                  hint: Text('Select Quota'),
                ),
                DropdownButton<String>(
                    value: categoryName,
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem<String>(
                          value: 'gen',
                          child: Text('General')
                      ),
                      DropdownMenuItem<String>(
                          value: 'ews',
                          child: Text('General EWS')
                      ),
                      DropdownMenuItem<String>(
                          value: 'sc',
                          child: Text('Scheduled Caste')
                      ),
                      DropdownMenuItem<String>(
                          value: 'st',
                          child: Text('Scheduled Tribe')
                      )
                    ],
                    icon: Icon(Icons.arrow_drop_down),
                    onChanged: (String newVal) {
                      setState(() {
                        categoryName = newVal;
                        print(categoryName);
                      });
                    },
                    hint: Text('Select Category'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                        'Any disability?',
                        style: TextStyle(
                          fontSize: 17.5,
                          fontWeight: FontWeight.w500
                        )
                    ),
                    Text(
                        'Yes',
                        style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500
                        )
                    ),
                    Radio(
                      value: true,
                      groupValue: disability,
                      onChanged: (bool value) {
                        setState(() {
                          disability = value;
                        });
                      },
                    ),
                    Text(
                        'No',
                        style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500
                        )
                    ),
                    Radio(
                      value: false,
                      groupValue: disability,
                      onChanged: (bool value) {
                        setState(() {
                          disability = value;
                        });
                      },
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                        'Seat Pool:',
                        style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500
                        )
                    ),
                    Text(
                        'Gender Neutral',
                        style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500
                        )
                    ),
                    Radio(
                      value: 'Gender Neutral',
                      groupValue: seatPool,
                      onChanged: (String value) {
                        setState(() {
                          seatPool = value;
                        });
                      },
                    ),
                    Text(
                        'Female',
                        style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w500
                        )
                    ),
                    Radio(
                      value: 'Female Only',
                      groupValue: seatPool,
                      onChanged: (String value) {
                        setState(() {
                          seatPool = value;
                        });
                      },
                    ),
                  ],
                ),
                TextField(
                  //controller: _emailController,
                  onChanged: (value){
                    setState(() {
                      rank = int.parse(value);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter your rank",
                    icon: Icon(Icons.fact_check_rounded , color: Colors.blue , size: 22.5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(17.5)),
                      borderSide: BorderSide(color: Colors.blue , width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(17.5)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(17.5)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      onPressed: (){
                        print('Exam: $examName,'
                            'Course; $courseName, '
                            'Category: $categoryName, '
                            'Institue: $instituteType, '
                            'Quota: $quota, '
                            'Category: $categoryName,'
                            'Disability: $disability, '
                            'Seat Pool: $seatPool, '
                            'Rank: $rank'
                        );
                      },
                      child: Text(
                        "Analyse",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    FlatButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.redAccent,
                      onPressed: (){
                        setState(() {
                          examName = null;
                          courseName = null;
                          categoryName = null;
                          instituteType = null;
                          quota = null;
                          categoryName = null;
                          disability = null;
                          seatPool = null;
                          rank = 0;
                        });
                      },
                      child: Text(
                        "Reset",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';

class ScheduleRegistration extends StatefulWidget {
  ScheduleRegistration({Key? key}) : super(key: key);

  @override
  _ScheduleRegistrationState createState() => _ScheduleRegistrationState();
}

class _ScheduleRegistrationState extends State<ScheduleRegistration>
    with TickerProviderStateMixin {
  final isSelected = <bool>[false, false, false];

  String TapToExpandIt = '일정 유형';
  String Sentence = '응';
  bool isExpanded = true;
  bool _isChecked = false;
  late DatePickerController _controller;
  DateTime _selectedDate = DateTime.now();
  String _date = "날짜를 선택해 주세요.";
  String _time = "시간을 선택해 주세요.";

  @override
  void initState() {
    super.initState();
    _controller = DatePickerController(
        initialDateTime: DateTime.now(), minYear: 2011, maxYear: 2050);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '일정 등록',
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "완료",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Container(
                    alignment: Alignment.topLeft, child: Text("일정 제목 입력")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '일정 제목을 입력 해주세요.',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Container(
                    alignment: Alignment.topLeft, child: Text('어떤 분의 일정이신가요?')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: ToggleButtons(
                    borderRadius: BorderRadius.circular(4.0),
                    constraints: BoxConstraints(minHeight: 50.0),
                    isSelected: isSelected,
                    onPressed: (index) {
                      // Respond to button selection
                      setState(() {
                        isSelected[index] = !isSelected[index];
                      });
                    },
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text('공통'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text('본인'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text('상대방'),
                      )
                    ],
                  ),
                ),
              ),
              ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                children: [
                  InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.grey[30],
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: AnimatedContainer(
                      margin: EdgeInsets.symmetric(
                        horizontal: isExpanded ? 5 : 5,
                        vertical: 5,
                      ),
                      padding: EdgeInsets.all(20),
                      height: isExpanded ? 90 : 300,
                      curve: Curves.fastLinearToSlowEaseIn,
                      duration: Duration(milliseconds: 1200),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(isExpanded ? 10 : 0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                TapToExpandIt,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Icon(
                                isExpanded
                                    ? Icons.keyboard_arrow_down
                                    : Icons.keyboard_arrow_up,
                                color: Colors.black,
                                size: 27,
                              ),
                            ],
                          ),
                          isExpanded ? SizedBox() : SizedBox(height: 10),
                          AnimatedCrossFade(
                            firstChild: Text(
                              '',
                              style: TextStyle(
                                fontSize: 0,
                              ),
                            ),
                            secondChild: GridView.count(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              primary: false,
                              padding: const EdgeInsets.all(10),
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              crossAxisCount: 3,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  color: Colors.transparent,
                                  child: Column(children: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          isExpanded = !isExpanded;
                                        });
                                      },
                                      child: Column(
                                        children: [
                                          Image.asset('assets/images/그림01.jpg',
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  14),
                                          Text(
                                            "식사",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    )
                                  ]),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  color: Colors.transparent,
                                  child: Column(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            isExpanded = !isExpanded;
                                          });
                                        },
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              'assets/images/그림02.jpg',
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  14,
                                            ),
                                            Text("데이트",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12))
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  color: Colors.transparent,
                                  child: Column(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            isExpanded = !isExpanded;
                                          });
                                        },
                                        child: Column(
                                          children: [
                                            Image.asset(
                                                'assets/images/그림03.jpg',
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    14),
                                            Text("업무",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12)),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(0),
                                  color: Colors.transparent,
                                  child: Column(
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            isExpanded = !isExpanded;
                                          });
                                        },
                                        child: Column(
                                          children: [
                                            Image.asset(
                                                'assets/images/그림04.jpg',
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    14),
                                            Text(
                                              "기타",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            crossFadeState: isExpanded
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                            duration: Duration(milliseconds: 1200),
                            reverseDuration: Duration.zero,
                            sizeCurve: Curves.fastLinearToSlowEaseIn,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('시간'),
                    Row(
                      children: [
                        Text('하루종일'),
                        Checkbox(
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Text('시작'),
                  ),
                  TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          theme: DatePickerTheme(
                            containerHeight: 210.0,
                          ),
                          showTitleActions: true,
                          minTime: DateTime(2000, 1, 1),
                          maxTime: DateTime(2050, 12, 31), onConfirm: (date) {
                        print('confirm $date');
                        _date = '${date.year}년 ${date.month}월 ${date.day}일';
                        setState(() {});
                      }, currentTime: DateTime.now(), locale: LocaleType.ko);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Text(" $_date"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      DatePicker.showTimePicker(context,
                          theme: DatePickerTheme(
                            containerHeight: 210.0,
                          ),
                          showTitleActions: true, onConfirm: (time) {
                        print('confirm $time');
                        _time = '${time.hour}시 ${time.minute}분';
                        setState(() {});
                      }, currentTime: DateTime.now(), locale: LocaleType.ko);
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      " $_time",
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

              /* TextButton(
                  onPressed: () {
                    DatePicker.showDateTimePicker(

                        context,
                        showTitleActions: true,
                        minTime: DateTime(2020, 5, 5, 20, 50),
                        maxTime: DateTime(2020, 6, 7, 05, 09), onChanged: (date) {
                          print('change $date in time zone ' +
                              date.timeZoneOffset.inHours.toString());
                        }, onConfirm: (date) {
                          print('confirm $date');
                        }, locale: LocaleType.ko);
                  },
                  child: Text(
                    '시간 선택하기',
                    style: TextStyle(color: Colors.blue),
                  )), */
              /*

               Container(
                height: 150.0,
                alignment: Alignment.center,
                child: Text(
                  "$_selectedDate",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                ),
              ),
              ScrollDatePicker(
                  controller: _controller,
                  locale: DatePickerLocale.ko_kr,
                  pickerDecoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent, width: 2.0)),
                  config: DatePickerConfig(
                      isLoop: true,
                      selectedTextStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 17.0)),
                  onChanged: (value) {
                    setState(() {
                      _selectedDate = value;
                    });
                  })

               */
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Text('종료'),
                  ),
                  TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          theme: DatePickerTheme(
                            containerHeight: 210.0,
                          ),
                          showTitleActions: true,
                          minTime: DateTime(2000, 1, 1),
                          maxTime: DateTime(2050, 12, 31), onConfirm: (date) {
                            print('confirm $date');
                            _date = '${date.year}년 ${date.month}월 ${date.day}일';
                            setState(() {});
                          }, currentTime: DateTime.now(), locale: LocaleType.ko);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Text(" $_date"),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      DatePicker.showTimePicker(context,
                          theme: DatePickerTheme(
                            containerHeight: 210.0,
                          ),
                          showTitleActions: true, onConfirm: (time) {
                            print('confirm $time');
                            _time = '${time.hour}시 ${time.minute}분';
                            setState(() {});
                          }, currentTime: DateTime.now(), locale: LocaleType.ko);
                      setState(() {});
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      " $_time",
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

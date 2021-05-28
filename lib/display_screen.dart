import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Main_Screen extends StatefulWidget {
  @override
  _Main_ScreeState createState() => _Main_ScreeState();
}

class _Main_ScreeState extends State<Main_Screen> {
  String firstvalue = '1';
  String firsline_second = '5';

  String secondvalue = '1';
  String secondline_second = '5';
  String square_value = '0';

  void square_value_calculator() {
    int value = int.parse(secondvalue) - int.parse(firstvalue);
    value = (value / 2).toInt();
    setState(() {
      square_value = (int.parse(firstvalue) + value).toString();
    });
  }

  List<Widget> uilist = [
    SizedBox(
      height: 30,
      width: 20,
    ),
    SizedBox(
      height: 30,
      width: 20,
    ),
    SizedBox(
      height: 30,
      width: 20,
    ),
    SizedBox(
      height: 30,
      width: 20,
    ),
    SizedBox(
      height: 30,
      width: 20,
    ),
    SizedBox(
      height: 30,
      width: 20,
    ),
    SizedBox(
      height: 30,
      width: 20,
    ),
    SizedBox(
      height: 30,
      width: 20,
    ),
    SizedBox(
      height: 30,
      width: 20,
    ),
    SizedBox(
      height: 30,
      width: 20,
    ),
    SizedBox(
      height: 30,
      width: 20,
    ),
    SizedBox(
      height: 30,
      width: 20,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Piano - Display Screen',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black54),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose First Value',
                  // style: GoogleFonts.raleway(
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.w500,
                  //     color: Colors.black54),
                ),
                new DropdownButton<String>(
                  isExpanded: true,
                  value: firstvalue,
                  items: <String>[
                    '1',
                    '2',
                    '3',
                    '4',
                    '5',
                    '6',
                    '7',
                    '8',
                    '9',
                    '10'
                  ].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      firstvalue = value;
                      firsline_second = (int.parse(firstvalue) + 4).toString();
                      square_value_calculator();
                    });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Choose Second Value',
                  // style: GoogleFonts.raleway(
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.w500,
                  //     color: Colors.black54),
                ),
                new DropdownButton<String>(
                  isExpanded: true,
                  value: secondvalue,
                  items: <String>[
                    '1',
                    '2',
                    '3',
                    '4',
                    '5',
                    '6',
                    '7',
                    '8',
                    '9',
                    '10'
                  ].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      secondvalue = value;
                      secondline_second =
                          (int.parse(secondvalue) + 4).toString();
                      square_value_calculator();
                    });
                  },
                ),
                SizedBox(
                  height: 200,
                ),
                this._renderBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _renderBox() {
    return Stack(
      children: [
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 25,
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 25,
                )
              ],
            ),
            Row(
              children: [],
            ),
            Row(
              children: [
                Expanded(child: circle(1)),
                Expanded(child: circle(2)),
                Expanded(child: circle(3)),
                Expanded(child: circle(4)),
                Expanded(child: circle(5)),
                Expanded(child: circle(6)),
                Expanded(child: circle(7)),
                Expanded(child: circle(8)),
                Expanded(child: circle(9)),
                Expanded(child: circle(10)),
                Expanded(child: circle(11)),
                Expanded(child: circle(12)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Row(
                  children: [
                    Expanded(child: circle_second_line(1)),
                    Expanded(child: circle_second_line(2)),
                    Expanded(child: circle_second_line(3)),
                    Expanded(child: circle_second_line(4)),
                    Expanded(child: circle_second_line(5)),
                    Expanded(child: circle_second_line(6)),
                    Expanded(child: circle_second_line(7)),
                    Expanded(child: circle_second_line(8)),
                    Expanded(child: circle_second_line(9)),
                    Expanded(child: circle_second_line(10)),
                    Expanded(child: circle_second_line(11)),
                    Expanded(child: circle_second_line(12)),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: square_second(1)),
                    Expanded(child: square_second(2)),
                    Expanded(child: square_second(3)),
                    Expanded(child: square_second(4)),
                    Expanded(child: square_second(5)),
                    Expanded(child: square_second(6)),
                    Expanded(child: square_second(7)),
                    Expanded(child: square_second(8)),
                    Expanded(child: square_second(9)),
                    Expanded(child: square_second(10)),
                    Expanded(child: square_second(11)),
                    Expanded(child: square_second(12)),
                  ],
                ),
              ],
            )
          ],
        ),
        Container(
          child: Table(
            border: TableBorder.all(color: Colors.black, width: 2),
            children: [
              TableRow(children: uilist),
              TableRow(children: uilist),
              TableRow(children: uilist),
              TableRow(children: uilist),
              TableRow(children: uilist)
            ],
          ),
        )
      ],
    );
  }

  Widget circle(int index) {
    return Visibility(
      visible: index == int.parse(firstvalue) || index == int.parse(secondvalue)
          ? true
          : false,
      child: Container(
        key: ValueKey(index),
        child: Icon(
          Icons.circle,
          size: 20,
        ),
      ),
    );
  }

  Widget circle_second_line(int index) {
    return Visibility(
      visible: index == int.parse(firstvalue) || index == int.parse(secondvalue)
          ? true
          : false,
      child: Container(
        key: ValueKey(index),
        child: Icon(
          Icons.circle,
          size: 20,
        ),
      ),
    );
  }

  Widget square_second(int index) {
    return Visibility(
      visible: index == int.parse(square_value) ? true : false,
      child: Padding(
        padding: const EdgeInsets.only(left: 05, right: 5),
        child: Container(
          height: 20,
          width: 10,
          color: Colors.black,
          key: ValueKey(index),
          child: SizedBox(),
        ),
      ),
    );
  }
}

/*

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                children: [
                  Text("일정 유형"),
                  TextButton(
                    onPressed: () => setState(() => _showManual = !_showManual),
                    child: Text('일정을 선택해 주세요!'),
                  ),
                ],
              ),
            ),
            ExpandableWidget.manual(
              expand: _showManual,
              vsync: this,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  border: Border.all(
                    color: Colors.black38,
                    width: 1,
                  ),
                ),
                child: GridView.count(
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
                          onPressed: () {},
                          child: Column(
                            children: [
                              Image.asset('assets/images/그림01.jpg',
                                  height: MediaQuery.of(context).size.height /
                                      10.5),
                              Text(
                                "식사",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
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
                            onPressed: () {},
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/그림02.jpg',
                                  height:
                                      MediaQuery.of(context).size.height / 10.5,
                                ),
                                Text("데이트",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12))
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
                            onPressed: () {},
                            child: Column(
                              children: [
                                Image.asset('assets/images/그림03.jpg',
                                    height: MediaQuery.of(context).size.height /
                                        10.5),
                                Text("업무",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12)),
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
                            onPressed: () {},
                            child: Column(
                              children: [
                                Image.asset('assets/images/그림04.jpg',
                                    height: MediaQuery.of(context).size.height /
                                        10.5),
                                Text(
                                  "기타",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

             */
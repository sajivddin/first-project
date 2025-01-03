import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search>  createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List MyList = [
    {
      "name": "Graphic Design",
    },
    {
      "name": "Programming",
    },
    {
      "name": "SEO & Marketing",
    },
    {
      "name": "Web Development",
    },
    {
      "name": "Office Productivity",
    },
    {
      "name": "Personal Development",
    },
    {
      "name": "Finance & Accounting",
    },
    {
      "name": "HR Management",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Graphic Design',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(0, 26, 67, 47),
                    ),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                  suffixStyle: TextStyle(
                    backgroundColor: Color.fromRGBO(0, 26, 67, 47),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recents Search",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 26, 67, 47),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "See All >",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 26, 67, 47),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: MyList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text(
                                MyList[index]['name'],
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(160, 161, 171, 100),
                                ),
                              ),
                            ),
                            Text(
                              "x",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(160, 161, 171, 100),
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

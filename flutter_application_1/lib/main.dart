import 'package:flutter/material.dart';

void main() {
  runApp(const recipe());
}

class recipe extends StatelessWidget {
  const recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: menusayfasi(),
    );
  }
}

class menusayfasi extends StatefulWidget {
  menusayfasi({Key? key}) : super(key: key);

  @override
  State<menusayfasi> createState() => _menusayfasiState();
}

class _menusayfasiState extends State<menusayfasi> {
  List<String> menuisim = [
    "Breakfast",
    "Main Course", //category names
    "Desserts",
    "Soups",
    "Salads",
    "Snacks"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Let's Eat"), //upper title
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(height: 20),
        Text("Recommended Foods"),
        SizedBox(
          height: 20,
        ), //recommended foods title
        Row(
          //yan yana
          mainAxisAlignment: MainAxisAlignment
              .spaceAround, //rowun yan yana boşluklu sıralanmasını düzenler
          children: [
            //itemleri yazıyoruz
            Column(
              //1kutucuk ve altındaki yazı
              children: [
                Container(
                  //icine resim attık kare sey
                  child: Image.asset(
                    "asset/menuimage/7.jpg",
                    fit: BoxFit.cover,
                  ),
                  width: MediaQuery.of(context).size.width / 3,
                  height: 100,
                ),
                SizedBox(height: 10),
                Text("Japanese MainCourse Sushi"),
                SizedBox(height: 10),
              ],
            ),
            Column(
              children: [
                Container(
                  child: Image.asset(
                    "asset/menuimage/8.png",
                    fit: BoxFit.cover,
                  ),
                  width: MediaQuery.of(context).size.width / 3,
                  height: 100,
                ),
                SizedBox(height: 10),
                Text("Turkish Dessert Baklava"),
                SizedBox(height: 10),
              ],
            )
          ],
        ),
        SizedBox(height: 20),
        Text("Categories"),
        SizedBox(height: 20),
        Expanded(
          //to expand same widgets
          child: GridView.builder(
            //to create list which contains more widgets
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // 3 box in x axis
            ),
            itemCount: 6, // 6 box
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  //ittrmek için
                  padding: EdgeInsets.all(10), //padding oranı
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset("asset/menuimage/${index + 1}.jpg",
                            fit: BoxFit.cover),
                        width: MediaQuery.of(context).size.width / 1,
                        height: 100,
                      ),
                      Text(
                        menuisim[index],
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 247, 255),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ));
            },
          ),
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled/contants/constant%20page/medicinehomepage.dart';
import 'package:untitled/contants/constant.dart';
import 'package:untitled/contants/cotstant%20data/medicinedata.dart';
import 'package:untitled/contants/cotstant%20data/pharmacy.dart';
import 'package:untitled/google%20dart.dart';

class MedicinePage extends StatelessWidget {
  MedicinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8ecae6),
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: myStyal(26, primaryColor, FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                    text: "Time",
                    style: myStyal(26, secondaryColor, FontWeight.bold)),
                TextSpan(
                  text: "+",
                  style: myStyal(26, primaryColor, FontWeight.bold),
                ),
              ]),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_vert_outlined)],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: phar.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 0.99,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          builder) => CapitalHome(Capital: Medicine [index],)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Card(
                        shadowColor: Colors.white,
                        elevation: 7,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(5),
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                  border:
                                  Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "${phar[index].image}",
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              "${phar[index].name}",
                              style: myStyal(24, Colors.black, FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on_outlined,size: 20,),
                                Text(
                                  "${phar[index].location}",
                                  style: myStyal(
                                    20,
                                    Colors.black,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            Container(
                              height: 45,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90),
                                color: Colors.brown,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    "${phar[index].rating}",
                                    style: myStyal(
                                      16,
                                      Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }


}
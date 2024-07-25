import 'package:flutter/material.dart';
import 'package:untitled/contants/constant%20page/hospitaldetail.dart';
import 'package:untitled/contants/constant.dart';
import 'package:untitled/contants/cotstant%20data/hospitaldata.dart';
class Hospitalpage extends StatelessWidget {

   const Hospitalpage({super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
              style: mystyle(26,primaryColor,FontWeight.bold),
              children: [
                TextSpan(
                  text: "Doc",
                ),
                TextSpan(
                    text: "Time",
                    style: mystyle(26,secondaryColor,FontWeight.bold)
                ),
                TextSpan(
                  text: "+",
                  style: mystyle(26,primaryColor,FontWeight.bold),
                ),
              ]
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: Alass.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Hospitalmad(hospital: Alass[index])));
                    },
                    child: Card(
                      elevation: 4,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 250,
                                  width: MediaQuery.of(context).size.width*0.4,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(image: AssetImage("${Alass[index].image}"),fit: BoxFit.cover)
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("${Alass[index].name}",style: mystyle(22,Colors.black,FontWeight.bold),),
                                        SizedBox(height: 20,),
                                        Text("${Alass[index].rating}",style: mystyle(18),maxLines: 2,),
                                        SizedBox(height: 20
                                          ),
                                        Text("${Alass[index].location}"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
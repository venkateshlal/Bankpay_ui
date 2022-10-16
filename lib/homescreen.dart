import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_sbi/homepage.dart';
import 'package:flutter_application_sbi/list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.scanner),
        ],
        title: Center(child: Text("Welcome! MAUSAM")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.red),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 15,
                  shadowColor: Colors.grey[700],
                  child: Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(68)),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                      "https://image.shutterstock.com/image-photo/stock-photo-head-shot-young-attractive-businessman-in-glasses-standing-in-modern-office-pose-for-camera-250nw-1854697390.jpg"),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "SAMMUNATI BACHAT KHATA",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 22),
                                child: Row(
                                  children: [
                                    Text("NPR. 1,00,999.35",
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.red)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 70),
                                child: Text("281656489843678",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 12),
            child: Text("WOULD YOU LIKE TO?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 8),
            child: Row(
              children: [
                HomePage(
                  pic:
                      "https://i0.wp.com/www.followchain.org/wp-content/uploads/2021/07/Forgot_password-rafiki_1_35.png?fit=700%2C700&ssl=1",
                  text1: "My Account",
                ),
                HomePage(
                  pic:
                      "https://png.pngtree.com/png-vector/20190419/ourlarge/pngtree-vector-bank-icon-png-image_957136.jpg",
                  text1: "Load eSewa",
                ),
                HomePage(
                  pic:
                      "https://cdni.iconscout.com/illustration/premium/thumb/money-transfer-3450764-2918424.png",
                  text1: "Payment",
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 8),
            child: Row(
              children: [
                HomePage(
                  pic:
                      "https://media.istockphoto.com/vectors/easy-money-transfer-related-cartoon-style-vector-illustration-vector-id1351302875?k=20&m=1351302875&s=170667a&w=0&h=_r_6uKxx3sQMIprun6IUYA4LxmDmL74GDZNhdFjYFcU=",
                  text1: "Fund Transfer",
                ),
                HomePage(
                  pic:
                      "https://cdn2.vectorstock.com/i/1000x1000/15/16/payment-schedule-rgb-color-icon-vector-35701516.jpg",
                  text1: "Schedule",
                ),
                HomePage(
                  pic:
                      "https://images-na.ssl-images-amazon.com/images/I/41c9F9wvYIL.png",
                  text1: "Scan To Pay",
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 12),
            child: Text("LAST TRANSACTIONS",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              List(
                  text1: "CWDR/",
                  text2: "9856637/75717884",
                  text3: "10-06-2019",
                  text4: "NPR. 10,000.00"),
              List(
                  text1: "CWDR/",
                  text2: "9856637/75717884",
                  text3: "10-06-2019",
                  text4: "NPR. 10,000.00"),
              List(
                  text1: "CWDR/",
                  text2: "9856637/75717884",
                  text3: "10-06-2019",
                  text4: "NPR. 10,000.00")
            ],
          ))
        ],
      ),
    );
  }
}

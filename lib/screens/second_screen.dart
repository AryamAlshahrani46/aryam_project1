import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

final Map<String, dynamic> placeDetails;

const SecondScreen({super.key, required this.placeDetails});

  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.sizeOf(context).width;
    double height =MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: const Color(0xFFF9F6EE),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    bottomRight: Radius.circular(24),
                  ),
                  child: Image.asset(
                    placeDetails["image"]!,
                    width: double.infinity,
                    height: height * 0.35, 
                    fit: BoxFit.cover,  
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.4),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(0.4),
                    child: Icon(Icons.star_border, color: Colors.white),
                  ),
                ),
              ],
            ),
             SizedBox(height: 16),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    placeDetails["name"]!,
                    style:  TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    placeDetails["subtitle"]!,
                    style:  TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),

                   SizedBox(height: 8),

                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Colors.orange, size: 18),
                      SizedBox(width: 4),
                      Text(
                        "Riyadh, KSA",
                        style: TextStyle(color: Colors.black54, fontSize: 13),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.star, color: Colors.amber, size: 18),
                      SizedBox(width: 4),
                      Text(
                        "4.5 (1,240 Reviews)",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),

                   SizedBox(height: 12),

                  Text(
                    placeDetails["description"]!,
                    style: TextStyle(
                      fontSize: 13,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),

                   SizedBox(height: 16),

                Row(
              children: [
                 Icon(Icons.access_time),
                 SizedBox(width: 5),
                Text(placeDetails["time"] ?? ""),
              ],
            ),
             SizedBox(height: 5),
            Row(
              children: [
                 Icon(Icons.confirmation_number),
                 SizedBox(width: 5),
                Text(placeDetails["ticket"] ?? ""),
              ],
            ),

                   SizedBox(height: 20),

                  Container(
                    padding:  EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFE8D8),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                             Icon(Icons.map_outlined, color: Color(0xFF2E7D32)),
                             SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  placeDetails["name"]!,
                                  style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                                ),
                                 Text(
                                  "7.4 km from your location",
                                  style: TextStyle(fontSize: 11, color: Colors.black54),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child:  Text("Get Directions", style: TextStyle(fontSize: 11)),
                        ),
                      ],
                    ),
                  ),

                   SizedBox(height: 24),

                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding:  EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: const Color(0xFF00695C),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child:  Center(
                              child: Text(
                                "Book Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                       SizedBox(width: 12),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding:  EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xFF00695C)),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child:  Center(
                              child: Text(
                                "Share",
                                style: TextStyle(
                                  color: Color(0xFF00695C),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
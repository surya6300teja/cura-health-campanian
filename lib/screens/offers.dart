import 'package:flutter/material.dart';
import '../widgets/offersCard.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              "Book Appoinments",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            )
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: OffersCard(
                  labName: "Dr. Devi Shetty",
                  rating: 4.9,
                  designation: "Dermatologist",
                  fees: "Fees: 12 Dollars",
                  appointmentTimings: "8:00 AM - 5:00",
                  image:"assets/images/doctor1.jpg",
                ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: OffersCard(
                labName: "Dr. Ashok Joh purkar",
                rating: 4.9,
                designation: "Ophthalmologist",
                fees: "Fees: 12 Dollars",
                appointmentTimings: "8:00 AM - 5:00",
                image:"assets/images/doctor4.jpg" ,
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Text(
                  "More Doctors",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                )
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: OffersCard(
                labName: "Dr. Randeep Guleria:",
                rating: 4.9,
                designation: "Senior Surgeon",
                 fees: "Fees: 12 Dollars",
                appointmentTimings: "8:00 AM - 5:00",
                image: "images/doctor2.jpg",
              ),
            ),Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: OffersCard(
                labName: "Dr. Alok Sharma:",
                rating: 4.9,
                designation: "Orthopedic Surgeon",
                 fees: "Fees: 12 Dollars",
                appointmentTimings: "8:00 AM - 5:00",
                image: "assets/images/doctor3.jpg",
              ),
            ),Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: OffersCard(
                labName: "Dr. V. K. Menon",
                rating: 4.9,
                designation: "Pulmonologist",
                fees: "Fees: 12 Dollars",
                appointmentTimings: "8:00 AM - 5:00",
                image: "./assets/images/doctor4.jpg",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

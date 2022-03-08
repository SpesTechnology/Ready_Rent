import 'package:flutter/material.dart';

class  SharedHostel {
     String picture;
     String title;
     IconData icon;
     String description;
     String details;
     String button;

    SharedHostel(
       {
         required this.picture,
         required this.title,
         required this.icon,
         required this.description,
         required this.details,
         required this.button,

       }
     );
}

List< SharedHostel> sharedHostelList = [
      SharedHostel(
               picture:"assets/images/hostelshared1.jpg",
               title: "Shared Room ",
               icon:Icons.location_on, 
               description:"Shared Room Self-Containeid at Pensa Junction",
               details: "New Site",
               button: "View details",
               ),
      SharedHostel(
               picture:"assets/images/hostelshared2.jpg",
               title: "Shared Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Nkroful Junction",
               button: "View details",
               ),
      SharedHostel(
               picture:"assets/images/building2.jpg",
               title: "Single and Shared ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single and Shared hostels available at BU campus",
               button: "View details",
               ),
      SharedHostel(
               picture:"assets/images/hostel2.jpeg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Nkroful Junction",
               button: "View details",
               ),      
       SharedHostel(
               picture:"assets/images/profile.jpeg",
               title: "Single and Shared ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single and Shared hostels available at BU campus",
               button: "View details",
               ),
      SharedHostel(
               picture:"assets/images/hostel1.jpeg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Nkroful Junction",
               button: "View details",
               ), 
       SharedHostel(
               picture:"assets/images/profile.jpeg",
               title: "Single and Shared ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single and Shared hostels available at BU campus",
               button: "View details",
               ),
      SharedHostel(
               picture:"assets/images/profile.jpeg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Nkroful Junction",
               button: "View details",
               ), 
        SharedHostel(
               picture:"assets/images/profile.jpeg",
               title: "Single and Shared ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single and Shared hostels available at BU campus",
               button: "View details",
               ),
      SharedHostel(
               picture:"assets/images/profile.jpeg",
               title: "Shared Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Nkroful Junction",
               button: "View details",
               ),                     
];
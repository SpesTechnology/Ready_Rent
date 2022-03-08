import 'package:flutter/material.dart';

class  SingleHostel {
     String picture;
     String title;
     IconData icon;
     String description;
     String details;
     String button;

    SingleHostel(
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

List< SingleHostel> singleHostelList = [
      SingleHostel(
               picture:"assets/images/building1.jpg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"Single Romm Self-Containeid at Acalema Junction",
               details: "New Site",
               button: "View details",
               ),
      SingleHostel(
               picture:"assets/images/building2.jpg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Nkroful Junction",
               button: "View details",
               ),
      SingleHostel(
               picture:"assets/images/building2.jpg",
               title: "Single and Shared ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single and Shared hostels available at BU campus",
               button: "View details",
               ),
      SingleHostel(
               picture:"assets/images/hostel2.jpeg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Nkroful Junction",
               button: "View details",
               ),      
       SingleHostel(
               picture:"assets/images/profile.jpeg",
               title: "Single and Shared ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single and Shared hostels available at BU campus",
               button: "View details",
               ),
      SingleHostel(
               picture:"assets/images/hostel1.jpeg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Nkroful Junction",
               button: "View details",
               ), 
       SingleHostel(
               picture:"assets/images/profile.jpeg",
               title: "Single and Shared ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single and Shared hostels available at BU campus",
               button: "View details",
               ),
      SingleHostel(
               picture:"assets/images/profile.jpeg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Nkroful Junction",
               button: "View details",
               ), 
        SingleHostel(
               picture:"assets/images/profile.jpeg",
               title: "Single and Shared ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single and Shared hostels available at BU campus",
               button: "View details",
               ),
      SingleHostel(
               picture:"assets/images/profile.jpeg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Nkroful Junction",
               button: "View details",
               ),                     
];
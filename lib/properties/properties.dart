import 'package:flutter/material.dart';

class Property {
     String picture;
     String title;
     IconData icon;
     String description;
     String details;
     String button;

     Property(
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

List<Property> propertyList = [
     Property(
               picture:"assets/images/hostelimage1.jpg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"New Site ",
               details: "Single Room hostel available around Kofi George",
               button: "View details",
               ),
     Property(
               picture:"assets/images/hostel1.jpeg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single Room hostel available around Kofi George",
               button: "View details",
               ),
     Property(
               picture:"assets/images/hostelshared1.jpg",
               title: "Single and Shared ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single and Shared hostels available at BU campus",
               button: "View details",
               ),
     Property(
               picture:"assets/images/hostel2.jpeg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single Room hostel available around Kofi George",
               button: "View details",
               ),      
      Property(
               picture:"assets/images/building2.jpg",
               title: "Single and Shared ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single and Shared hostels available at BU campus",
               button: "View details",
               ),
     Property(
               picture:"assets/images/hostelshared2.jpg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single Room hostel available around Kofi George",
               button: "View details",
               ), 
      Property(
               picture:"assets/images/building2.jpg",
               title: "Single and Shared ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single and Shared hostels available at BU campus",
               button: "View details",
               ),
     Property(
               picture:"assets/images/hostelshared1.jpg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Nkroful Junction",
               button: "View details",
               ), 
       Property(
               picture:"assets/images/hostelshared1.jpg",
               title: "Single and Shared ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single and Shared hostels available at BU campus",
               button: "View details",
               ),
     Property(
               picture:"assets/images/hostelshared1.jpg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Shared Room hostel available around Kofi George",
               button: "View details",
               ),    
     Property(
               picture:"assets/images/hostelshared1.jpg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single Room hostel available around Kofi George",
               button: "View details",
               ),      
     Property(
               picture:"assets/images/hostelshared1.jpg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single Room hostel available around Kofi George",
               button: "View details",
               ), 
     Property(
               picture:"assets/images/hostelshared2.jpg",
               title: "Single Room ",
               icon:Icons.location_on, 
               description:"BU Campus",
               details: "Single Room hostel available around Kofi George",
               button: "View details",
               ),             
];
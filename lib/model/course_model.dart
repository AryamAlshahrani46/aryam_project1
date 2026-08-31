class CourseModel {
   String  ? name;
   String  ? subtitle;
   String ? image;
   String  ? description;
   String ? time;
   String ? ticket;


CourseModel({this.name, this.description, this.image, this.subtitle, this.ticket, this.time});

factory CourseModel.fromJson( Map<String, dynamic> json ){
    return CourseModel(name: json["name"] ?? "", 
      description: json["description"] ?? "",
      image: json["image"] ?? "",
      subtitle: json["subtitle"] ?? "" ,
      ticket: json["ticket"]?? "",
      time: json["time"] ?? ""
     );


}



}
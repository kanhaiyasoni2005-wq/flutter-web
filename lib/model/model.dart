class Webmodel{
  final String appname;
    final String playstoreurl;
    final String image;
    final String desc;
  const Webmodel({required this.image,required this.appname, required this.playstoreurl, required this.desc});
  factory Webmodel.fromjson(Map<String,dynamic>json){
    return Webmodel(appname: json["appname"], playstoreurl: json["playstore" ],desc: json["desc"],image: json["image"]);
  }
  Map<String,dynamic> tojson(){
    return {
      "appname": appname,
      "playsotore": playstoreurl,
      "image": image,
      "desc":desc
    };
  }
}
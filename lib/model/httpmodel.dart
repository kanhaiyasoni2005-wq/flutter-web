class HttpApi{
  final int userId;
  final int id;
 final  String title;
 final  String body;
 const HttpApi({required this.userId,required this.id,required this.title,required this.body});

 factory HttpApi.fromjson(Map<String,dynamic> json){
   return HttpApi(userId: json["userId"], id: json["id"], title: json["title"], body: json["body"]);
 }



 Map<String , dynamic> tojson(){
  return{
    "userId":userId,
    "id":id,
    "title":title,
    "body":body
  };
 }
}
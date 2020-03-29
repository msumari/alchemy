import "package:http/http.dart" as http;
import 'dart:convert';

class Request{

  bool ok;
  dynamic data;
  Request(this.ok,this.data);

}

const protocol = "http";
const domain = "192.168.42.107:8000";

Future<Request> http_get(String route,[dynamic data])async{
var datastr = jsonEncode(data);
var url = "$protocol://$domain/$route?data=$datastr";
var result = await http.get(url);
return Request(true,jsonDecode(result.body));
}

Future<Request> http_post(String route,[dynamic data])async{
  var datastr = jsonEncode(data);
  var url = "$protocol://$domain/$route";
  var result = await http.post(url,body: datastr, headers:{"Content + Type":"application/json"});
  return Request(true,jsonDecode(result.body));
}
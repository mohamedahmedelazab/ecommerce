import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/StatusRequest.dart';
import 'package:ecommerce/core/function/checkInternet.dart';
import 'package:http/http.dart' as http;

class Crud
{
  Future<Either<StatusRequest,Map>> postData(String url,Map data) async{

    try
    {
      if (await checkInternet()) {

        var response=await http.post(Uri.parse(url),body: data);
        if (response.statusCode==200||response.statusCode==201) {
          Map responsebody=jsonDecode(response.body);
           return Right(responsebody);
        }
        else
          return const Left(StatusRequest.serverfailure);
      }
      else {
        return const Left(StatusRequest.offlinefailure);
      }
    }
    catch(_){
      return const Left(StatusRequest.exception);

    }
    /////////////////End Catch
    }

}





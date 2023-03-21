import 'package:ecommerce/core/class/StatusRequest.dart';
import 'package:ecommerce/core/constant/imageAsset.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
 late StatusRequest statusRequest;
 late Widget widget;
   HandlingDataView({required this.statusRequest,required this.widget}) ;

  @override
  Widget build(BuildContext context) {
    return
        statusRequest==StatusRequest.loading ?
        Center(child: Lottie.asset(AppImageAsset.loading)):
        statusRequest==StatusRequest.failure ?
         Center(child: Text("failure..")):
        statusRequest==StatusRequest.serverfailure ?
        Center(child: Text("server failure..")):
        statusRequest==StatusRequest.nodata ?
        Center(child: Text("no data failure..")):
            widget;
    }

}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../constants.dart';

class StorageInfoCard extends StatelessWidget{
  const StorageInfoCard ({
    Key? key ,
    required this.title,



  }) : super(key: key);
  final String title ;


  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(top: defaultPadding) ,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          border: Border.all(
              width:2,
              color: primaryColor.withOpacity(0.15)),
          borderRadius: const BorderRadius.all(Radius.circular(defaultPadding),)
      ),
      child: Row(
        children: [
          SizedBox(height: 10, width: 10, ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding,),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ Text(title, maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
}

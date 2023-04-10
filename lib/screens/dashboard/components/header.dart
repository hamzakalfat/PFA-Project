// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/constants.dart';
class  header extends StatelessWidget {
  const header({
   Key? key ,
  }) : super ( key:key);
  @override
  Widget build(BuildContext context){
    return  Row(
      children: [
        Text (
          "Dashboard",
          style: Theme.of(context).textTheme.headline6,
        ),
        Spacer( flex:2,),
        Expanded(
          child: SearchField(),
        ),
      ],
    );
  }
}

class  SearchField extends StatelessWidget {
  const SearchField({
   Key?  key ,
  }) : super ( key:key);
  @override
  Widget build(BuildContext context){
    return TextField (
      decoration: InputDecoration(
        hintText:"search",
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder (
          borderSide: BorderSide.none,
          borderRadius:
          const BorderRadius.all(Radius.circular(10)),

        ),
        suffixIcon: InkWell(
          onTap: () {} ,
          child: Container(
            padding: EdgeInsets.all(defaultPadding*0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding/2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius:
              const BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset ("assets/icons/search-right-1507-svgrepo-com.svg"),
          ),
        ),

      ),
    );
  }
}

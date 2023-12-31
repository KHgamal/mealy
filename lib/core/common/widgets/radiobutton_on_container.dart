import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../res/colors.dart';
import '../res/styles.dart';
class RadioButtonContainer extends StatefulWidget {
  RadioButtonContainer({Key? key,this.height ,this.width
  ,this.widget,required this.text1, required this.text2, required this.multi, this.text3,this.text4,}) : super(key: key);
final String text1;
final String text2;
 String? text3;
   String? text4;
final bool multi;
   double? height;
   double?  width;
   Widget? widget;
  @override
  State<RadioButtonContainer> createState() => _RadioButtonContainerState();
}

class _RadioButtonContainerState extends State<RadioButtonContainer> {
  int selection = 0;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              selection = 1;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            height: widget.height ?? 48,
            width:widget.width ?? 343,
            decoration: BoxDecoration(
              color: selection==1? AllColors.buttonBgColor:  AllColors.unChoosenGender,
              border: Border.all(color:  selection==1? AllColors.buttonMainColor:
              AllColors.gray, width: 1),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    widget.widget ?? const SizedBox(),
                    Text(
                      widget.text1,
                      style: selection==1 ? Styles.textStyle16.copyWith(color:AllColors.mainText ):
                      Styles.textStyle16.copyWith(color:AllColors.disabledText ),
                    ),
                  ],
                ),
                Radio(
                  groupValue: selection,
                  onChanged: (value) {
                    setState(() {
                      selection = value!;
                    });
                  },
                  value: 1,
                  fillColor: selection==1?MaterialStateProperty.all(AllColors.buttonMainColor):
                  MaterialStateProperty.all(AllColors.gray), // Change the fill color when selected
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
        InkWell(
          onTap: () {
            setState(() {
              selection = 2;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            height: widget.height ?? 48,
            width:widget.width ?? 343,
            decoration: BoxDecoration(
              color: selection==2? AllColors.buttonBgColor:  AllColors.unChoosenGender,
              border: Border.all(color:  selection==2? AllColors.buttonMainColor:
              AllColors.gray, width: 1),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                children: [
                  widget.widget ?? const SizedBox(),
                  Text(
                    widget.text2,
                    style: selection==2 ? Styles.textStyle16.copyWith(color:AllColors.mainText ):
                    Styles.textStyle16.copyWith(color:AllColors.disabledText ),
                  ),
                ],
              ),
                Radio(
                  groupValue: selection,
                  onChanged: (value) {
                    setState(() {
                      selection = value!;
                    });
                  },
                  value: 2,
                  fillColor: selection==2?MaterialStateProperty.all(AllColors.buttonMainColor):
                  MaterialStateProperty.all(AllColors.gray), // Change the fill color when selected
                ),
              ],
            ),
          ),
        ),
        widget.multi?Column(
          children: [
            const SizedBox(height: 10,),
            InkWell(
          onTap: () {
            setState(() {
              selection = 3;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            height: widget.height ?? 48,
            width:widget.width ?? 343,
            decoration: BoxDecoration(
              color: selection==3? AllColors.buttonBgColor:  AllColors.unChoosenGender,
              border: Border.all(color:  selection==3? AllColors.buttonMainColor:
              AllColors.gray, width: 1),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    widget.widget ?? const SizedBox(),
                    Text(
                      widget.text3 ?? " ",
                      style: selection==3 ? Styles.textStyle16.copyWith(color:AllColors.mainText ):
                      Styles.textStyle16.copyWith(color:AllColors.disabledText ),
                    ),
                  ],
                ),
                Radio(
                  groupValue: selection,
                  onChanged: (value) {
                    setState(() {
                      selection = value!;
                    });
                  },
                  value: 3,
                  fillColor: selection==3?MaterialStateProperty.all(AllColors.buttonMainColor):
                  MaterialStateProperty.all(AllColors.gray), // Change the fill color when selected
                ),
              ],
            ),
          ),
        ),
            const SizedBox(height: 10,),
            InkWell(
          onTap: () {
            setState(() {
              selection = 4;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            height: widget.height ?? 48,
            width:widget.width ?? 343,
            decoration: BoxDecoration(
              color: selection==4? AllColors.buttonBgColor:  AllColors.unChoosenGender,
              border: Border.all(color:  selection==4? AllColors.buttonMainColor:
              AllColors.gray, width: 1),
              borderRadius: BorderRadius.circular(12)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    widget.widget ?? const SizedBox(),
                    Text(
                      widget.text4 ?? " ",
                      style: selection==4 ? Styles.textStyle16.copyWith(color:AllColors.mainText ):
                      Styles.textStyle16.copyWith(color:AllColors.disabledText ),
                    ),
                  ],
                ),
                Radio(
                  groupValue: selection,
                  onChanged: (value) {
                    setState(() {
                      selection = value!;
                    });
                  },
                  value: 4,
                  fillColor: selection==4?MaterialStateProperty.all(AllColors.buttonMainColor):
                  MaterialStateProperty.all(AllColors.gray), // Change the fill color when selected
                ),

              ],
            ),
          ),
        ),
          ],
        ):const SizedBox(),
      ],
    );
  }
}

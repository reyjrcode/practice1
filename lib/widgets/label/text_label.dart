 
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:jegoshit/constant/colors.dart';

class TextPoppin extends StatelessWidget {
 
final String? label;
final double? textsize;
final Color? textcolor;
final int? lines;
final TextAlign? align;
final TextOverflow? overflow;
final bool? bold;
final bool? extrabold;
final bool? medium;

  const TextPoppin({super.key, this.label, this.textsize, this.textcolor, this.lines, this.align, this.overflow, this.bold, this.extrabold, this.medium});

  

    

  @override
  Widget build(BuildContext context) {
    return Text(label??"",
    textAlign: align?? TextAlign.left,
    maxLines: lines?? 1,
    overflow:  TextOverflow.ellipsis,
    style: GoogleFonts.poppins(
      fontSize: textsize?? 12.dp,
      color:textcolor?? colorDark,
      fontWeight: extrabold==true?
      FontWeight.w900:bold==true?
      FontWeight.w700:medium==true?
      FontWeight.w500:FontWeight.w400
      
    ),);

  }
}
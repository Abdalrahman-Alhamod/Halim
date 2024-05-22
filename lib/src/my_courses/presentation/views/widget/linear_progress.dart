// import 'package:flutter/material.dart';

// import 'package:percent_indicator/linear_percent_indicator.dart';


// class ProgressLine extends StatefulWidget {

//   //final double? progress;
//   final int? completedEpisodes;
//   final int? allEpisodes;
//    ProgressLine({  this.completedEpisodes, this.allEpisodes});

//   @override
//   State<ProgressLine> createState() => _ProgressLineState();
// }

// class _ProgressLineState extends State<ProgressLine> {
//   @override
//   Widget build(BuildContext context) {
//      //  progress = completedEpisodes / AllEpisodes;

//     return  LinearPercentIndicator(
//       alignment: MainAxisAlignment.start,
//                 width: 150.0,
//                 animation: true,
//                 lineHeight: 9.0,
//                 percent: widget.completedEpisodes!/widget.allEpisodes!,
//                 barRadius: Radius.circular(10),
//                 backgroundColor: Colors.grey[300]!,
//                 progressColor: Colors.blue,
//                 clipLinearGradient: true,
//                 trailing: Text(
//                   "93 / 124",
//                   style: TextStyle(
//                   color: context.isDarkMode
//                 ? Colors.white54
//                 : Colors.black54,
//                     fontSize: 12,
//                     fontWeight: FontWeight.w300,
//                   ),
//                 ),
//               );
//   }
// }

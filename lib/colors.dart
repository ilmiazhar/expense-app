import 'dart:math';
import 'package:flutter/material.dart';

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);


// import 'package:flutter/material.dart';

// class PaletteSample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     MaterialColor primarySwatch = generateMaterialColor(Palette.primary);
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Container(
//           height: 50,
//           color: primarySwatch.shade50,
//           child: Center(
//               child: Text(
//             "50",
//             style:
//                 Theme.of(context).textTheme.title.copyWith(color: Colors.white),
//           )),
//         ),
//         Container(
//           height: 50,
//           color: primarySwatch.shade100,
//           child: Center(
//               child: Text(
//             "100",
//             style:
//                 Theme.of(context).textTheme.title.copyWith(color: Colors.white),
//           )),
//         ),
//         Container(
//           height: 50,
//           color: primarySwatch.shade200,
//           child: Center(
//               child: Text(
//             "200",
//             style:
//                 Theme.of(context).textTheme.title.copyWith(color: Colors.white),
//           )),
//         ),
//         Container(
//           height: 50,
//           color: primarySwatch.shade300,
//           child: Center(
//               child: Text(
//             "300",
//             style:
//                 Theme.of(context).textTheme.title.copyWith(color: Colors.white),
//           )),
//         ),
//         Container(
//           height: 50,
//           color: primarySwatch.shade400,
//           child: Center(
//               child: Text(
//             "400",
//             style:
//                 Theme.of(context).textTheme.title.copyWith(color: Colors.white),
//           )),
//         ),
//         Container(
//           height: 50,
//           color: primarySwatch.shade500,
//           child: Center(
//               child: Text(
//             "500",
//             style:
//                 Theme.of(context).textTheme.title.copyWith(color: Colors.white),
//           )),
//         ),
//         Container(
//           height: 50,
//           color: primarySwatch.shade600,
//           child: Center(
//               child: Text(
//             "600",
//             style:
//                 Theme.of(context).textTheme.title.copyWith(color: Colors.white),
//           )),
//         ),
//         Container(
//           height: 50,
//           color: primarySwatch.shade700,
//           child: Center(
//               child: Text(
//             "700",
//             style:
//                 Theme.of(context).textTheme.title.copyWith(color: Colors.white),
//           )),
//         ),
//         Container(
//           height: 50,
//           color: primarySwatch.shade800,
//           child: Center(
//               child: Text(
//             "800",
//             style:
//                 Theme.of(context).textTheme.title.copyWith(color: Colors.white),
//           )),
//         ),
//         Container(
//           height: 50,
//           color: primarySwatch.shade900,
//           child: Center(
//               child: Text(
//             "900",
//             style:
//                 Theme.of(context).textTheme.title.copyWith(color: Colors.white),
//           )),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

import 'dart:ui' as ui;

class LogoPainter extends CustomPainter {
  LogoPainter({
    required this.valueLeft,
    required this.valueRight,
  });

  final double valueLeft;
  final double valueRight;

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path()
      ..moveTo(
        size.width * 0.2062260,
        size.height * 0.6309282,
      )
      ..cubicTo(
        size.width * 0.1996545,
        size.height * 0.6219655,
        size.width * 0.1914395,
        size.height * 0.6130036,
        size.width * 0.1832245,
        size.height * 0.6085227,
      )
      ..cubicTo(
        size.width * 0.1709020,
        size.height * 0.6025473,
        size.width * 0.1577580,
        size.height * 0.6025473,
        size.width * 0.1429710,
        size.height * 0.5980664,
      )
      ..cubicTo(
        size.width * 0.1429710,
        size.height * 0.5876100,
        size.width * 0.1421495,
        size.height * 0.5771545,
        size.width * 0.1429710,
        size.height * 0.5681918,
      )
      ..cubicTo(
        size.width * 0.1437925,
        size.height * 0.4920127,
        size.width * 0.1446140,
        size.height * 0.4158336,
        size.width * 0.1462570,
        size.height * 0.3411473,
      )
      ..cubicTo(
        size.width * 0.1470785,
        size.height * 0.3097791,
        size.width * 0.1495430,
        size.height * 0.2784118,
        size.width * 0.1520075,
        size.height * 0.2470436,
      )
      ..cubicTo(
        size.width * 0.1561150,
        size.height * 0.1932700,
        size.width * 0.1659730,
        size.height * 0.1469645,
        size.width * 0.1996545,
        size.height * 0.1305336,
      )
      ..cubicTo(
        size.width * 0.1996545,
        size.height * 0.1305336,
        size.width * 0.2004755,
        size.height * 0.1305336,
        size.width * 0.2012975,
        size.height * 0.1290400,
      )
      ..cubicTo(
        size.width * 0.2160840,
        size.height * 0.1141027,
        size.width * 0.2185485,
        size.height * 0.08870982,
        size.width * 0.2070475,
        size.height * 0.06481036,
      )
      ..cubicTo(
        size.width * 0.1980115,
        size.height * 0.04688573,
        size.width * 0.1865105,
        size.height * 0.03792345,
        size.width * 0.1725450,
        size.height * 0.03642973,
      )
      ..cubicTo(
        size.width * 0.1429710,
        size.height * 0.03493618,
        size.width * 0.1191475,
        size.height * 0.05883545,
        size.width * 0.1010750,
        size.height * 0.09916545,
      )
      ..cubicTo(
        size.width * 0.08546650,
        size.height * 0.1335209,
        size.width * 0.07560850,
        size.height * 0.1738518,
        size.width * 0.07067950,
        size.height * 0.2186627,
      )
      ..cubicTo(
        size.width * 0.05753550,
        size.height * 0.3202355,
        size.width * 0.05507100,
        size.height * 0.4233018,
        size.width * 0.05753550,
        size.height * 0.5278618,
      )
      ..cubicTo(
        size.width * 0.05753550,
        size.height * 0.5532555,
        size.width * 0.05753550,
        size.height * 0.5786482,
        size.width * 0.05753550,
        size.height * 0.6055355,
      )
      ..cubicTo(
        size.width * 0.05424950,
        size.height * 0.6070291,
        size.width * 0.05178500,
        size.height * 0.6070291,
        size.width * 0.04849910,
        size.height * 0.6100164,
      )
      ..cubicTo(
        size.width * 0.03946265,
        size.height * 0.6174845,
        size.width * 0.02878320,
        size.height * 0.6234600,
        size.width * 0.02056825,
        size.height * 0.6339155,
      )
      ..cubicTo(
        size.width * 0.01235330,
        size.height * 0.6443718,
        size.width * 0.008245800,
        size.height * 0.6622964,
        size.width * 0.01071030,
        size.height * 0.6802209,
      )
      ..cubicTo(
        size.width * 0.01317480,
        size.height * 0.6981455,
        size.width * 0.02056825,
        size.height * 0.7100955,
        size.width * 0.03042620,
        size.height * 0.7130827,
      )
      ..cubicTo(
        size.width * 0.03617665,
        size.height * 0.7145764,
        size.width * 0.04274865,
        size.height * 0.7160700,
        size.width * 0.04849910,
        size.height * 0.7175636,
      )
      ..cubicTo(
        size.width * 0.05260650,
        size.height * 0.7175636,
        size.width * 0.05753550,
        size.height * 0.7190573,
        size.width * 0.06246450,
        size.height * 0.7205509,
      )
      ..cubicTo(
        size.width * 0.06492900,
        size.height * 0.7803000,
        size.width * 0.06739350,
        size.height * 0.8385545,
        size.width * 0.07067950,
        size.height * 0.8953155,
      )
      ..cubicTo(
        size.width * 0.07150100,
        size.height * 0.9192182,
        size.width * 0.07560850,
        size.height * 0.9431182,
        size.width * 0.07971600,
        size.height * 0.9640273,
      )
      ..cubicTo(
        size.width * 0.08546650,
        size.height * 0.9894182,
        size.width * 0.09696750,
        size.height * 1.001373,
        size.width * 0.1092900,
        size.height * 0.9998727,
      )
      ..cubicTo(
        size.width * 0.1216120,
        size.height * 0.9983818,
        size.width * 0.1298270,
        size.height * 0.9849364,
        size.width * 0.1331130,
        size.height * 0.9550636,
      )
      ..cubicTo(
        size.width * 0.1363990,
        size.height * 0.9281727,
        size.width * 0.1380420,
        size.height * 0.9012900,
        size.width * 0.1388635,
        size.height * 0.8744036,
      )
      ..cubicTo(
        size.width * 0.1405065,
        size.height * 0.8251109,
        size.width * 0.1405065,
        size.height * 0.7728309,
        size.width * 0.1413280,
        size.height * 0.7220445,
      )
      ..cubicTo(
        size.width * 0.1413280,
        size.height * 0.7175636,
        size.width * 0.1429710,
        size.height * 0.7130827,
        size.width * 0.1437925,
        size.height * 0.7056136,
      )
      ..cubicTo(
        size.width * 0.1602225,
        size.height * 0.7056136,
        size.width * 0.1750095,
        size.height * 0.7056136,
        size.width * 0.1906180,
        size.height * 0.7056136,
      )
      ..cubicTo(
        size.width * 0.2012975,
        size.height * 0.7056136,
        size.width * 0.2086905,
        size.height * 0.6966518,
        size.width * 0.2127980,
        size.height * 0.6787273,
      )
      ..cubicTo(
        size.width * 0.2160840,
        size.height * 0.6608027,
        size.width * 0.2152625,
        size.height * 0.6428782,
        size.width * 0.2062260,
        size.height * 0.6309282,
      )
      ..close();

    var paint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffFFD42A).withOpacity(1);

    canvas.drawPath(path, paint);

    path = Path()
      ..moveTo(
        size.width * 0.2884360,
        size.height * (0.6053745 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.2901120,
        size.height * (0.6219700 - 1 + valueLeft),
        size.width * 0.2961605,
        size.height * (0.6149000 - 1 + valueLeft),
        size.width * 0.3012095,
        size.height * (0.6198773 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.3093175,
        size.height * (0.6278709 - 1 + valueLeft),
        size.width * 0.3088805,
        size.height * (0.6391236 - 1 + valueLeft),
        size.width * 0.3174005,
        size.height * (0.6358127 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.3242845,
        size.height * (0.6331382 - 1 + valueLeft),
        size.width * 0.3221420,
        size.height * (0.6242382 - 1 + valueLeft),
        size.width * 0.3305655,
        size.height * (0.6106236 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.3389890,
        size.height * (0.5970082 - 1 + valueLeft),
        size.width * 0.3483545,
        size.height * (0.6069882 - 1 + valueLeft),
        size.width * 0.3483545,
        size.height * (0.5872955 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.3483545,
        size.height * (0.5795155 - 1 + valueLeft),
        size.width * 0.3399105,
        size.height * (0.5752600 - 1 + valueLeft),
        size.width * 0.3385735,
        size.height * (0.5689391 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.3372365,
        size.height * (0.5626182 - 1 + valueLeft),
        size.width * 0.3405075,
        size.height * (0.5463309 - 1 + valueLeft),
        size.width * 0.3316420,
        size.height * (0.5468936 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.3237570,
        size.height * (0.5469164 - 1 + valueLeft),
        size.width * 0.3247600,
        size.height * (0.5576745 - 1 + valueLeft),
        size.width * 0.3178910,
        size.height * (0.5630773 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.3110220,
        size.height * (0.5684800 - 1 + valueLeft),
        size.width * 0.3064890,
        size.height * (0.5545618 - 1 + valueLeft),
        size.width * 0.3008055,
        size.height * (0.5616382 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.2951215,
        size.height * (0.5687173 - 1 + valueLeft),
        size.width * 0.2997820,
        size.height * (0.5752800 - 1 + valueLeft),
        size.width * 0.2953865,
        size.height * (0.5832655 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.2900495,
        size.height * (0.5920400 - 1 + valueLeft),
        size.width * 0.2880630,
        size.height * (0.5946127 - 1 + valueLeft),
        size.width * 0.2884360,
        size.height * (0.6053745 - 1 + valueLeft),
      )
      ..close()
      ..moveTo(
        size.width * 0.4575975,
        size.height * (0.6721282 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.4575975,
        size.height * (0.6920636 - 1 + valueLeft),
        size.width * 0.4561935,
        size.height * (0.7106618 - 1 + valueLeft),
        size.width * 0.4533860,
        size.height * (0.7279236 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.4505780,
        size.height * (0.7451845 - 1 + valueLeft),
        size.width * 0.4463665,
        size.height * (0.7613518 - 1 + valueLeft),
        size.width * 0.4407505,
        size.height * (0.7764255 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.4296530,
        size.height * (0.8063291 - 1 + valueLeft),
        size.width * 0.4152125,
        size.height * (0.8299109 - 1 + valueLeft),
        size.width * 0.3974295,
        size.height * (0.8471727 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.3797800,
        size.height * (0.8644336 - 1 + valueLeft),
        size.width * 0.3610610,
        size.height * (0.8730645 - 1 + valueLeft),
        size.width * 0.3412725,
        size.height * (0.8730645 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.3075785,
        size.height * (0.8730645 - 1 + valueLeft),
        size.width * 0.2797675,
        size.height * (0.8547091 - 1 + valueLeft),
        size.width * 0.2578395,
        size.height * (0.8179982 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.2360450,
        size.height * (0.7810445 - 1 + valueLeft),
        size.width * 0.2251480,
        size.height * (0.7343655 - 1 + valueLeft),
        size.width * 0.2251480,
        size.height * (0.6779627 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.2251480,
        size.height * (0.6181555 - 1 + valueLeft),
        size.width * 0.2362460,
        size.height * (0.5692891 - 1 + valueLeft),
        size.width * 0.2584410,
        size.height * (0.5313627 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.2807700,
        size.height * (0.4931936 - 1 + valueLeft),
        size.width * 0.3095170,
        size.height * (0.4741082 - 1 + valueLeft),
        size.width * 0.3446820,
        size.height * (0.4741082 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.3778415,
        size.height * (0.4741082 - 1 + valueLeft),
        size.width * 0.4049170,
        size.height * (0.4925855 - 1 + valueLeft),
        size.width * 0.4259090,
        size.height * (0.5295391 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.4470350,
        size.height * (0.5664936 - 1 + valueLeft),
        size.width * 0.4575975,
        size.height * (0.6140227 - 1 + valueLeft),
        size.width * 0.4575975,
        size.height * (0.6721282 - 1 + valueLeft),
      )
      ..close();

    paint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xff223382).withOpacity(1);

    canvas.drawPath(path, paint);

    path = Path()
      ..moveTo(
        size.width * 0.9883300,
        size.height * 0.1574209,
      )
      ..cubicTo(
        size.width * 0.9866900,
        size.height * 0.1290400,
        size.width * 0.9834050,
        size.height * 0.1021527,
        size.width * 0.9784750,
        size.height * 0.07526627,
      )
      ..cubicTo(
        size.width * 0.9743650,
        size.height * 0.05286055,
        size.width * 0.9653300,
        size.height * 0.03941709,
        size.width * 0.9513650,
        size.height * 0.03941709,
      )
      ..cubicTo(
        size.width * 0.9374000,
        size.height * 0.03941709,
        size.width * 0.9291850,
        size.height * 0.05286055,
        size.width * 0.9242550,
        size.height * 0.07377255,
      )
      ..cubicTo(
        size.width * 0.9209700,
        size.height * 0.08870964,
        size.width * 0.9185050,
        size.height * 0.1021527,
        size.width * 0.9176850,
        size.height * 0.1170900,
      )
      ..cubicTo(
        size.width * 0.9127550,
        size.height * 0.1902818,
        size.width * 0.9094700,
        size.height * 0.2619809,
        size.width * 0.9053600,
        size.height * 0.3336791,
      )
      ..cubicTo(
        size.width * 0.9045400,
        size.height * 0.3501100,
        size.width * 0.9037200,
        size.height * 0.3650473,
        size.width * 0.9028950,
        size.height * 0.3814782,
      )
      ..cubicTo(
        size.width * 0.8856450,
        size.height * 0.3844655,
        size.width * 0.8700350,
        size.height * 0.3859591,
        size.width * 0.8544300,
        size.height * 0.3904400,
      )
      ..cubicTo(
        size.width * 0.7985650,
        size.height * 0.4113518,
        size.width * 0.7566700,
        size.height * 0.4651255,
        size.width * 0.7336700,
        size.height * 0.5622173,
      )
      ..cubicTo(
        size.width * 0.7205250,
        size.height * 0.6189782,
        size.width * 0.7164150,
        size.height * 0.6757391,
        size.width * 0.7295600,
        size.height * 0.7325009,
      )
      ..cubicTo(
        size.width * 0.7484550,
        size.height * 0.8146545,
        size.width * 0.7919950,
        size.height * 0.8445291,
        size.width * 0.8355350,
        size.height * 0.8027055,
      )
      ..cubicTo(
        size.width * 0.8568950,
        size.height * 0.7817927,
        size.width * 0.8749650,
        size.height * 0.7519191,
        size.width * 0.8897500,
        size.height * 0.7160700,
      )
      ..cubicTo(
        size.width * 0.8938600,
        size.height * 0.7086009,
        size.width * 0.8971450,
        size.height * 0.6996391,
        size.width * 0.9020750,
        size.height * 0.6861955,
      )
      ..cubicTo(
        size.width * 0.9037200,
        size.height * 0.7160700,
        size.width * 0.9045400,
        size.height * 0.7384755,
        size.width * 0.9070050,
        size.height * 0.7623745,
      )
      ..cubicTo(
        size.width * 0.9102900,
        size.height * 0.7982236,
        size.width * 0.9127550,
        size.height * 0.8355673,
        size.width * 0.9185050,
        size.height * 0.8699227,
      )
      ..cubicTo(
        size.width * 0.9242550,
        size.height * 0.9027845,
        size.width * 0.9398650,
        size.height * 0.9192182,
        size.width * 0.9571150,
        size.height * 0.9177182,
      )
      ..cubicTo(
        size.width * 0.9751900,
        size.height * 0.9147364,
        size.width * 0.9866900,
        size.height * 0.8953155,
        size.width * 0.9916200,
        size.height * 0.8654409,
      )
      ..cubicTo(
        size.width * 0.9957250,
        size.height * 0.8415418,
        size.width * 0.9981900,
        size.height * 0.8161491,
        size.width * 0.9990100,
        size.height * 0.7922491,
      )
      ..cubicTo(
        size.width * 1.001475,
        size.height * 0.5801418,
        size.width * 0.9998300,
        size.height * 0.3680345,
        size.width * 0.9883300,
        size.height * 0.1574209,
      )
      ..close()
      ..moveTo(
        size.width * 0.8043150,
        size.height * 0.6876891,
      )
      ..cubicTo(
        size.width * 0.7977450,
        size.height * 0.6130036,
        size.width * 0.8322500,
        size.height * 0.5353300,
        size.width * 0.8807150,
        size.height * 0.5203936,
      )
      ..cubicTo(
        size.width * 0.8626450,
        size.height * 0.5905982,
        size.width * 0.8453900,
        size.height * 0.6563209,
        size.width * 0.8043150,
        size.height * 0.6876891,
      )
      ..close();

    paint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xffFFD42A).withOpacity(1);

    canvas.drawPath(path, paint);

    path = Path()
      ..moveTo(
        size.width * 0.5349600,
        size.height * (0.6053745 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5366400,
        size.height * (0.6219700 - 1 + valueRight),
        size.width * 0.5426850,
        size.height * (0.6149000 - 1 + valueRight),
        size.width * 0.5477350,
        size.height * (0.6198773 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5558450,
        size.height * (0.6278709 - 1 + valueRight),
        size.width * 0.5554050,
        size.height * (0.6391236 - 1 + valueRight),
        size.width * 0.5639250,
        size.height * (0.6358127 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5708100,
        size.height * (0.6331382 - 1 + valueRight),
        size.width * 0.5686700,
        size.height * (0.6242382 - 1 + valueRight),
        size.width * 0.5770900,
        size.height * (0.6106236 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5855150,
        size.height * (0.5970082 - 1 + valueRight),
        size.width * 0.5948800,
        size.height * (0.6069882 - 1 + valueRight),
        size.width * 0.5948800,
        size.height * (0.5872955 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5948800,
        size.height * (0.5795155 - 1 + valueRight),
        size.width * 0.5864350,
        size.height * (0.5752600 - 1 + valueRight),
        size.width * 0.5851000,
        size.height * (0.5689391 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5837600,
        size.height * (0.5626182 - 1 + valueRight),
        size.width * 0.5870350,
        size.height * (0.5463309 - 1 + valueRight),
        size.width * 0.5781700,
        size.height * (0.5468936 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5702850,
        size.height * (0.5469164 - 1 + valueRight),
        size.width * 0.5712850,
        size.height * (0.5576745 - 1 + valueRight),
        size.width * 0.5644150,
        size.height * (0.5630773 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5575450,
        size.height * (0.5684800 - 1 + valueRight),
        size.width * 0.5530150,
        size.height * (0.5545618 - 1 + valueRight),
        size.width * 0.5473300,
        size.height * (0.5616382 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5416450,
        size.height * (0.5687173 - 1 + valueRight),
        size.width * 0.5463100,
        size.height * (0.5752800 - 1 + valueRight),
        size.width * 0.5419100,
        size.height * (0.5832655 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5365750,
        size.height * (0.5920400 - 1 + valueRight),
        size.width * 0.5345900,
        size.height * (0.5946127 - 1 + valueRight),
        size.width * 0.5349600,
        size.height * (0.6053745 - 1 + valueRight),
      )
      ..close()
      ..moveTo(
        size.width * 0.7041250,
        size.height * (0.6721282 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.7041250,
        size.height * (0.6920636 - 1 + valueRight),
        size.width * 0.7027200,
        size.height * (0.7106618 - 1 + valueRight),
        size.width * 0.6999100,
        size.height * (0.7279236 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.6971050,
        size.height * (0.7451845 - 1 + valueRight),
        size.width * 0.6928900,
        size.height * (0.7613518 - 1 + valueRight),
        size.width * 0.6872750,
        size.height * (0.7764255 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.6761800,
        size.height * (0.8063291 - 1 + valueRight),
        size.width * 0.6617400,
        size.height * (0.8299109 - 1 + valueRight),
        size.width * 0.6439550,
        size.height * (0.8471727 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.6263050,
        size.height * (0.8644336 - 1 + valueRight),
        size.width * 0.6075850,
        size.height * (0.8730645 - 1 + valueRight),
        size.width * 0.5878000,
        size.height * (0.8730645 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5541050,
        size.height * (0.8730645 - 1 + valueRight),
        size.width * 0.5262950,
        size.height * (0.8547091 - 1 + valueRight),
        size.width * 0.5043650,
        size.height * (0.8179982 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.4825710,
        size.height * (0.7810445 - 1 + valueRight),
        size.width * 0.4716735,
        size.height * (0.7343655 - 1 + valueRight),
        size.width * 0.4716735,
        size.height * (0.6779627 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.4716735,
        size.height * (0.6181555 - 1 + valueRight),
        size.width * 0.4827715,
        size.height * (0.5692891 - 1 + valueRight),
        size.width * 0.5049650,
        size.height * (0.5313627 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5272950,
        size.height * (0.4931936 - 1 + valueRight),
        size.width * 0.5560450,
        size.height * (0.4741082 - 1 + valueRight),
        size.width * 0.5912100,
        size.height * (0.4741082 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.6243650,
        size.height * (0.4741082 - 1 + valueRight),
        size.width * 0.6514450,
        size.height * (0.4925855 - 1 + valueRight),
        size.width * 0.6724350,
        size.height * (0.5295391 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.6935600,
        size.height * (0.5664936 - 1 + valueRight),
        size.width * 0.7041250,
        size.height * (0.6140227 - 1 + valueRight),
        size.width * 0.7041250,
        size.height * (0.6721282 - 1 + valueRight),
      )
      ..close();

    paint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color(0xff223382).withOpacity(1);

    canvas.drawPath(path, paint);

    path = Path()
      ..moveTo(
        size.width * 0.4575975,
        size.height * (0.6721282 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.4575975,
        size.height * (0.6920636 - 1 + valueLeft),
        size.width * 0.4561935,
        size.height * (0.7106618 - 1 + valueLeft),
        size.width * 0.4533860,
        size.height * (0.7279236 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.4505780,
        size.height * (0.7451845 - 1 + valueLeft),
        size.width * 0.4463665,
        size.height * (0.7613518 - 1 + valueLeft),
        size.width * 0.4407505,
        size.height * (0.7764255 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.4296530,
        size.height * (0.8063291 - 1 + valueLeft),
        size.width * 0.4142390,
        size.height * (0.8291627 - 1 + valueLeft),
        size.width * 0.3974295,
        size.height * (0.8471727 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.3661570,
        size.height * (0.8806773 - 1 + valueLeft),
        size.width * 0.3157450,
        size.height * (0.8794455 - 1 + valueLeft),
        size.width * 0.2962640,
        size.height * (0.8600445 - 1 + valueLeft),
      )
      ..cubicTo(
        size.width * 0.3113270,
        size.height * (0.8607255 - 1 + valueLeft),
        size.width * 0.4334755,
        size.height * (0.8356827 - 1 + valueLeft),
        size.width * 0.4575975,
        size.height * (0.6721282 - 1 + valueLeft),
      )
      ..close();

    paint = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 0.4604575, size.height * 0.8768109),
          Offset(size.width * 0.4337255, size.height * 0.7347700), [
        const Color(0xff2F59B5).withOpacity(1),
        const Color(0xff2F59B5).withOpacity(0)
      ], [
        0,
        1
      ]);

    canvas.drawPath(path, paint);

    path = Path()
      ..moveTo(
        size.width * 0.7041250,
        size.height * (0.6721282 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.7041250,
        size.height * (0.6920636 - 1 + valueRight),
        size.width * 0.7027200,
        size.height * (0.7106618 - 1 + valueRight),
        size.width * 0.6999100,
        size.height * (0.7279236 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.6971050,
        size.height * (0.7451845 - 1 + valueRight),
        size.width * 0.6928900,
        size.height * (0.7613518 - 1 + valueRight),
        size.width * 0.6872750,
        size.height * (0.7764255 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.6761800,
        size.height * (0.8063291 - 1 + valueRight),
        size.width * 0.6607650,
        size.height * (0.8291627 - 1 + valueRight),
        size.width * 0.6439550,
        size.height * (0.8471727 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.6126800,
        size.height * (0.8806773 - 1 + valueRight),
        size.width * 0.5622700,
        size.height * (0.8794455 - 1 + valueRight),
        size.width * 0.5427900,
        size.height * (0.8600445 - 1 + valueRight),
      )
      ..cubicTo(
        size.width * 0.5578500,
        size.height * (0.8607255 - 1 + valueRight),
        size.width * 0.6800000,
        size.height * (0.8356827 - 1 + valueRight),
        size.width * 0.7041250,
        size.height * (0.6721282 - 1 + valueRight),
      )
      ..close();

    paint = Paint()
      ..style = PaintingStyle.fill
      ..shader = ui.Gradient.linear(
          Offset(size.width * 1.017550, size.height * 1.014909),
          Offset(size.width * 0.9137000, size.height * 0.3066709), [
        const Color(0xff2F59B5).withOpacity(1),
        const Color(0xff2F59B5).withOpacity(0)
      ], [
        0,
        1
      ]);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

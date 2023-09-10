import 'package:flutter/material.dart';
import 'package:myapp/page-1/mapa.dart';
import 'package:myapp/page-1/tabela.dart';
import 'package:myapp/utils.dart';
import 'conversor.dart';
import 'simplificador2.dart';

class TelaInicial2 extends StatelessWidget {
  const TelaInicial2({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // telainicialXfu (1:3)
        padding: EdgeInsets.fromLTRB(0 * fem, 32 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        height: 800 * fem,
        decoration: BoxDecoration(
          color: Color(0xff114b5f),
        ),
        child: TextButton(
            // frame1eEj (62:72)
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: LayoutBuilder(builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  height: 2449 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // textosiniciaisxmD (71:74)
                        margin: EdgeInsets.fromLTRB(
                            41 * fem, 0 * fem, 41 * fem, 22 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // olsejabemvindoaoUjZ (13:8)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 1 * fem),
                              child: Text(
                                'Olá, seja bem-vindo ao',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Nunito',
                                  fontSize: 25 * ffem,
                                  fontWeight: FontWeight.w900,
                                  height: 1.3625 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Text(
                              // bitabit9qh (18:11)
                              ' BIT-A-BIT',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Nunito',
                                fontSize: 30 * ffem,
                                fontWeight: FontWeight.w900,
                                height: 1.3625 * ffem / fem,
                                color: Color(0xffdfee36),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroup5fqjtoH (CJ2dTvs9VSZhr4NznA5fQj)
                        padding: EdgeInsets.fromLTRB(
                            33 * fem, 34 * fem, 33 * fem, 45 * fem),
                        width: double.infinity,
                        height: 2350 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30 * fem),
                            topRight: Radius.circular(30 * fem),
                          ),
                        ),
                        child: Container(
                          // recursosdoaplicativooQT (62:71)
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // conversordebaseswWf (62:67)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 1 * fem, 46 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 36 * fem, 0 * fem, 32 * fem),
                                width: 293 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff1a936f)),
                                  color: Color(0xff88d498),
                                  borderRadius: BorderRadius.circular(30 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // conversordebasesChV (18:13)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 12 * fem),
                                      child: Text(
                                        'Conversor de bases',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 28 * ffem,
                                          fontWeight: FontWeight.w900,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // autogroupoa797Jf (CJ2ipmwCXzZL8pAc4noA79)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 27.76 * fem),
                                      width: double.infinity,
                                      height: 180.24 * fem,
                                      child: Image.asset('assets/page-1/images/Conversor.png'),
                                    ),
                                    Container(
                                      // botoentrarUw9 (128:66)
                                      margin: EdgeInsets.fromLTRB(
                                          33 * fem, 0 * fem, 37 * fem, 0 * fem),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Conversor2()));
                                        },
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          height: 62 * fem,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xff000000)),
                                            color: Color(0xffdfee36),
                                            borderRadius:
                                                BorderRadius.circular(30 * fem),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset:
                                                    Offset(0 * fem, 4 * fem),
                                                blurRadius: 2 * fem,
                                              ),
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset:
                                                    Offset(0 * fem, 4 * fem),
                                                blurRadius: 2 * fem,
                                              ),
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset:
                                                    Offset(0 * fem, 4 * fem),
                                                blurRadius: 2 * fem,
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Entrar',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Nunito',
                                                fontSize: 30 * ffem,
                                                fontWeight: FontWeight.w900,
                                                height: 1.3625 * ffem / fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // simplificaobooleanaSWb (62:68)
                                margin: EdgeInsets.fromLTRB(
                                    1 * fem, 0 * fem, 0 * fem, 45 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    35 * fem, 31 * fem, 35 * fem, 48 * fem),
                                width: 293 * fem,
                                height: 502 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff1a936f)),
                                  color: Color(0xff88d498),
                                  borderRadius: BorderRadius.circular(30 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // simplificaobooleanaVUs (35:6)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 2 * fem, 25 * fem),
                                      constraints: BoxConstraints(
                                        maxWidth: 181 * fem,
                                      ),
                                      child: Text(
                                        'Simplificação Booleana',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 28 * ffem,
                                          fontWeight: FontWeight.w900,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // autogroupf9jxNoZ (CJ2iCTeNovKhSp2MZZF9JX)
                                      margin: EdgeInsets.fromLTRB(
                                          4 * fem, 0 * fem, 7 * fem, 0 * fem),
                                      width: double.infinity,
                                      height: 236 * fem,
                                      child: Image.asset('assets/page-1/images/Simplificacao.png', ),
                                    ),
                                    TextButton(
                                      // botoentrart9d (159:49)
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => Simplificacao2()));
                                      },
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 62 * fem,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff000000)),
                                          color: Color(0xffdfee36),
                                          borderRadius:
                                              BorderRadius.circular(30 * fem),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0 * fem, 4 * fem),
                                              blurRadius: 2 * fem,
                                            ),
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0 * fem, 4 * fem),
                                              blurRadius: 2 * fem,
                                            ),
                                            BoxShadow(
                                              color: Color(0x3f000000),
                                              offset: Offset(0 * fem, 4 * fem),
                                              blurRadius: 2 * fem,
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Entrar',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Nunito',
                                              fontSize: 30 * ffem,
                                              fontWeight: FontWeight.w900,
                                              height: 1.3625 * ffem / fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // mapadekarnaugh5zo (62:69)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 1 * fem, 45 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 42 * fem, 0 * fem, 68 * fem),
                                width: 293 * fem,
                                height: 547 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff1a936f)),
                                  color: Color(0xff88d498),
                                  borderRadius: BorderRadius.circular(30 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // mapadekarnaugh9Us (35:15)
                                      margin: EdgeInsets.fromLTRB(
                                          2 * fem, 0 * fem, 0 * fem, 12 * fem),
                                      child: Text(
                                        'Mapa de Karnaugh',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 28 * ffem,
                                          fontWeight: FontWeight.w900,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // autogroupodjfEmD (CJ2hR4nM9q2f5or3S1odJF)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 33 * fem, 33 * fem),
                                      width: double.infinity,
                                      height: 290 * fem,
                                      child: Image.asset('assets/page-1/images/Mapa.png'),
                                    ),
                                    Container(
                                      // botoentrarzjh (209:173)
                                      margin: EdgeInsets.fromLTRB(
                                          35 * fem, 0 * fem, 35 * fem, 0 * fem),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Mapa()));
                                        },
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          width: double.infinity,
                                          height: 62 * fem,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xff000000)),
                                            color: Color(0xffdfee36),
                                            borderRadius:
                                                BorderRadius.circular(30 * fem),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset:
                                                    Offset(0 * fem, 4 * fem),
                                                blurRadius: 2 * fem,
                                              ),
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset:
                                                    Offset(0 * fem, 4 * fem),
                                                blurRadius: 2 * fem,
                                              ),
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset:
                                                    Offset(0 * fem, 4 * fem),
                                                blurRadius: 2 * fem,
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Entrar',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Nunito',
                                                fontSize: 30 * ffem,
                                                fontWeight: FontWeight.w900,
                                                height: 1.3625 * ffem / fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // tabeladaverdadeBJP (62:70)
                                margin: EdgeInsets.fromLTRB(
                                    1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    21.5 * fem, 31 * fem, 23.5 * fem, 42 * fem),
                                width: 293 * fem,
                                height: 697 * fem,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xff1a936f)),
                                  color: Color(0xff88d498),
                                  borderRadius: BorderRadius.circular(30 * fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // tabeladaverdadeSVD (58:3)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 25 * fem),
                                      child: Text(
                                        'Tabela da verdade',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Nunito',
                                          fontSize: 28 * ffem,
                                          fontWeight: FontWeight.w900,
                                          height: 1.3625 * ffem / fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // autogroup7audKZ1 (CJ2eGA37z81a9C1a997AuD)
                                      margin: EdgeInsets.fromLTRB(15 * fem,
                                          0 * fem, 15 * fem, 21.99 * fem),
                                      width: double.infinity,
                                      height: 450 * fem,
                                      child: Container(
                                        // autogroupg35qqnF (CJ2eoe8fFaZcRFKu6pG35q)
                                        width: 300 * fem,
                                        height: double.infinity,
                                        child: Image.asset('assets/page-1/images/Tabela.png'),
                                      ),
                                    ),
                                    Container(
                                      // botoentrarkJB (209:207)
                                      margin: EdgeInsets.fromLTRB(
                                          16 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Tabela()));
                                        },
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        child: Container(
                                          width: 223 * fem,
                                          height: 62 * fem,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xff000000)),
                                            color: Color(0xffdfee36),
                                            borderRadius:
                                                BorderRadius.circular(30 * fem),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset:
                                                    Offset(0 * fem, 4 * fem),
                                                blurRadius: 2 * fem,
                                              ),
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset:
                                                    Offset(0 * fem, 4 * fem),
                                                blurRadius: 2 * fem,
                                              ),
                                              BoxShadow(
                                                color: Color(0x3f000000),
                                                offset:
                                                    Offset(0 * fem, 4 * fem),
                                                blurRadius: 2 * fem,
                                              ),
                                            ],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Entrar',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Nunito',
                                                fontSize: 30 * ffem,
                                                fontWeight: FontWeight.w900,
                                                height: 1.3625 * ffem / fem,
                                                color: Color(0xff000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            })),
      ),
    );
  }
}

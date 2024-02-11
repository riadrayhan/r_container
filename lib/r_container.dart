library r_container;

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';

class R_Container extends StatelessWidget {

  final String? title;
  final String? subtitle;
  final String? subtitle2;
  final String? subtitle3;
  final String? subtitle4;
  final String? imageUrl;
  final String? fbUrl;
  final String? mailUrl;
  final String? callUrl;


  const R_Container({
    super.key,
    required this.title,
    this.subtitle,
    this.subtitle2,
    this.subtitle3,
    this.subtitle4,
    this.imageUrl, this.fbUrl, this.mailUrl, this.callUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/1.5,
            width:  MediaQuery.of(context).size.width/2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Neumorphic(
                    style: const NeumorphicStyle(
                      border: NeumorphicBorder(),

                    ),
                    curve: Curves.bounceInOut,
                    child:Column(
                      children: [
                        NeumorphicButton(
                          onPressed: () {
                          },
                          style: const NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                          ),
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                              height: 100,
                              width:  MediaQuery.of(context).size.width/2.1,
                              child: Image.network(imageUrl?? '', fit: BoxFit.fill,)),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: NeumorphicButton(
                              onPressed: () {
                              },
                              style: NeumorphicStyle(
                                shape: NeumorphicShape.convex,
                                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                              ),
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Align(alignment: Alignment.centerLeft,
                                    child: Text(title ?? 'User Name',style: const TextStyle(
                                      fontSize: 18,fontWeight: FontWeight.bold
                                    ),),),

                                   Align(alignment: Alignment.centerLeft,
                                      child: Text(subtitle??'subtitle')),

                                  Align(alignment: Alignment.centerLeft,
                                      child: Text(subtitle2??'subtitle2')),

                                  Align(alignment: Alignment.centerLeft,
                                      child: Text(subtitle3??'')),

                                  Align(alignment: Alignment.centerLeft,
                                      child: Text(subtitle4??'')),
                                ],
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13,top: 8,right: 13,bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              NeumorphicButton(
                                  onPressed: () => launch(fbUrl??''),
                                  style: const NeumorphicStyle(
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.stadium(),
                                  ),
                                  padding: const EdgeInsets.all(12.0),
                                  child:const Icon(Icons.facebook,color: Colors.indigo,)
                              ),
                              //============//
                              NeumorphicButton(
                                  onPressed: () => launch('mailto:$mailUrl'),
                                  style: const NeumorphicStyle(
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.stadium(),
                                  ),
                                  padding: const EdgeInsets.all(12.0),
                                  child:const Icon(Icons.mail,color: Colors.red,)
                              ),
                              //============//
                              NeumorphicButton(

                                  onPressed: () => launch('tel:$callUrl??',),
                                  style: const NeumorphicStyle(
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.stadium(),
                                  ),
                                  padding: const EdgeInsets.all(12.0),
                                  child:const Icon(Icons.call,color: Colors.teal,)
                              ),
                            ],
                          ),
                        )

                      ],
                    )
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

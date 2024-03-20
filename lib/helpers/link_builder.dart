import 'package:url_launcher/url_launcher.dart';

class LinkBuilder {
  LinkBuilder._();

  static void link() {
    String pieceOne = 'https://clickc';
    String pieceTwo = 'redit.g2a';
    String pieceThree = 'fse.com/click?p';
    String pieceFour = 'id=21&offer_id=39&sub1=1&sub2=CCtestNetBrand';

    String result = pieceOne + pieceTwo + pieceThree + pieceFour;

    _launchURL(result);
  }

  static _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      // you can change url here
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}

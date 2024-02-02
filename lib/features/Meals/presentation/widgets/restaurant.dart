import 'package:flutter/material.dart';
class Restaurant extends StatelessWidget {
  const Restaurant({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 73,
      height:73,
      margin: const EdgeInsets.only(right: 8),
      decoration:BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("https://s3-alpha-sig.figma.com/img/6529/d6b1/b04bde37a98a515cf3dff4c7ec8ff024?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cqdJZkjCzxfmAyj01lYGAxBQPqYvZO~JahBBJ4F18fLGSlneA-J0p1~~7VvLG7Ke9Unei5nxgsPiFKTcS7ht~nv0hWWn5PHGR0iiRDzs6c2Jl~BUMi3TyL1~upADYaikSZSRgVD4W-xe8txF1mVZiMB69f2FlHsOrHoqduU~k2N1A5HN1mNprDoGt8-l7xz3z~TQzjlnaI6uNoYC8355BCwOTM2SqK0JirRBBcUEfv7lwKOv2OIFmDDvERMjLz1gNeTPhkvOeXHTZyXRiNPDqLPbcyGm5pWf~cTUZbiCfAxs1nv-0zwP28wC0NlSA4dBQ3i2lABoX5TPBDq5Q2-fnA__"),
              fit: BoxFit.fitWidth
          ),
          shape: BoxShape.circle
      ),
    );
  }
}
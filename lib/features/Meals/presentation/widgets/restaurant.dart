import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //   final CachedNetworkImage image = CachedNetworkImage(
    //   imageUrl:
    //       "https://s3-alpha-sig.figma.com/img/6529/d6b1/b04bde37a98a515cf3dff4c7ec8ff024?Expires=1707696000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cqdJZkjCzxfmAyj01lYGAxBQPqYvZO~JahBBJ4F18fLGSlneA-J0p1~~7VvLG7Ke9Unei5nxgsPiFKTcS7ht~nv0hWWn5PHGR0iiRDzs6c2Jl~BUMi3TyL1~upADYaikSZSRgVD4W-xe8txF1mVZiMB69f2FlHsOrHoqduU~k2N1A5HN1mNprDoGt8-l7xz3z~TQzjlnaI6uNoYC8355BCwOTM2SqK0JirRBBcUEfv7lwKOv2OIFmDDvERMjLz1gNeTPhkvOeXHTZyXRiNPDqLPbcyGm5pWf~cTUZbiCfAxs1nv-0zwP28wC0NlSA4dBQ3i2lABoX5TPBDq5Q2-fnA__",
    //   placeholder: (context, url) => const CircularProgressIndicator(),
    //   errorWidget: (context, url, error) => const Icon(Icons.error),
    // );
    return Container(
      width: 73,
      height: 73,
      margin: const EdgeInsets.only(right: 8),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: CachedNetworkImageProvider(
                "https://s3-alpha-sig.figma.com/img/6529/d6b1/b04bde37a98a515cf3dff4c7ec8ff024?Expires=1710115200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dguRLVCDqxKqWfkn9q6ZmUcz6QxcAslbpsX2JV6PlguqeSd2rTvROAfI3-jG2ig2sqPUaiN8SzkMrWiu4oyUB6F8YheVeB1xF2N4gaRIJXxy3bT1iACJVYYXFecIej929AGQ8043kIM-FflCgMiH8TlKeekzOzNJX2fQ6Vlu2mM4T91Ydu8TVUMaHg07CFW6cfKaygKQQmT2AjsbLsHipCZvG5tEOu9G4q1BdlhJ8ggikeMR6jCl6Zl1MFlpBRkali4kKi4QEv~a5t4OTe-V46Kcag5gyLBcDic4UgZc5AiOTwgLsQe9ODZmxtGgADbeARGvqsEf6eA7bqzjOo96RQ__",
              ),
              fit: BoxFit.fitWidth),
          shape: BoxShape.circle),
    );
  }
}

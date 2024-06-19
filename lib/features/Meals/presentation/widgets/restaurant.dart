import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RestaurantImage extends StatelessWidget {
  const RestaurantImage({
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
"https://s3-alpha-sig.figma.com/img/6529/d6b1/b04bde37a98a515cf3dff4c7ec8ff024?Expires=1717372800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=IHI7kl4-f5cqIQPDsg7lcBQ1xPWZ3196NC0RFico2eNlLjxYUY9Z1khu8R9Y99RMABJetKWlLK7WKCG86vRlbUtb7FVP5t9o4zlVEUDtcGW8K5-zAr51fvbN8suwpWmWMheWyeOYXtQRsZQFGIKXlohYoPjs2FG2Ulq-XEQULx9QwNYrWJcf-pQ2Bas6jjSdUqYp~P4gklmtgWuuHHDttMuk1Qw8HDwYSc~jarszqAZrKjCaTcYpG7afqX8u4OhBJZSiWZhC1rW~Wj4PAFu4HBQR6uxHJGh4cxO8w0kI1ealkDdxuF04qG9BbYDa3YjFWbXxTv6t1XMLLUUAn0ig6g__",
              ),
              fit: BoxFit.fitWidth),
          shape: BoxShape.circle),
    );
  }
}

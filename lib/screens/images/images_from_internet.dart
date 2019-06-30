import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImagesFromInternet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CachedNetworkImage(
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => new Icon(Icons.error),
          imageUrl:
              "https://thumbs-prod.si-cdn.com/XblFt9ISewKzPIExIVyDfn-cmxA=/800x600/filters:no_upscale()/https://public-media.si-cdn.com/filer/1f/d6/1fd69280-e34b-4fc4-b765-e0f96561dca8/gfp-michigan-upper-peninsula-shoreline-of-lake-superior.jpg"),
    );
  }
}

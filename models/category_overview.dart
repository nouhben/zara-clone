import 'package:zara_clone/models/sex_cagetogry.dart';

class Overview {
  final String title;
  final String description;
  final String image;
  final SexCategory sex;

  const Overview({
    required this.title,
    required this.description,
    required this.image,
    required this.sex,
  });
}

List<Overview> menCategoryOverviews = [
  Overview(
    title: 'collection',
    description: 'Discover this week\'s pieces from our latest collection\n Autumn Winter Man Collection',
    image: 'https://static.zara.net/photos///contents/mkt/spots/aw20-north-collection-man/subhome-xmedia-53//w/1280/landscape_0.jpg?ts=1609241905082',
    sex: SexCategory.MEN,
  ),
  Overview(
    title: 'shoes & bags',
    description: 'Explore this week\'s latest menswear pieces of the season curated for you\nAutumn Winter Man Collection',
    image:
        'https://static.zara.net/photos///contents/mkt/spots/aw20-north-shoes-and-bags-man/subhome-xmedia-51//w/1280/portrait_0.jpg?ts=1608717755963',
    sex: SexCategory.MEN,
  ),
  Overview(
    title: 'special prices',
    description: '',
    image:
        'https://static.zara.net/photos///contents/mkt/spots/aw20-north-special-prices-man/subhome-xmedia-45//w/1280/portrait_0.jpg?ts=1604576383832',
    sex: SexCategory.MEN,
  ),
  Overview(
    title: 'new in',
    description: 'Explore this week\'s latest menswear pieces of the season curated for you\nAutumn Winter Man Collection',
    image:
        'https://static.zara.net/photos///contents/mkt/spots/aw20-north-shoes-and-bags-man/subhome-xmedia-51//w/1280/portrait_0.jpg?ts=1608717755963',
    sex: SexCategory.MEN,
  ),
];
List<Overview> womenCategoryOverviews = [
  Overview(
    title: '',
    description: '',
    image: 'https://static.zara.net/photos///contents/mkt/spots/aw20-north-new-in-woman/subhome-xmedia-51-2//w/1280/portrait_0.jpg?ts=1607977592059',
    sex: SexCategory.WOMEN,
  ),
  Overview(
    title: 'collection',
    description: 'Discover this week\'s pieces from our latest collection\n Autumn Winter Woman Collection',
    image:
        'https://static.zara.net/photos///contents/mkt/spots/aw20-north-collection-woman/subhome-xmedia-50//w/1280/portrait_0.jpg?ts=1607611592287',
    sex: SexCategory.WOMEN,
  ),
  Overview(
    title: 'shoes & bags',
    description: 'Explore the new collection of shoes & bags\nAutumn Winter Woman Collection',
    image:
        'https://static.zara.net/photos///contents/mkt/spots/aw20-north-shoes-and-bags-woman/subhome-xmedia-50//w/1280/portrait_0.jpg?ts=1607611873006',
    sex: SexCategory.WOMEN,
  ),
  Overview(
    title: 'special prices',
    description: '',
    image:
        'https://static.zara.net/photos///contents/mkt/spots/aw20-north-special-prices-woman/subhome-xmedia-49//w/1280/portrait_0.jpg?ts=1607103159534',
    sex: SexCategory.WOMEN,
  ),
  Overview(
    title: 'join life',
    description: 'Working on different programmes to reduce the environmental impact of our products',
    image: 'https://static.zara.net/photos///contents/mkt/spots/aw20-north-join-life-woman/subhome-xmedia-50//w/1280/portrait_0.jpg?ts=1607687167624',
    sex: SexCategory.WOMEN,
  ),
];
List<Overview> kidsCategoryOverviews = [
  Overview(
    title: 'happy kid',
    description: 'Explore this week\'s latest menswear pieces of the season curated for you\nAutumn Winter Man Collection',
    image:
        'https://static.zara.net/photos///contents/mkt/spots/aw20-north-shoes-and-bags-man/subhome-xmedia-51//w/1280/portrait_0.jpg?ts=1608717755963',
    sex: SexCategory.KIDS,
  ),
  Overview(
    title: 'shoes & bags',
    description: 'Explore this week\'s latest menswear pieces of the season curated for you\nAutumn Winter Man Collection',
    image:
        'https://static.zara.net/photos///contents/mkt/spots/aw20-north-shoes-and-bags-man/subhome-xmedia-51//w/1280/portrait_0.jpg?ts=1608717755963',
    sex: SexCategory.KIDS,
  ),
];

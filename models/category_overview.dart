import 'package:zara_clone/screens/home/components/body.dart';

class Overview {
  final String title;
  final String description;
  final String image;
  final SexCategory sex;

  const Overview({
    this.title,
    this.description,
    this.image,
    this.sex,
  });
}

List<Overview> menCategoryOverviews = [
  Overview(
    title: 'men coats',
    description: 'Explore this week\'s latest menswear pieces of the season curated for you\nAutumn Winter Man Collection',
    image:
        'https://static.zara.net/photos///contents/mkt/spots/aw20-north-shoes-and-bags-man/subhome-xmedia-51//w/1280/portrait_0.jpg?ts=1608717755963',
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
    title: 'fall collection',
    description: 'Explore this week\'s latest menswear pieces of the season curated for you\nAutumn Winter Man Collection',
    image:
        'https://static.zara.net/photos///contents/mkt/spots/aw20-north-shoes-and-bags-man/subhome-xmedia-51//w/1280/portrait_0.jpg?ts=1608717755963',
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
    title: 'women special',
    description: 'Explore this week\'s latest menswear pieces of the season curated for you\nAutumn Winter Man Collection',
    image:
        'https://static.zara.net/photos///contents/mkt/spots/aw20-north-shoes-and-bags-man/subhome-xmedia-51//w/1280/portrait_0.jpg?ts=1608717755963',
    sex: SexCategory.WOMEN,
  ),
  Overview(
    title: 'shoes & bags',
    description: 'Explore this week\'s latest menswear pieces of the season curated for you\nAutumn Winter Man Collection',
    image:
        'https://static.zara.net/photos///contents/mkt/spots/aw20-north-shoes-and-bags-man/subhome-xmedia-51//w/1280/portrait_0.jpg?ts=1608717755963',
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

class Categories{
  String imageUrl;
  String name;
  String restname;
  int rating;
  String location;
  String startTime;
  String endTime;


  Categories({
    this.imageUrl,
    this.name,
    this.restname,
    this.rating,
    this.location,
    this.startTime,
    this.endTime,
});

}
List<Categories> cuisines=[
  Categories(
    imageUrl: 'assets/images/pizza.gif',
    name: 'Arbian',
    restname: 'Danish',
    rating: 3,
    location: 'Attarvar',
    startTime: '9:00 am',
    endTime: '11:00 pm',
  ),
  Categories(
    imageUrl: 'assets/images/burger.jpg',
    name: 'Continental',
    restname: 'Diesel Cafe',
    rating: 4,
    location: 'Bendurwell',
   startTime: '9:00 am',
    endTime: '10:00 pm',
  ),
  Categories(
    imageUrl: 'assets/images/background.jpg',
    name: 'Chinese',
    restname: 'Hao Hao',
    rating: 5,
    location: 'Jyothi',
    startTime: '9:00',
    endTime: '10:00 pm'
  ),

];
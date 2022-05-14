class ProjectController{
  int index = 0;
  int nav_index = 0;
  int currentDateSelectedIndex = 0;
  int val = 1;
  int apple_index = 0;
  int favourite_index = 0;
  int item_count = 4;
  int item_count1 = 8;
  int ind = 0;
  double checken_price = 3.10;
  double RedApples_price = 3.10;
  bool isPress = false;
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  int itemCount = 0;




  List tab_bar_names = ['Overview', 'Ingredienrs', 'Video', 'Recipe'];
  List favourites = [
    'Red apples\n1kg indian\n\$1.99',
    'Eggs\n1 dozzan,Local \n\$1.50',
    'Prawns\n1 kg,Fry \n\$2.10',
    'Chicken\n1 kg,with skin \n\$3.10',
  ];
  List days = [
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20",
  ];

  List listOfDays = [
    "Sat",
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
  ];

  List vegetables = [
    'Vegetables',
    'Fruits',
    'Meat & fish',
    'Dairy & egg',
    'Beverates'
  ];
  List recipes = ['Breakfast', 'Lunch', 'Appetizers', 'Fast food', 'Soups'];

  List vegetables_images = [
    'images/0.jpg',
    'images/2.jpg',
    'images/3.jpg',
    'images/4.jpg',
    'images/6.jpg',
  ];
  List apples_images = [
    'images/11.jpg',
    'images/12.jpg',
    'images/13.jpg',
    'images/14.jpg',

  ];


  List recipes_images = [
    'images/21.jpg',
    'images/22.jpg',
    'images/23.jpg',
    'images/25.jpg',

  ];
  List checkout_title = [
    'Checkout',
    'Delivery',
    'Payment',
    'Promo Code',
    'Total Cost'
  ];
  List checkout_trailing = [
    '',
    'Select Method & Time  >',
    'Select Method  >',
    'Pick discount  >',
    '\$13.97  >'
  ];
  List dm=[
    'images/p5.jpg',
    'images/p6.jpg',
    'images/p1.jpg',

  ];
}

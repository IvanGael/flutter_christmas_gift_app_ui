class GiftCategory{
  String name;
  String imagePath;

  GiftCategory({required this.name, required this.imagePath});

  
  static List<GiftCategory> giftCategoryList(){
    return [
      GiftCategory(name: "Gift Ideas", imagePath: "assets/images/image5.png"),
      GiftCategory(name: "Budget Tracker", imagePath: "assets/images/image6.png"),
      GiftCategory(name: "DIY Ideas", imagePath: "assets/images/image7.png"),
      GiftCategory(name: "Budget", imagePath: "assets/images/image8.png")
    ];
  }
}
class ArtBoard {
  String artBoardName;
  String artistName;
  String artistAvatar;
  List<Images> artBoardImages;
  List<Categories> categories;
  String artBoardPrice;
  String artBoardDescription;
  ArtBoard({this.artBoardName,this.artistName, this.artistAvatar,this.artBoardImages,this.artBoardDescription,this.artBoardPrice,this.categories,});
}

class Categories {
  int id;
  String name;

  Categories({this.id, this.name});
}

class Images {
  String src;
  Images({this.src});
}



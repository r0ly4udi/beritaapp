class PostByKat {
  int id;
  String title;
  String seotitle;
  String content;
  String metaDescription;
  String picture;
  String pictureDescription;
  String tag;
  String type;
  String headline;
  String comment;
  int hits;
  String createdAt;
  String updatedAt;
  int commentsCount;
  Category category;
  CreatedBy createdBy;
  UpdatedBy updatedBy;

  PostByKat(
      {this.id,
      this.title,
      this.seotitle,
      this.content,
      this.metaDescription,
      this.picture,
      this.pictureDescription,
      this.tag,
      this.type,
      this.headline,
      this.comment,
      this.hits,
      this.createdAt,
      this.updatedAt,
      this.commentsCount,
      this.category,
      this.createdBy,
      this.updatedBy});

  PostByKat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    seotitle = json['seotitle'];
    content = json['content'];
    metaDescription = json['meta_description'];
    picture = json['picture'];
    pictureDescription = json['picture_description'];
    tag = json['tag'];
    type = json['type'];
    headline = json['headline'];
    comment = json['comment'];
    hits = json['hits'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    commentsCount = json['comments_count'];
    category = json['category'] != null
        ? new Category.fromJson(json['category'])
        : null;
    createdBy = json['created_by'] != null
        ? new CreatedBy.fromJson(json['created_by'])
        : null;
    updatedBy = json['updated_by'] != null
        ? new UpdatedBy.fromJson(json['updated_by'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['seotitle'] = this.seotitle;
    data['content'] = this.content;
    data['meta_description'] = this.metaDescription;
    data['picture'] = this.picture;
    data['picture_description'] = this.pictureDescription;
    data['tag'] = this.tag;
    data['type'] = this.type;
    data['headline'] = this.headline;
    data['comment'] = this.comment;
    data['hits'] = this.hits;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['comments_count'] = this.commentsCount;
    if (this.category != null) {
      data['category'] = this.category.toJson();
    }
    if (this.createdBy != null) {
      data['created_by'] = this.createdBy.toJson();
    }
    if (this.updatedBy != null) {
      data['updated_by'] = this.updatedBy.toJson();
    }
    return data;
  }
}

class Category {
  int id;
  int parent;
  String title;
  String seotitle;
  String picture;

  Category({this.id, this.parent, this.title, this.seotitle, this.picture});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parent = json['parent'];
    title = json['title'];
    seotitle = json['seotitle'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['parent'] = this.parent;
    data['title'] = this.title;
    data['seotitle'] = this.seotitle;
    data['picture'] = this.picture;
    return data;
  }
}

class CreatedBy {
  int id;
  String name;
  String username;
  Null bio;
  String picture;

  CreatedBy({this.id, this.name, this.username, this.bio, this.picture});

  CreatedBy.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    bio = json['bio'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['bio'] = this.bio;
    data['picture'] = this.picture;
    return data;
  }
}

class UpdatedBy {
  int id;
  String name;
  String username;
  Null bio;
  Null picture;

  UpdatedBy({this.id, this.name, this.username, this.bio, this.picture});

  UpdatedBy.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    bio = json['bio'];
    picture = json['picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['bio'] = this.bio;
    data['picture'] = this.picture;
    return data;
  }
}

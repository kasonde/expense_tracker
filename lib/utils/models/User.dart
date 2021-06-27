class User {
  final String username, token;
  User(this.username, this.token);

  User.fromAuthJson(Map json)
      : username = json["user"]["email"],
        token = json["jwt"];
}

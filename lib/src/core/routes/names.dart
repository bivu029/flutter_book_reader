enum RoutesNameEnum {
  isttime(path: "/ isttime"),
  signin(path: "/signin"),
  dashboard(path: "/dashboard"),
  library(path: "/library"),
  search(path: "search"),
  categories(path: "/categories"),
  profile(path: "/profile"),
  book(
    path: "/book",
  ),
  content(path: "/content");

  const RoutesNameEnum({
    required this.path,
  });

  final String path;


}

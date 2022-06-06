class Filters {
  static final Filters _filters = Filters._internal();
  bool switchcarne = true;
  bool switchpeixe = true;
  bool switchdieta = true;
  bool switchvegetariano = true;

  factory Filters(){
    return _filters;
  }
  Filters._internal();
}

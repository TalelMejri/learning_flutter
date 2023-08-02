class Address {
  int _houseNumber;
  String _street;
  String _city;
  String _postalcode;

  Address(this._houseNumber, this._postalcode, this._city, this._street);

  int get houseNumber => _houseNumber;
  String get street => _street;
  String get city => _city;
  String get postalCode => _postalcode;

  set houseNumber(int val) {
    this._houseNumber = val;
  }

  set street(String val) {
    this._street = val;
  }

  set city(String val) {
    _city = val;
  }

  set postalcode(String val) {
    this._postalcode = val;
  }
}

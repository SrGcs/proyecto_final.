enum CategoricalType { grande, mediano, }

class Categorical {
  CategoricalType categorical;
  bool isSelected = false;

  Categorical(this.categorical, this.isSelected);
}
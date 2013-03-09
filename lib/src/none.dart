part of option;

class None<T> implements Option<T> {

  const None();

  bool isEmpty() {
    return true;
  }

  bool nonEmpty() {
    return false;
  }

  T get() {
    throw "get should never be called on an Option.None";
  }

  T getOrElse(dynamic alternative) {
    if (alternative is Function) {
      return alternative();
    } else {
      return alternative;
    }
  }

  Option<T> orElse(dynamic alternative) {
    if (alternative is Function) {
      return alternative();
    } else {
      return alternative;
    }
  }

  Option<T> map(T mapper(T n)) {
    return this;
  }

  Option<T> flatMap(Option<T> mapper(T n)) {
    return this;
  }

  Option<T> filte(bool predicate(T n)) {
    return this;
  }

}
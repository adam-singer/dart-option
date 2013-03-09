part of option;

class Some<T> implements Option<T> {

  final T _inner;

  const Some(this._inner);

  bool isEmpty() {
    return false;
  }

  bool nonEmpty() {
    return true;
  }

  T get() {
    return this._inner;
  }

  T getOrElse(dynamic alternative) {
    return this._inner;
  }

  Option<T> orElse(dynamic alternative) {
    return this._inner;
  }

  Option<T> map(T mapper(T n)) {
    return new Some(mapper(this._inner));
  }

  Option<T> flatMap(Option<T> flatMapper(T n)) {
    return flatMapper(this._inner);
  }

  Option<T> filter(bool predicate(T n)) {
    if (predicate(this._inner)) {
      return this;
    } else {
      return new None<T>();
    }
  }

}
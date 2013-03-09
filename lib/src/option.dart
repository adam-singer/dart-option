part of option;

abstract class Option<T> {

  bool isEmpty();

  bool nonEmpty();

  T get();

  T getOrElse(dynamic alternative);

  Option<T> orElse(dynamic alternative);

  dynamic orNull();

  /**
   * toLeft
   * toRight
   */

  Option<T> map(T mapper(T n));

  Option<T> flatMap(Option<T> mapper(T n));

  Option<T> filter(bool predicate(T n));

}
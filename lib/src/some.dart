part of option;

class Some<T> implements Option<T> {

  /*
   * var {T} The inner value to wrap over
   */
  final T _inner;

  /**
   * Constant constructor because the inner value should never
   * change because this is an immutable container
   *
   * @param {T} - The value to wrap
   */
  const Some(this._inner);

  /**
   * Returns false
   *
   * @return {bool} - False
   */
  bool isEmpty() {
    return false;
  }

  /**
   * Returns true
   *
   * @return {bool} - True
   */
  bool nonEmpty() {
    return true;
  }

  /**
   * Returns the inner value
   *
   * @return {T} - The inner value
   */
  T get() {
    return this._inner;
  }

  /**
   * Returns the inner value
   *
   * @param {T|T()} alternative - Ignored alternative
   * @return {T}                - The inner value
   */
  T getOrElse(dynamic alternative) {
    return this._inner;
  }

  /**
   * Returns `this`
   *
   * @param {Option<T>|Option<T>()} alternative - Ignored alternative
   * @return {Option<T>}                        - This instance
   */
  Option<T> orElse(dynamic alternative) {
    return this._inner;
  }

  /**
   * Returns the inner value
   *
   * @return {T|null} - Inner value
   */
  dynamic orNull() {
    return this._inner;
  }

  /**
   * Applies the `mapper` to the inner value and wraps the result of
   * the mapper in a new `Option<T>` and returns the new `Option<T>`.
   *
   * @param {T(T n)}     - Mapper to apply to inner value if any.
   * @return {Option<T>} - The mapped result
   */
  Option<T> map(T mapper(T n)) {
    return new Some(mapper(this._inner));
  }

  /**
   * Applies the `flatMapper` to the inner value and returns the new
   * `Option` returned by the `flatMapper`
   *
   * @param {Option<T>(T n)} flatMapper - Flat mapper to apply
   * @return {Option<T>}                - The result of the flat map
   */
  Option<T> flatMap(Option<T> flatMapper(T n)) {
    return flatMapper(this._inner);
  }

  /**
   * Applies predicate to the inner value and if the predicate passes
   * the current `Some` is returned but if it fails it returns a new
   * instance of `None`.
   *
   * @param {bool(T n)} predicate - Predicate to apply
   * @return {Option<T>}          - Result of predicate test
   */
  Option<T> filter(bool predicate(T n)) {
    if (predicate(this._inner)) {
      return this;
    } else {
      return new None<T>();
    }
  }

}
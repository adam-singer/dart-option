part of option;

abstract class Option<T> {

  /**
   * Returns true if type is `None` returns false if type is `Some`
   *
   * @return {bool} - Result of the empty check
   */
  bool isEmpty();

  /**
   * Returns false if type is `None` returns true if type is `Some`
   *
   * @return {bool} - Result of the non-empty check
   */
  bool nonEmpty();

  /**
   * Returns the inner value of the `Option` when called with a `Some`.
   * When called with a `None` this method throws an exception.
   *
   * @return {T} - The inner value
   * @throws     - Throws when called on `None`
   */
  T get();

  /**
   * Returns the inner value if it exists, otherwise it returns the
   * computed value of `alternative`.
   *
   * @param {T|T()} alternative - The value or function of the alternative
   * @return {T}                - The inner value or `alternative`
   */
  T getOrElse(dynamic alternative);

  /**
   * Returns the current `Option` if it's called on a `Some`, otherwise it
   * returns the computed value of `alternative`.
   *
   * @param {Option<T>|Option<T>()} alternative - Value or function of alt
   * @return {Option<T>}                        - Original or alternative
   */
  Option<T> orElse(dynamic alternative);

  /**
   * Returns the inner value when called on `Some`. Returns `null`
   * when called on `None`
   *
   * @return {T|null} - Inner value on existence null otherwise
   */
  dynamic orNull();

  /**
   * Applies the `mapper` to the inner value and wraps the result of
   * the mapper in a new `Option<T>` and returns the new `Option<T>`.
   * If the current `Option` is `None` this function just returns `this`
   *
   * @param {T(T n)}     - Mapper to apply to inner value if any.
   * @return {Option<T>} - The mapped result
   */
  Option<T> map(T mapper(T n));

  /**
   * Applies the `flatMapper` to the inner value and returns the new
   * `Option` returned by the `flatMapper`
   *
   * @param {Option<T>(T n)} flatMapper - Flat mapper to apply
   * @return {Option<T>}                - The result of the flat map
   */
  Option<T> flatMap(Option<T> flatMapper(T n));

  /**
   * Applies predicate to the inner value when called on `Some` and
   * if the predicate passes the current `Some` is returned but if
   * it fails it returns a new instance of `None`. When called on
   * `None` this function just returns an instance of `this`
   *
   * @param {bool(T n)} predicate - Predicate to apply
   * @return {Option<T>}          - Result of predicate test
   */
  Option<T> filter(bool predicate(T n));

}
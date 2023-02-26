abstract class Local<T, In> {
  T get();

  void save(In data);

  void remove();
}

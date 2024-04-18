abstract class Failures{
  String massage;

  Failures(this.massage);
  @override
  String toString() {
    return massage;
  }
}
class RemoteFailures extends Failures{
  RemoteFailures(super.massage);

}
class LocalFailures extends Failures{
  LocalFailures(super.massage);

}
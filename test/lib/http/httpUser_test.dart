import 'package:clothing_roll/http/httpUser.dart';
import 'package:clothing_roll/response/user_response.dart';
import 'package:test/test.dart';
import 'package:logger/logger.dart';

void main() {
  var log = Logger();
  test("testing user register", (){


  Future<bool> loginPost(String uname, String pass) {
    var res = HttpConnectUser().loginUser(uname, pass);
    return res;
  }

  var axpected = loginPost("ajay", "1530ajay");
  var actual = true;

  expect(actual, axpected);





  });
}
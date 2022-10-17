import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class RegisterProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  GetStorage _getStorage = GetStorage('app_storage');

  Future<dynamic?> doRegistration(String name, String email, String userRole,String addressId,
      String password, String confirmPassword) async {
    var userData = new Map();
    userData['name'] = name;
    userData['email'] = email;
    userData['user_role'] = userRole;
    userData['address_id'] = addressId;
    userData['password'] = password;
    userData['confirm_password'] = confirmPassword;

    var response =
    await post("http://172.31.120.238:80/api/register", userData);


    print("errorprovider //////////" + userData.toString());

    print("errorprovider1 //////////" + response.statusCode.toString());

    if (response.statusCode == 200) {
      print("errorafterhit //////////" + response.body.toString());

      try {
        if (response.body['status'] == 200) {
          print("bodystatus //////////" + response.body['status'].toString());
          var emp_id = response.body['emailotp']['user_id'];

          print("resgistration credential ......." + emp_id.toString());
          await saveEmployeeId(emp_id);
          return true;
        }
      } catch (e) {
        print(e.toString());
      }

      //  return response.body;
    } else {
      return false;
    }
  }

  saveEmployeeId(int employeeId) async {
    await _getStorage.write('employee_id', employeeId);
    final int? emp_id = await _getStorage.read('employee_id');
    print('login provider' + emp_id!.toString());
    return true;
  }
}

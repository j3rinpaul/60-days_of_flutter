class ValidatePhoneNum implements Exception {
} //interface is used (refer inheritance)

bool? phoneNumvalid(String phone) {
  if (phone.length == 10) {
    return true;
  } else {
    throw ValidatePhoneNum(); //exception handling definition throw keyword is used
  }
}

void main(List<String> args) {
  try {
    //try-catch is used for exception handling like C or C++
    final phonen = phoneNumvalid("88569");
  } on ValidatePhoneNum catch (_) {  //to catch specific case of exception of ValidatePhoneNum()
    print("Invlaid phone Num");
  } catch (e) { //exception other than invalid phone number is dealt with catch(e) [common/finally/default]
    print(e);
  }
}

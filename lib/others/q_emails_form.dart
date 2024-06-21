class Solution {
  int numUniqueEmails(List<String> emails) {
    Set<String> setEmails = {};

    for (String email in emails) {
      List<String> spl = email.split('@');
      String localName = spl[0].split('+')[0].split('.').join();
      String domainName = spl[1];
      
      setEmails.add('$localName@$domainName');
    }
    print(setEmails);
    return setEmails.length;
  }
}

void main() {
  print(Solution().numUniqueEmails(
      ["test.email+alex@leetcode.com", "test.e.mail+bob.cathy@leetcode.com", "testemail+david@lee.tcode.com"]));
}

class UserDetails{
  final String name;
  final String address;
  UserDetails({required this.name, required this.address});
  
   Map<String, dynamic> getJson() => {
        'name': name,
        'address': address,
      };

  // factory UserDetails.getModelFromJson(Map<String, dynamic> json) {
  //   return UserDetails(name: json["name"], address: json["address"]);
  // } 
}
 
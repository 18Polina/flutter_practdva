class  KlientEntity
{
  late int id;
  final String surname;
  final String name;
  final String middlename;
  final String birthday;


  KlientEntity
  (
{
  this.id = 0,
  required this.surname,
   required this.name,
    required this.middlename,
     required this.birthday,
}
  );
}
abstract class DataBaseRequest{

static String deleteTable(String table) => 'DROP TABLE $table';
  static const String tableRole = 'role';
  static const String tableUser = 'user';
  static const String tableProducttype = 'producttype';
  static const String tableProizvod = 'proizvod';
  static const String tableProduct = 'product';
  static const String tablePost = 'post';
  static const String tablePersonal = 'personal';
  static const String tableKlient = 'klient';
  static const String tableDelivery = 'delivery';


static  const List<String>tableList = 
[
  tableRole,
  tableUser,
  tableProducttype,
  tableProizvod,
  tableProduct,
  tablePost,
  tablePersonal,
  tableKlient,
  tableDelivery
];

static const List<String>tebleCreatList = 
[
  _createTableRole,
  _createTableUser,
  _createTableProducttype,
  _createTableProizvod,
  _createTableProduct,
  _createTablePost,
  _createTablePersonal,
  _createTableKlient,
  _createTableDelivery
];

  /// Запрос для создания таблицы Role
  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Users
  static const String _createTableUser =
      'CREATE TABLE "$tableUser" ("id"	INTEGER,"login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL,"id_role"	INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT) )';

     
  static const String _createTableProducttype =
      'CREATE TABLE "$tableProducttype" ("id" INTEGER,"type" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';


  static const String _createTableProizvod =
      'CREATE TABLE "$tableProizvod" ("id" INTEGER,"city" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableProduct =
'CREATE TABLE "$tableProduct" ( "id"	INTEGER,"name" TEXT NOT NULL UNIQUE,"id_type"	INTEGER, "id_city"	INTEGER, FOREIGN KEY("id_type") REFERENCES "Producttype"("id") ON DELETE CASCADE,FOREIGN KEY("id_city") REFERENCES "Proizvod"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT))';


  static const String _createTablePost =
      'CREATE TABLE "$tablePost" ("id"	INTEGER,"post"	TEXT NOT NULL UNIQUE,PRIMARY KEY("id" AUTOINCREMENT) )';


  static const String _createTablePersonal ='CREATE TABLE "$tablePersonal"("id" INTEGER,"surname" TEXT NOT NULL UNIQUE, "name" TEXT NOT NULL UNIQUE,"middlename" TEXT NOT NULL UNIQUE,"birthday" TEXT NOT NULL UNIQUE,"snils" TEXT NOT NULL UNIQUE, "seriapasport" TEXT NOT NULL UNIQUE, "nomerpasport" TEXT NOT NULL UNIQUE, "salary" TEXT NOT NULL UNIQUE, "id_post"	INTEGER, FOREIGN KEY("id_post") REFERENCES "Post"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableKlient =
      'CREATE TABLE "$tableKlient " ("id"	INTEGER,"surname"	TEXT NOT NULL UNIQUE, "name" TEXT NOT NULL UNIQUE, "middlename" TEXT NOT NULL UNIQUE, "birthday" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT) )';

   
  static const String _createTableDelivery =
    'CREATE TABLE "$tableDelivery" ("id" INTEGER,"address" TEXT NOT NULL UNIQUE,"data" TEXT NOT NULL UNIQUE, "salary" TEXT NOT NULL UNIQUE,"id_personal"	INTEGER, "id_product"	INTEGER, "id_klient"	INTEGER, FOREIGN KEY("id_personal") REFERENCES "Personal"("id") ON DELETE CASCADE,  FOREIGN KEY("id_product") REFERENCES "Product"("id") ON DELETE CASCADE, FOREIGN KEY("id_klient") REFERENCES "Klient"("id") ON DELETE CASCADE,  PRIMARY KEY("id" AUTOINCREMENT))';


}
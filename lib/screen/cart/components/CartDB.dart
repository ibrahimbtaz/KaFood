import 'dart:convert';

import 'package:mycatering/screen/cart/components/CartModel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CartDB {
  static final CartDB instance = CartDB.init();
  static Database? _database;

  CartDB.init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('fav.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';

    await db.execute('''CREATE TABLE $tableCart (
    ${Cart.id} $idType,
    ${Cart.image} $textType,
    ${Cart.name} $textType,
    ${Cart.price} $textType,
    ${Cart.rate} $textType
    
    )''');
  }

  Future<CartModel> create(CartModel news) async {
    final db = await instance.database;

    final id = await db.insert(tableCart, news.toJson());
    return news.copy(id: id);
  }

  Future<bool> read(String? name) async {
    final db = await instance.database;

    final maps = await db.query(
      tableCart,
      columns: Cart.values,
      where: '${Cart.name} = ?',
      whereArgs: [name],
    );

    if (maps.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  Future<List<CartModel>> readAll() async {
    final db = await instance.database;
    final result = await db.query(tableCart);
    return result.map((json) => CartModel.fromJson(json)).toList();
  }

  delete(String? name) async {
    final db = await instance.database;
    try {
      await db.delete(
        tableCart,
        where: '${Cart.name} = ?',
        whereArgs: [name],
      );
    } catch (e) {
      print(e);
    }
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}

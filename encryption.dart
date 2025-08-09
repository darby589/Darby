import 'dart:convert';
import 'package:encrypt/encrypt.dart';
class EncryptionHelper {
static final _key = Key.fromUtf8('my32lengthsupersecretnooneknows1'); // 32 chars
static final _iv = IV.fromLength(16);
static String encrypt(String plainText) {
final encrypter = Encrypter(AES(_key));
final encrypted = encrypter.encrypt(plainText, iv: _iv);
return encrypted.base64;
}
static String decrypt(String encryptedText) {
final encrypter = Encrypter(AES(_key));
final decrypted = encrypter.decrypt64(encryptedText, iv: _iv);
return decrypted;
}
}
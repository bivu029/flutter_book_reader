import 'dart:convert';

/// In its compact form, JSON Web Tokens consist of three parts separated
/// by dots (.), which are:
///   * Header
///   * Payload
///   * Signature
/// Therefore, a JWT typically looks like the following: xxxxx.yyyyy.zzzzz
class JwtToken {
  /// The header typically consists of two parts: the type of the token,
  /// which is JWT, and the signing algorithm being used,
  /// such as HMAC SHA256 or RSA.
  static Map<String, dynamic> header(String token) {
    final payloadBase64 = token.split(".")[0];
    final normalizedPayload = base64.normalize(payloadBase64);
    final payloadString = utf8.decode(base64.decode(normalizedPayload));
    return json.decode(payloadString) as Map<String, dynamic>;
  }

  /// The second part of the token is the payload, which contains the claims.
  /// Claims are statements about an entity and additional data.
  /// There are three types of claims: registered, public, and private claims.
  static Map<String, dynamic> payload(String token) {
    final payloadBase64 = token.split(".")[1];
    final normalizedPayload = base64.normalize(payloadBase64);
    final payloadString = utf8.decode(base64.decode(normalizedPayload));
    return json.decode(payloadString) as Map<String, dynamic>;
  }

  /// Checks when the JWT must not be accepted for processing.
  static bool isExpired(String token) {
    try {
      final expirationDate = getExpirationDate(token);
      return DateTime.now().isAfter(expirationDate);
    } catch (error) {
      return true;
    }
  }

  /// Identifies the expiration time on or after which the JWT must not be
  /// accepted for processing.
  static DateTime getExpirationDate(String token) {
    final decodedToken = payload(token);
    final expirationDate = DateTime.fromMillisecondsSinceEpoch(0)
        .add(Duration(seconds: decodedToken['exp'] as int));
    return expirationDate;
  }

  /// Identifies the time at which the JWT was issued.
  static Duration getTokenTime(String token) {
    final decodedToken = payload(token);
    final expirationDate = DateTime.fromMillisecondsSinceEpoch(0)
        .add(Duration(seconds: decodedToken["iat"] as int));
    return DateTime.now().difference(expirationDate);
  }
}
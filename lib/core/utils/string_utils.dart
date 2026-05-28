class StringUtils {
  static isNullOrEmpty(val) {
    bool iRes = true;
    if (val == null || val == '' || val == "null") {
      iRes = true;
    } else {
      iRes = false;
    }

    return iRes;
  }

  static isNotNullOrEmpty(val) {
    bool iRes = true;
    if (val == null || val == '' || val == "null") {
      iRes = false;
    } else {
      iRes = true;
    }

    return iRes;
  }

  static readDataString(data) {
    String sres = "";
    if (!StringUtils.isNullOrEmpty(data)) {
      try {
        sres = data.toString();

        if (sres == 'null') {
          return "";
        }

        return sres;
      } catch (e) {
        return "";
      }
    } else {
      return "";
    }
  }

  static readDataInt(data) {
    int sres = 0;
    if (!StringUtils.isNullOrEmpty(data)) {
      try {
        sres = StringUtils._convertToInt(data.toString());
        return sres;
      } catch (e) {
        return 0;
      }
    } else {
      return 0;
    }
  }

  static readDataDouble(data) {
    double sres = 0;
    if (!StringUtils.isNullOrEmpty(data)) {
      try {
        sres = StringUtils._convertToDouble(data.toString());
        return sres;
      } catch (e) {
        return 0.0;
      }
    } else {
      return 0.0;
    }
  }

  static readDataBool(data) {
    bool boolres = false;
    if (!StringUtils.isNullOrEmpty(data)) {
      try {
        boolres = _toBoolean(data.toString());
        return boolres;
      } catch (e) {
        return false;
      }
    } else {
      return false;
    }
  }

  static bool _toBoolean(String value) {
    switch (value.toLowerCase()) {
      case "true":
        return true;
      case "t":
        return true;
      case "1":
        return true;
      case "0":
        return false;
      case "false":
        return false;
      case "f":
        return false;
      case "":
        return false;
      default:
        return false;
    }
  }

  static int _convertToInt(String input) {
    return input.isEmpty ? 0 : int.tryParse(input) ?? 0;
  }

  static double _convertToDouble(String input) {
    return input.isEmpty ? 0.0 : double.tryParse(input) ?? 0.0;
  }
}

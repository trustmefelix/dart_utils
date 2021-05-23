import 'package:collection/collection.dart' show IterableExtension;

T? enumFromString<T>(List<T> enumValues, String value)
{
if (value == null || enumValues == null) return null;

return value.contains(".") ?
    enumValues.singleWhereOrNull((x) => x.toString().toLowerCase() == value.toLowerCase()) :
    enumValues.singleWhereOrNull((x) => enumToString(x)!.toLowerCase() == value.toLowerCase());
}

String? enumToString (enumItem)
{
    if (enumItem == null) return null;

    var str = enumItem.toString();

    return str.contains('.') ? enumItem.toString().split('.')[1] : str;
}

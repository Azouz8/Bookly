import 'AccessInfo.dart';
import 'SaleInfo.dart';
import 'VolumeInfo.dart';

class BookModel {
  BookModel({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    required VolumeInfo volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
  }) {
    _kind = kind;
    _id = id;
    _etag = etag;
    _selfLink = selfLink;
    _volumeInfo = volumeInfo;
    _saleInfo = saleInfo;
    _accessInfo = accessInfo;
  }

  BookModel.fromJson(dynamic json) {
    _kind = json['kind'];
    _id = json['id'];
    _etag = json['etag'];
    _selfLink = json['selfLink'];
    _volumeInfo = json['volumeInfo'] != null
        ? VolumeInfo.fromJson(json['volumeInfo'])
        : null;
    _saleInfo =
        json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    _accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
  }

  String? _kind;
  String? _id;
  String? _etag;
  String? _selfLink;
  VolumeInfo? _volumeInfo;
  SaleInfo? _saleInfo;
  AccessInfo? _accessInfo;

  String? get kind => _kind;

  String? get id => _id;

  String? get etag => _etag;

  String? get selfLink => _selfLink;

  VolumeInfo get volumeInfo => _volumeInfo!;

  SaleInfo? get saleInfo => _saleInfo;

  AccessInfo? get accessInfo => _accessInfo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = _kind;
    map['id'] = _id;
    map['etag'] = _etag;
    map['selfLink'] = _selfLink;
    if (_volumeInfo != null) {
      map['volumeInfo'] = _volumeInfo?.toJson();
    }
    if (_saleInfo != null) {
      map['saleInfo'] = _saleInfo?.toJson();
    }
    if (_accessInfo != null) {
      map['accessInfo'] = _accessInfo?.toJson();
    }
    return map;
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// Generator: JsonGenerator
// Target: library
// **************************************************************************

// Generated by owl 0.2.1
// https://github.com/agilord/owl

// ignore: unused_import, library_prefixes
import 'models.dart';
// ignore: unused_import, library_prefixes
import 'dart:convert';
// ignore: unused_import, library_prefixes
import 'package:owl/util/json/core.dart' as _owl_json;

// **************************************************************************
// Generator: JsonGenerator
// Target: class AccessTokenResponse
// **************************************************************************

/// Mapper for AccessTokenResponse
abstract class AccessTokenResponseMapper {
  /// Converts an instance of AccessTokenResponse to Map.
  static Map<String, dynamic> map(AccessTokenResponse object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('access_token', object.accessToken)
          ..put('user', UserMapper.map(object.user)))
        .toMap();
  }

  /// Converts a Map to an instance of AccessTokenResponse.
  static AccessTokenResponse parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final AccessTokenResponse object = new AccessTokenResponse();
    object.accessToken = map['access_token'];
    object.user = UserMapper.parse(map['user']);
    return object;
  }

  /// Converts a JSON string to an instance of AccessTokenResponse.
  static AccessTokenResponse fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of AccessTokenResponse to JSON string.
  static String toJson(AccessTokenResponse object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class User
// **************************************************************************

/// Mapper for User
abstract class UserMapper {
  /// Converts an instance of User to Map.
  static Map<String, dynamic> map(User object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('id', object.id)
          ..put('username', object.username)
          ..put('bio', object.bio)
          ..put('website', object.website)
          ..put('counts', UserCountsMapper.map(object.counts))
          ..put('full_name', object.fullName)
          ..put('profile_picture', object.profilePicture))
        .toMap();
  }

  /// Converts a Map to an instance of User.
  static User parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final User object = new User();
    object.id = map['id'];
    object.username = map['username'];
    object.bio = map['bio'];
    object.website = map['website'];
    object.counts = UserCountsMapper.parse(map['counts']);
    object.fullName = map['full_name'];
    object.profilePicture = map['profile_picture'];
    return object;
  }

  /// Converts a JSON string to an instance of User.
  static User fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of User to JSON string.
  static String toJson(User object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class UserCounts
// **************************************************************************

/// Mapper for UserCounts
abstract class UserCountsMapper {
  /// Converts an instance of UserCounts to Map.
  static Map<String, dynamic> map(UserCounts object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('media', object.media)
          ..put('follows', object.follows)
          ..put('followed_by', object.followedBy))
        .toMap();
  }

  /// Converts a Map to an instance of UserCounts.
  static UserCounts parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final UserCounts object = new UserCounts();
    object.media = map['media'];
    object.follows = map['follows'];
    object.followedBy = map['followed_by'];
    return object;
  }

  /// Converts a JSON string to an instance of UserCounts.
  static UserCounts fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of UserCounts to JSON string.
  static String toJson(UserCounts object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class Media
// **************************************************************************

/// Mapper for Media
abstract class MediaMapper {
  /// Converts an instance of Media to Map.
  static Map<String, dynamic> map(Media object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('id', object.id)
          ..put('type', object.type)
          ..put('filter', object.filter)
          ..put('caption', MediaCaptionMapper.map(object.caption))
          ..put('users_in_photo',
              object.usersInPhoto?.map(UserInPhotoMapper.map)?.toList())
          ..put('tags', object.tags?.toList())
          ..put('comments', CommentOrLikeCountMapper.map(object.comments))
          ..put('likes', CommentOrLikeCountMapper.map(object.likes))
          ..put('user', UserMapper.map(object.user))
          ..put('location', LocationMapper.map(object.location))
          ..put('images', MediaImagesMapper.map(object.images))
          ..put('user_has_liked', object.userHasLiked))
        .toMap();
  }

  /// Converts a Map to an instance of Media.
  static Media parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final Media object = new Media();
    object.id = map['id'];
    object.type = map['type'];
    object.filter = map['filter'];
    object.caption = MediaCaptionMapper.parse(map['caption']);

    // ignore: avoid_as
    object.usersInPhoto = (map['users_in_photo'] as List<dynamic>)
        ?.map(UserInPhotoMapper.parse)
        ?.toList();

    // ignore: avoid_as
    object.tags = (map['tags'] as List<String>)?.toList();
    object.comments = CommentOrLikeCountMapper.parse(map['comments']);
    object.likes = CommentOrLikeCountMapper.parse(map['likes']);
    object.user = UserMapper.parse(map['user']);
    object.location = LocationMapper.parse(map['location']);
    object.images = MediaImagesMapper.parse(map['images']);
    object.userHasLiked = map['user_has_liked'];
    return object;
  }

  /// Converts a JSON string to an instance of Media.
  static Media fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of Media to JSON string.
  static String toJson(Media object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class MediaCaption
// **************************************************************************

/// Mapper for MediaCaption
abstract class MediaCaptionMapper {
  /// Converts an instance of MediaCaption to Map.
  static Map<String, dynamic> map(MediaCaption object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('id', object.id)
          ..put('text', object.text)
          ..put('from', UserMapper.map(object.from)))
        .toMap();
  }

  /// Converts a Map to an instance of MediaCaption.
  static MediaCaption parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final MediaCaption object = new MediaCaption();
    object.id = map['id'];
    object.text = map['text'];
    object.from = UserMapper.parse(map['from']);
    return object;
  }

  /// Converts a JSON string to an instance of MediaCaption.
  static MediaCaption fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of MediaCaption to JSON string.
  static String toJson(MediaCaption object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class Relationship
// **************************************************************************

/// Mapper for Relationship
abstract class RelationshipMapper {
  /// Converts an instance of Relationship to Map.
  static Map<String, dynamic> map(Relationship object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('outgoing_status', object.outgoingStatus)
          ..put('incoming_status', object.incomingStatus))
        .toMap();
  }

  /// Converts a Map to an instance of Relationship.
  static Relationship parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final Relationship object = new Relationship();
    object.outgoingStatus = map['outgoing_status'];
    object.incomingStatus = map['incoming_status'];
    return object;
  }

  /// Converts a JSON string to an instance of Relationship.
  static Relationship fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of Relationship to JSON string.
  static String toJson(Relationship object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class MediaImages
// **************************************************************************

/// Mapper for MediaImages
abstract class MediaImagesMapper {
  /// Converts an instance of MediaImages to Map.
  static Map<String, dynamic> map(MediaImages object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('low_resolution', MediaImageMapper.map(object.lowResolution))
          ..put('thumbnail', MediaImageMapper.map(object.thumbnail))
          ..put('standard_resolution',
              MediaImageMapper.map(object.standardResolution)))
        .toMap();
  }

  /// Converts a Map to an instance of MediaImages.
  static MediaImages parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final MediaImages object = new MediaImages();
    object.lowResolution = MediaImageMapper.parse(map['low_resolution']);
    object.thumbnail = MediaImageMapper.parse(map['thumbnail']);
    object.standardResolution =
        MediaImageMapper.parse(map['standard_resolution']);
    return object;
  }

  /// Converts a JSON string to an instance of MediaImages.
  static MediaImages fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of MediaImages to JSON string.
  static String toJson(MediaImages object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class MediaImage
// **************************************************************************

/// Mapper for MediaImage
abstract class MediaImageMapper {
  /// Converts an instance of MediaImage to Map.
  static Map<String, dynamic> map(MediaImage object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('url', object.url)
          ..put('width', object.width)
          ..put('height', object.height))
        .toMap();
  }

  /// Converts a Map to an instance of MediaImage.
  static MediaImage parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final MediaImage object = new MediaImage();
    object.url = map['url'];
    object.width = map['width'];
    object.height = map['height'];
    return object;
  }

  /// Converts a JSON string to an instance of MediaImage.
  static MediaImage fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of MediaImage to JSON string.
  static String toJson(MediaImage object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class CommentOrLikeCount
// **************************************************************************

/// Mapper for CommentOrLikeCount
abstract class CommentOrLikeCountMapper {
  /// Converts an instance of CommentOrLikeCount to Map.
  static Map<String, dynamic> map(CommentOrLikeCount object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('count', object.count))
        .toMap();
  }

  /// Converts a Map to an instance of CommentOrLikeCount.
  static CommentOrLikeCount parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final CommentOrLikeCount object = new CommentOrLikeCount();
    object.count = map['count'];
    return object;
  }

  /// Converts a JSON string to an instance of CommentOrLikeCount.
  static CommentOrLikeCount fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of CommentOrLikeCount to JSON string.
  static String toJson(CommentOrLikeCount object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class UserInPhoto
// **************************************************************************

/// Mapper for UserInPhoto
abstract class UserInPhotoMapper {
  /// Converts an instance of UserInPhoto to Map.
  static Map<String, dynamic> map(UserInPhoto object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('user', UserMapper.map(object.user))
          ..put('position', UserInPhotoPositionMapper.map(object.position)))
        .toMap();
  }

  /// Converts a Map to an instance of UserInPhoto.
  static UserInPhoto parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final UserInPhoto object = new UserInPhoto();
    object.user = UserMapper.parse(map['user']);
    object.position = UserInPhotoPositionMapper.parse(map['position']);
    return object;
  }

  /// Converts a JSON string to an instance of UserInPhoto.
  static UserInPhoto fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of UserInPhoto to JSON string.
  static String toJson(UserInPhoto object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class UserInPhotoPosition
// **************************************************************************

/// Mapper for UserInPhotoPosition
abstract class UserInPhotoPositionMapper {
  /// Converts an instance of UserInPhotoPosition to Map.
  static Map<String, dynamic> map(UserInPhotoPosition object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('x', object.x)
          ..put('y', object.y))
        .toMap();
  }

  /// Converts a Map to an instance of UserInPhotoPosition.
  static UserInPhotoPosition parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final UserInPhotoPosition object = new UserInPhotoPosition();
    object.x = map['x'];
    object.y = map['y'];
    return object;
  }

  /// Converts a JSON string to an instance of UserInPhotoPosition.
  static UserInPhotoPosition fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of UserInPhotoPosition to JSON string.
  static String toJson(UserInPhotoPosition object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class Comment
// **************************************************************************

/// Mapper for Comment
abstract class CommentMapper {
  /// Converts an instance of Comment to Map.
  static Map<String, dynamic> map(Comment object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('id', object.id)
          ..put('text', object.text)
          ..put('from', UserMapper.map(object.from)))
        .toMap();
  }

  /// Converts a Map to an instance of Comment.
  static Comment parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final Comment object = new Comment();
    object.id = map['id'];
    object.text = map['text'];
    object.from = UserMapper.parse(map['from']);
    return object;
  }

  /// Converts a JSON string to an instance of Comment.
  static Comment fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of Comment to JSON string.
  static String toJson(Comment object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class Tag
// **************************************************************************

/// Mapper for Tag
abstract class TagMapper {
  /// Converts an instance of Tag to Map.
  static Map<String, dynamic> map(Tag object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('name', object.name)
          ..put('media_count', object.mediaCount))
        .toMap();
  }

  /// Converts a Map to an instance of Tag.
  static Tag parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final Tag object = new Tag();
    object.name = map['name'];
    object.mediaCount = map['media_count'];
    return object;
  }

  /// Converts a JSON string to an instance of Tag.
  static Tag fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of Tag to JSON string.
  static String toJson(Tag object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}

// **************************************************************************
// Generator: JsonGenerator
// Target: class Location
// **************************************************************************

/// Mapper for Location
abstract class LocationMapper {
  /// Converts an instance of Location to Map.
  static Map<String, dynamic> map(Location object) {
    if (object == null) return null;
    return (new _owl_json.MapBuilder(ordered: false)
          ..put('id', object.id)
          ..put('name', object.name)
          ..put('latitude', object.latitude)
          ..put('longitude', object.longitude))
        .toMap();
  }

  /// Converts a Map to an instance of Location.
  static Location parse(Map<String, dynamic> map) {
    if (map == null) return null;
    final Location object = new Location();
    object.id = map['id'];
    object.name = map['name'];
    object.latitude = map['latitude'];
    object.longitude = map['longitude'];
    return object;
  }

  /// Converts a JSON string to an instance of Location.
  static Location fromJson(String json) {
    if (json == null || json.isEmpty) return null;
    final Map<String, dynamic> map = JSON.decoder.convert(json);
    return parse(map);
  }

  /// Converts an instance of Location to JSON string.
  static String toJson(Location object) {
    if (object == null) return null;
    return JSON.encoder.convert(map(object));
  }
}
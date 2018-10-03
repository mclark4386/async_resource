import 'dart:async';
import 'package:meta/meta.dart';
import 'package:async_resource/async_resource.dart';
import 'model/post.dart';

export 'model/post.dart';

/// The resources required by mobile and web versions of the app.
abstract class Resources {
  Resources({@required this.posts, @required this.darkBackground});

  final LocalResource<bool> darkBackground;

  /// [AsyncResource]s use [Future]s by default, but they can be wrapped in a
  /// [StreamedResource] to access them using a sink and stream.
  final NetworkResource<Iterable<Post>> posts;
}

import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:utils/utils.dart';

part 'get_youtube_metadata.g.dart';

@Riverpod(keepAlive: true)
Future<Metadata?> getYoutubeMetadata(Ref ref, Uri url) async {
  try {
    final response =
        await http.get(Uri.parse('https://noembed.com/embed?url=$url'));
    final map = jsonDecode(response.body);
    return Metadata()
      ..title = map['title']
      ..image = map['thumbnail_url'];
  } catch (_) {
    return null;
  }
}

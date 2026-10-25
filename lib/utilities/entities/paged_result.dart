import 'package:equatable/equatable.dart';

/// A page of results. [cursor] is the opaque pagination cursor
/// (e.g. the last Firestore DocumentSnapshot) to pass to the next call.
class PagedResult<T> extends Equatable {
  final List<T> items;
  final bool hasMore;
  final Object? cursor;

  const PagedResult({
    this.items = const [],
    this.hasMore = false,
    this.cursor,
  });

  @override
  List<Object?> get props => [items, hasMore, cursor];
}

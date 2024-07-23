mixin HasParentId<PID extends HasIdentity> on HasIdentity {
  PID get parentId;
}

mixin HasId<ID extends HasIdentity> {
  ID get id;
  
  Map<String, dynamic> toJson();
}

mixin HasIdentity {
  String get id;
}

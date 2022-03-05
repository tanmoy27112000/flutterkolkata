part of 'member_bloc.dart';

@freezed
class MemberEvent with _$MemberEvent {
  const factory MemberEvent.started() = _Started;
  const factory MemberEvent.getMember() = _GetMember;
}

import 'package:bloc/bloc.dart';
import 'package:flutterkolkata/data/firebase_helper.dart';
import 'package:flutterkolkata/model/member_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_bloc.freezed.dart';
part 'member_event.dart';
part 'member_state.dart';

class MemberBloc extends Bloc<MemberEvent, MemberState> {
  MemberBloc() : super(const _Initial()) {
    on<MemberEvent>((event, emit) async {
      await event.maybeWhen(
        orElse: () {
          emit(const MemberState.error("There was an error"));
        },
        getMember: () async {
          emit(const MemberState.loading());
          try {
            await FirestoreService.getAllMemberDocs().then(
              (value) => emit(MemberState.loaded(value)),
            );
          } catch (e) {
            emit(const MemberState.error("There was an error"));
          }
        },
      );
    });
  }
}

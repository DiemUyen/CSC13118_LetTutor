import 'dart:convert';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jitsi_meet/jitsi_meet.dart';

part 'meeting_event.dart';
part 'meeting_state.dart';

class MeetingBloc extends Bloc<MeetingEvent, MeetingState> {
  MeetingBloc() : super(MeetingInitialState()) {
    on<MeetingInit>(_onInit);
    on<MeetingEndButtonPressed>(_onEndButtonPressed);
  }

  void _onInit(MeetingInit event, Emitter emit) async {
    emit(MeetingLoadingState());

    final token = event.url.split("token=").last;
    try {
      final payload = _decodeBase64(token.split('.')[1]);
      final payloadMap = json.decode(payload);
      if (payloadMap is! Map<String, dynamic>) {
        emit(const MeetingLoadFailureState(message: 'Join Meeting Failed!'));
      }

      emit(MeetingLoadDoneState());
      _joinMeeting(payloadMap);
    }
    catch (exception) {
      emit(const MeetingLoadFailureState(message: 'Join Meeting Failed!'));
    }
  }

  void _onEndButtonPressed(MeetingEndButtonPressed event, Emitter emit) {
    emit(MeetingEndingState());
  }
  
  String _decodeBase64(String tokenPart) {
    String result = tokenPart.replaceAll('-', '+').replaceAll('_', '/');
    switch (result.length % 4) {
      case 0:
        break;
      case 2:
        result += '==';
        break;
      case 3:
        result += '=';
        break;
      default:
        throw Exception('Illegal base64url string!');
    }
    return utf8.decode(base64Url.decode(result));
  }

  void _joinMeeting(Map<String, dynamic> payload) async {
    Map<FeatureFlagEnum, bool> featureFlags = {
      FeatureFlagEnum.WELCOME_PAGE_ENABLED : false,
      FeatureFlagEnum.ADD_PEOPLE_ENABLED : false,
    };

    if (!kIsWeb) {
      if (Platform.isAndroid) {
        featureFlags[FeatureFlagEnum.CALL_INTEGRATION_ENABLED] = false;
      } else if (Platform.isIOS) {
        featureFlags[FeatureFlagEnum.PIP_ENABLED] = false;
      }
    }

    var options = JitsiMeetingOptions(room: payload['room'])
    ..serverURL = 'https://meet.lettutor.com'
    ..subject = 'Meeting room of ${payload['userCall']['name']} and ${payload['userBeCalled']['name']}'
    ..userDisplayName = '${payload['userCall']['name']}'
    ..userAvatarURL = '${payload['userCall']['avatar']}'
    ..audioMuted = true
    ..videoMuted = true
    ..featureFlags = featureFlags;

    await JitsiMeet.joinMeeting(options,
    listener: JitsiMeetingListener(
      onConferenceTerminated: (message) {
        add(MeetingEndButtonPressed());
      }
    ));
  }
}
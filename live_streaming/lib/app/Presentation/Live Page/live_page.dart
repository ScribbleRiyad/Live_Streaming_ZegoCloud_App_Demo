
import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';
import '../../Utils/constants.dart';

class LivePage extends StatelessWidget {
  final String liveID;
  final bool isHost;
  final String userID;
  final String userName;

  const LivePage({Key? key, required this.liveID, this.isHost = false, required this.userID, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: Constants.appID,// Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: Constants.appSign,// Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: userID,
        userName: userName,
        liveID: liveID,
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    );
  }
}
class Call {
  var callerId;
  var callerName;

  var receiverId;
  var receiverName;

  var channelId;
  var hasDialled;

  var channelName;
  var token;

  Call(
      { this.callerId,
        this.callerName,

        this.receiverId,
        this.receiverName,

        this.channelId,
        this.hasDialled,

        this.token,
        this.channelName,

      });

  Map<String, dynamic> toMap(Call call) {
    Map<String, dynamic> callMap = Map();
    callMap["caller_id"] = call.callerId;
    callMap["caller_name"] = call.callerName;

    callMap["receiver_id"] = call.receiverId;
    callMap["receiver_name"] = call.receiverName;

    callMap["channel_id"] = call.channelId;
    callMap["has_dialled"] = call.hasDialled;

    callMap["channel_name"] = call.channelName;
    callMap["token"] = call.token;
    return callMap;
  }

  Call.fromMap(Map callMap) {
    this.callerId = callMap["caller_id"];
    this.callerName = callMap["caller_name"];

    this.receiverId = callMap["receiver_id"];
    this.receiverName = callMap["receiver_name"];

    this.channelId = callMap["channel_id"];
    this.hasDialled = callMap["has_dialled"];

    this.channelName = callMap["channel_name"];
    this.token = callMap["token"];
  }
}
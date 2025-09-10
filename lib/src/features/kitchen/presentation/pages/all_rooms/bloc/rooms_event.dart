abstract class RoomsEvent {}

class CreateInitialStateEvent extends RoomsEvent {
  CreateInitialStateEvent();
}

class UpdateRoomNameEvent extends RoomsEvent {
  final int roomId;
  final String roomName;

  UpdateRoomNameEvent(this.roomId, this.roomName);
}

class DeleteRoomEvent extends RoomsEvent {
  final int roomId;

  DeleteRoomEvent(this.roomId);
}

class CreateRoomEvent extends RoomsEvent {
  final String roomName;

  CreateRoomEvent(this.roomName);
}

class StartEditingRoomNameEvent extends RoomsEvent {
  final int roomId;

  StartEditingRoomNameEvent(this.roomId);
}

class ResetLastActionMessageEvent extends RoomsEvent {
  ResetLastActionMessageEvent();
}

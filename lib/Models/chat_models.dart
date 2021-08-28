class ChatModels {
  String message, time;
  bool sender;
  ChatModels({
    this.message,
    this.time,
    this.sender,
  });
}

List<ChatModels> messages = [
  ChatModels(
    message: "Contrary to popular belief, Lorem Ipsum is not simply.",
    time: "08:56 PM",
    sender: true,
  ),
  ChatModels(
    message: "Contrary to popular belief, Lorem Ipsum is not simply.",
    time: "09:13 PM",
    sender: false,
  ),
  ChatModels(
    message: "Contrary to popular belief, Lorem Ipsum is not simply.",
    time: "09:13 PM",
    sender: false,
  ),
  ChatModels(
    message: "No.",
    time: "09:13 PM",
    sender: true,
  ),
  ChatModels(
    message: "Contrary to popular belief, Lorem Ipsum is not simply.",
    time: "09:24 PM",
    sender: true,
  ),
];

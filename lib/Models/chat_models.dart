class ChatModels {
  String message, time, image;
  bool sender;
  ChatModels({
    this.message,
    this.time,
    this.sender,
    this.image,
  });
}

List<ChatModels> messages = [
  ChatModels(
    message: "Contrary to popular belief, Lorem Ipsum is not simply.",
    time: "08:56 PM",
    sender: true,
    image: "assets/profile.png",
  ),
  ChatModels(
    message: "Contrary to popular belief, Lorem Ipsum is not simply.",
    time: "09:13 PM",
    sender: false,
    image: "assets/hotelmanager.png",
  ),
  ChatModels(
    message: "Contrary to popular belief, Lorem Ipsum is not simply.",
    time: "09:13 PM",
    sender: false,
    image: "assets/hotelmanager.png",
  ),
  ChatModels(
    message: "No.",
    time: "09:13 PM",
    sender: true,
    image: "assets/profile.png",
  ),
  ChatModels(
    message: "Contrary to popular belief, Lorem Ipsum is not simply.",
    time: "09:24 PM",
    sender: true,
    image: "assets/profile.png",
  ),
];

class TopRated {
  String image, profession, name, rating, scheduleTime;
  TopRated({
    required this.image,
    required this.profession,
    required this.name,
    required this.rating,
    required this.scheduleTime,
  });
}

List<TopRated> topRatedDoctor = [
  TopRated(
    image: "assets/images/nurse1.png",
    profession: "Heart Surgeon",
    name: "Dr Ronald Richard",
    rating: "4.5",
    scheduleTime: "11 Am-03 Pm",
  ),
  TopRated(
    image: "assets/images/doctor2.png",
    profession: "Dental Specialist",
    name: "Dr Jenny Wilson",
    rating: "4.9",
    scheduleTime: "10 Am-12 Pm",
  ),
  TopRated(
    image: "assets/images/doctor1.png",
    profession: "Bone Surgeon",
    name: "Dr Kendric Jaden",
    rating: "4.8",
    scheduleTime: "08 Am-12 Pm",
  )
];

class DoctorModel{
  String name;
  String image;
  String speciality;
  String payment;
  int experience;
  double rating;
  List appointmentDays;
  String aboutDoc;

  DoctorModel({
    required this.name,
    required this.image,
    required this.speciality,
    required this.payment,
    required this.experience,
    required this.rating,
    required this.appointmentDays,
    required this.aboutDoc
});
}
import 'schedule.dart';

class Doctors {
  final String name;
  final String specialist;
  final String hospital;
  final String about;
  final String urlimage;
  final List<Schedule> schedule;
  Doctors(
      {this.name,
      this.specialist,
      this.hospital,
      this.about,
      this.urlimage,
      this.schedule});
}

List<Doctors> dummyDoctors = [
  Doctors(
      name: "Dr. Laxman Rathod",
      specialist: "Radioologists",
      hospital: "Solanki",
      urlimage: "assets/Laxman.jpeg",
      about: "From Sumerpur, Highly experienced",
      schedule: [
        Schedule(
            name: "Consultation",
            date: "23",
            month: "Jan",
            day: "Monday",
            time: "9am - 10pm"),
      ]),
  Doctors(
      name: "Sunil Gemawat",
      specialist: "MBBS Sonologist",
      hospital: "Kerawat",
      urlimage: "assets/Sunil.jpeg",
      about: "20 years of experience , Post Graduate Diploma in MCH",
      schedule: [
        Schedule(
            name: "Consultation",
            date: "21",
            month: "Dec",
            day: "Monday",
            time: "9am - 10pm"),
      ]),
  Doctors(
      name: "Harmani Singh",
      specialist: "Clinical Psychology",
      hospital: "Medicare",
      urlimage: "assets/Harmani.jpeg",
      about: "15 years of experience",
      schedule: [
        Schedule(
            name: "Consultation",
            date: "18",
            month: "Dec",
            day: "Monday",
            time: "9am - 10pm"),
      ]),
  Doctors(
      name: "Dr. Shreya Awasthi",
      specialist: "Acupuncture Specialist",
      hospital: "Birla ",
      urlimage: "assets/Shreya.jpeg",
      about: "5 years of experience, Post Graduate in MCH",
      schedule: [
        Schedule(
            name: "Consultation",
            date: "11",
            month: "Jan",
            day: "Monday",
            time: "9am - 10pm"),
      ]),
  Doctors(
      name: "Dr. Harshika Gupta",
      specialist: "General Practitioners",
      hospital: "Nigeria Complex",
      urlimage: "assets/Harshika.jpeg",
      about: "10 years of experience, Live in Gurgaon",
      schedule: [
        Schedule(
            name: "Consultation",
            date: "11",
            month: "Dec",
            day: "Wednesday",
            time: "9am - 10pm"),
      ]),
];

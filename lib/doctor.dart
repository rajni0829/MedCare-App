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
      name: "Adhisty Zara",
      specialist: "Neurologists",
      hospital: "----------",
      urlimage: "assets/adhisty_zara_s.jpg",
      about: "-----------------------",
      schedule: [
        Schedule(
            name: "Consultation",
            date: "11",
            month: "Jan",
            day: "Monday",
            time: "9am - 10pm"),
      ]),
  Doctors(
      name: "-------------",
      specialist: "Orthopadic",
      hospital: "----------------------",
      urlimage: "assets/aninditha_rahma_cahyadi_s.jpg",
      about: "------------------------",
      schedule: [
        Schedule(
            name: "Consultation",
            date: "11",
            month: "Jan",
            day: "Monday",
            time: "9am - 10pm"),
      ]),
  Doctors(
      name: "-------------",
      specialist: "Clinical Psychology",
      hospital: "-----------",
      urlimage: "assets/ayana_shahab.jpg",
      about: "------------------------",
      schedule: [
        Schedule(
            name: "Consultation",
            date: "11",
            month: "Jan",
            day: "Monday",
            time: "9am - 10pm"),
      ]),
  Doctors(
      name: "-----------------",
      specialist: "Acupuncture Specialist",
      hospital: "RSUD Mardjono",
      urlimage: "assets/frieska_anastasia_laksani_s.jpg",
      about: "---------------------",
      schedule: [
        Schedule(
            name: "Consultation",
            date: "11",
            month: "Jan",
            day: "Monday",
            time: "9am - 10pm"),
      ]),
  Doctors(
      name: "--------------------",
      specialist: "General Practitioners",
      hospital: "---------------------",
      urlimage: "assets/michelle_christo_kusnadi_s.jpg",
      about: "---------------------",
      schedule: [
        Schedule(
            name: "Consultation",
            date: "11",
            month: "Jan",
            day: "Monday",
            time: "9am - 10pm"),
      ]),
];

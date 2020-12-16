import 'detailDoctor.dart';
import 'doctor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyDoctors.length,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        final doctor = dummyDoctors[index];
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        DetailDoctor(doctor: doctor)));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 75,
            margin: EdgeInsets.only(bottom: 15, right: 17),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(doctor.urlimage),
                ),
                SizedBox(width: 10),
                Container(
                  width: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        doctor.name,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 7),
                      Text(
                        "${doctor.specialist} - ${doctor.hospital}",
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

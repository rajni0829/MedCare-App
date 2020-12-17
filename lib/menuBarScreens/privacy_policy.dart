import 'package:flutter/material.dart';

import '../Dashboard_page.dart';
import '../menuBar.dart';

class privacypolicy extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4be8ce),
        elevation: 0.0,
        actions: [
          RaisedButton(
              color: Color(0xFF4be8ce),
              elevation: 0.0,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardPage()));
              },
              child: Row(
                  children: [Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                    Text(
                      "Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.bold,
                      ),)
                  ])

          )
        ],
      ),
      drawer: sideBar(),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text('We value the trust You (defined below) place in Us (defined below). That’s why We (defined below) insist upon the highest standards for secure transactions and customer information privacy. Please read the following statement to learn about Our (defined below) information gathering and dissemination practices.'
                  'Novocura Tech Health Services Private Limited (“NTHS”, which also include its affiliates), having its registered office address at Salarpuria Sattva Supreme, 2nd Floor, West Wing, Sarjapur Outer Ring Road, Marathahalli, Bengaluru 560037.'
                  ''),
              Text(''),
              Text('NTHS is committed to respecting the privacy of every person who shares information with it or whose information it receives. Your (defined below) privacy is important to Us (defined below) and We (defined below) strive to take care and protect the information We (defined below) receive from You (defined below) to the best of Our (defined below) ability.'),
              Text(''),
              Text('This Privacy Policy (“Privacy Policy”) applies to the collection, receipt, storage, usage, processing, disclosure, transfer and protection (“Utilization”) of your Personal Information (defined below) when You use the mfine website available at URL: www.mfine.* (where * represents various domain names) operated by NTHS (“Website”) or mobile application of brand name “mfine” available for download at Google Play Store, Apple App Store, Windows App Store (“Application”) operated by NTHS or avail any Services offered by NTHS through the Website or Application.'),
              Text(''),
              Text('The terms ‘You’ or ‘Your’ refer to you as the user (registered or unregistered) of the Website, Application or Services and the terms ‘We’, ‘Us” and ‘Our’ refer to NTHS.'
                  'The capitalized terms that are used but not defined in this Privacy Policy shall have the same meaning as in our Terms of Use.'),
              Text(''),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('CONSENT:      ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Text(''),
              Text('You acknowledge that this Privacy Policy is a part of the Terms of Use of the Website and the other Services, by accessing the Website or Application or by otherwise providing Us Your Personal Information Yourself or through a Primary User or by making use of the Services provided by the Website or Application, You unconditionally signify Your (i) assent to the Privacy Policy, and (ii) consent to the Utilisation of your Personal Information in accordance with the provisions of this Privacy Policy.'),
              Text('You acknowledge that You are providing Your Personal Information out of Your free will. If You use the Services on behalf of someone else (including but not limited to, Your child – minor or major or as a legal representative of an individual with mental illness) or an entity (such as Your employer), You represent that You are authorized by such individual or entity to (i) accept this Privacy Policy on such individual’s or entity’s behalf, and (ii) consent on behalf of such individual or entity to Our collection, use and disclosure of such individual’s or entity’s Personal Information as described in this Privacy Policy. Further, You hereby acknowledge that the Utilization of Your Personal Information by NTHS is necessary for the purposes identified hereunder. You hereby consent that the Utilization of any Personal Information in accordance with the provisions of this Privacy Policy shall not cause any wrongful loss to You.'),
              Text(''),
              Text('YOU HAVE THE OPTION NOT TO PROVIDE US THE PERSONAL INFORMATION SOUGHT TO BE COLLECTED. YOU WILL ALSO HAVE AN OPTION TO WITHDRAW YOUR CONSENT AT ANY POINT, PROVIDED SUCH WITHDRAWAL OF THE CONSENT IS INTIMATED TO US IN WRITING. If You do not provide Us Your Personal Information or if You withdraw the consent to provide Us Your Personal Information at any point in time, We shall have the option not to fulfill the purposes for which the said Personal Information was sought and We may restrict You from using the Website, Application or Services'),
              Text(''),
              Text('YOU HAVE THE OPTION NOT TO PROVIDE US THE PERSONAL INFORMATION SOUGHT TO BE COLLECTED. YOU WILL ALSO HAVE AN OPTION TO WITHDRAW YOUR CONSENT AT ANY POINT, PROVIDED SUCH WITHDRAWAL OF THE CONSENT IS INTIMATED TO US IN WRITING. If You do not provide Us Your Personal Information or if You withdraw the consent to provide Us Your Personal Information at any point in time, We shall have the option not to fulfill the purposes for which the said Personal Information was sought and We may restrict You from using the Website, Application or Services'),
              Text(''),
              Text('Our Website or Application are not directed at children and We do not knowingly collect any Personal Information from children. Please contact Us at grievance@mfine.co if You are aware that We may have inadvertently collected Personal Information from a child, and We will delete that information as soon as possible.'),
              Text(''),
              Padding(
                padding: const EdgeInsets.only(left: 2.0),
                child: Text('CHANGES TO THE PRIVACY POLICY: ',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Text(''),
              Text('We reserve the right to update (change, modify, add and/or delete) this Privacy Policy from time to time at our sole discretion. There is a tab at the end of the Privacy Policy which indicates when the Privacy Policy was last updated.'),
              Text(''),
              Text('When We update Our Privacy Policy, we will intimate You of the amendments on Your registered email ID or on the Website or Application. Alternatively, NTHS may cause Your account to be logged-off and make Your subsequent account log-in conditional on acceptance of the Agreement. If You do not agree to the amendments, please do not use the Website, Application or Services any further.'),
              Text(''),
              Text('PERSONAL INFORMATION COLLECTED: In order to provide Services to You we might require You to voluntarily provide Us certain information that personally identifies You or Secondary Users related to You. You hereby consent to the collection of such information by NTHS. The information that We may collect from You, about You or Secondary Users related to You, may include but are not limited to, the following:'),
              Text(''),
              Text('Patient/Caregiver/Doctor/Health Care Professional Name,'
                  'Birth date/age,'
                  'Blood group,'
                  'Gender,'
                  'Address (including country and pin/postal code),'
                  'Location information, including Your GPS location,'
                  'Phone number/mobile number,'
                  'Email address,'
                  'Physical, physiological and mental health condition, provided by You and/or Your Healthcare Service provider or accessible from Your medical records,'
                  'Personal medical records and history,'
                  'Valid financial information at time of purchase of product/Services and/or online payment,'
                  'mfine Login ID and password,'
                  'User details as provided at the time of registration or thereafter,'
                  'Records of interaction with NTHS representatives,'
                  'Your usage details such as time, frequency, duration and pattern of use, features used and the amount of storage used,'
                  'Master and transaction data and other data stored in Your user account,'
                  'Internet Protocol address, browser type, browser language, referring URL, files accessed, errors generated, time zone, operating system and other visitor details collected in Our log files, the pages of our Website or Application that You visit, the time and date of Your visit, the time spent on those pages and other statistics ("Log Data"),'
                  'User’s tracking Information such as, but not limited to the device ID, Google Advertising ID and Android ID,'
                  'Any other information that is willingly shared by You.'),
              Text(''),
              Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Text('HOW WE COLLECT PERSONAL INFORMATION: The methods by which We collect Your Personal Information include but are not limited to the following:'),
              ),
              Text(''),
              Text('When You register on Our Website or Application,'
                  'When You provide Your Personal Information to Us,'
                  'During the course of Services provided to You by Us,'
                  'When You use the features on Our Website or Application,'
                  'Through Your device, once You have granted permissions to Our Application (discussed below),'
                  'Through HSP pursuant to consultation on the Website or the Application,'
                  'By the use of cookies (also discussed below),'
                  'We collect information that Your browser/app sends whenever You visit Our Website or Application, such as, the Log Data. In addition, We may use third party services such as Pixel that collect, monitor and analyze this. This information is kept completely secure.'),
              Text(''),
              Text(''),
            ],
          ),
        ),
      ),
    );
    // ),
    // )
    // )
    // );
  }
}
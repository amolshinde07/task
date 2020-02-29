import 'package:flutter/material.dart';

class About_us extends StatefulWidget {
  @override
  _About_usState createState() => _About_usState();
}

class _About_usState extends State<About_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
              color: Colors.white,
              height: 100.0,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.close,
                  size: 30.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'About Us',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1.7,
                        offset: Offset(-1.0, -1.0),
                      ),
                    ],
                  ),
                  child:Flexible(
                      child:  SingleChildScrollView(
                        child: Text(
                          '- Policy is valid for Indian citizens who are users of    and aged between 18-65 yeas at the time of insurance. Certificate of insurance will be issued in the name of the individual as registered with .\n '
                              '•	Accidental Death Benefit- 100% Sum Insured\n'
                              '•	Permanent total Disability Benefit – As per Table of Benefits.\n'
                              '•	Permanent Partial Disability Benefit- As per Table of Benefits.\n'
                              '•	Transportation of mortal remains -10% of sum Insured.\n'
                              'Customer shall receive the certificate of insurance on his/her email id registered with  within T+3 days of the transaction. The policy coverage will start T + 3th day as well. (T s the transaction day).\n'
                              '+ 3th day as well. (T s the transaction day).\n'
                              '- The insurance policy is a contract between ICICI Lombard Health Insurance and . Customer should reach out to ICICI Lombard Health Insurance for any claim related issues.\n'
                              '- Terms & Conditions for HospiCash Insurance\n'
                              '•	Age of Entry- 18-65 years \n'
                              '•	Policy Tenure: 1 Year (protection will start from T+4 days (T being the transaction date))\n'
                              '•	For Hospicash \n'
                              '•	A minimum of 48 hours of Hospitalization is necessary for the benefit/s to be triggered\n'
                              'a.	Initial waiting period of 30 days is waived off\n'
                              'b.	PED waiting period has been waived off\n'
                              'If an Insured Person contracts an illness or suffers an injury due to an Accident that occurs during the Period of Cover and which solely and directly requires the Insured Person to be Hospitalized, then We will pay the daily amount specified in the policy certificate for each continuous and completed day f Hospitalization.\n'
                              'This benefit shall be payable subjects to following:\n'
                              '•	The Hospitalization is foe Medically Necessary Treatment and is commenced and continued the written advice of the treating Medical Practitioner.\n'
                              '•	WE shall not be liable to pay the daily amount for more than the maximum number of days specified in the policy Certificate.Major Exclusions\n'
                              ' •	This policy excludes any treatment received outside India unless specifically covered and specified in the policy certificate\n'
                              '•	Circumcision unless necessary for treatment of an underlying diseases.\n'
                              '•	Treatment arising from or traceable to pregnancy and its related complications, childbirth including caesarean section.\n'
                              '•	Birth control procedures and hormone replacement therapy.\n'
                              '•	Routine medical, dental, eye and ear examinations is not covered and specified in the Policy Certificate.\n'
                              '•	All cosmetic /aesthetic surgeries including but not limited to Lasik surgery.\n'
                              '•	Any medical examination or diagnostics or Hospitalization for the sole purpose of investigation or employment or travel.\n'
                              '•	Treatment of obesity, general debility, convalescence, run-down condition or rest cure, sterility, venereal disease.\n'
                              '•	Intentional self-injury, suicide or attempt to suicide.\n'
                              '•	Any Injury/Illness occurring whilst working in underground mines or explosives magazines, or involving electrical installation with high tension supply, or as jockeys or circus personnel\n'
                              '•	Any Injury that has occurred prior to the commencement of Policy of Cover whether the same has been treated, or medical advice, diagnosis, care or treatment has been sought. Any Illness, complication or ailment arising out of or connected to such injury.\n'
                              'All other terms and conditions mentioned in the policy wording shall be applicable.',

                          style: TextStyle(fontSize:15.0),
                          textAlign: TextAlign.justify,maxLines:100,
                        ),
                      )
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}

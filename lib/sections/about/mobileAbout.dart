import 'package:flutter/foundation.dart';
import '../../provider/themeProvider.dart';
import '../../widget/adaptiveText.dart';
import '../../widget/customBtn.dart';
import '../../widget/customTextHeading.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widget/aboutMeMetaData.dart';
import '../../widget/communityIconBtn.dart';
import '../../widget/toolsTechWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
  final _communityLogoHeight = [40.0, 50.0, 20.0];

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Me"),
          CustomSectionSubHeading(text: "Get to know me :)"),
        SizedBox(
            height: height * 0.03,
          ),
          Image.asset(
            'assets/mob.png',
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: GoogleFonts.montserrat(
                color: kPrimaryColor,
                fontSize: height * 0.025,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.028,
          ),
          Text(
             "Jaydip Chothani here,",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.022,
              fontWeight: FontWeight.w400,
              color: _themeProvider.lightTheme ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            "I am full stack developer with having 5+ years of experience developing Native and Haybrid App with having expertise on Mobile development (Android & IOS) and Web Development. Also holding expertise on flutter. I have completed 20+ projects including integrating third party Apps. Since last 5 year helping companies to streamline user experience and helping teams to streamline their operations. ",
            style: GoogleFonts.montserrat(
              fontSize: height * 0.018,
              color: Colors.grey[500],
              height: 1.5,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900]!, width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Technologies I have worked with:",
                style: GoogleFonts.montserrat(
                    color: kPrimaryColor, fontSize: height * 0.018),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              AdaptiveText(
                "✨ Back-End ",
                style: GoogleFonts.montserrat(
                    color:
                        _themeProvider.lightTheme ? Colors.black : Colors.white,
                    fontSize: height * 0.018),
              ),
              Wrap(
                children: backEnd
                    .map((e) => ToolTechWidget(
                          techName: e,
                        ))
                    .toList(),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              AdaptiveText(
                "✨ Front-End ",
                style: GoogleFonts.montserrat(
                    color:
                        _themeProvider.lightTheme ? Colors.black : Colors.white,
                    fontSize: height * 0.018),
              ),
              Wrap(
                children: frontEnd
                    .map((e) => ToolTechWidget(
                          techName: e,
                        ))
                    .toList(),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              AdaptiveText(
                "✨ Database ",
                style: GoogleFonts.montserrat(
                    color:
                        _themeProvider.lightTheme ? Colors.black : Colors.white,
                    fontSize: height * 0.018),
              ),
              Wrap(
                children: database
                    .map((e) => ToolTechWidget(
                          techName: e,
                        ))
                    .toList(),
              ),
              Wrap(
                children: database2
                    .map((e) => ToolTechWidget(
                          techName: e,
                        ))
                    .toList(),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              AdaptiveText(
                "✨ Payment Getway ",
                style: GoogleFonts.montserrat(
                    color:
                        _themeProvider.lightTheme ? Colors.black : Colors.white,
                    fontSize: height * 0.018),
              ),
              Wrap(
                children: payment
                    .map((e) => ToolTechWidget(
                          techName: e,
                        ))
                    .toList(),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              AdaptiveText(
                "✨ Designing Tools ",
                style: GoogleFonts.montserrat(
                    color:
                        _themeProvider.lightTheme ? Colors.black : Colors.white,
                    fontSize: height * 0.018),
              ),
              Wrap(
                children: designing
                    .map((e) => ToolTechWidget(
                          techName: e,
                        ))
                    .toList(),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              AdaptiveText(
                "✨ Social Media Login ",
                style: GoogleFonts.montserrat(
                    color:
                        _themeProvider.lightTheme ? Colors.black : Colors.white,
                    fontSize: height * 0.018),
              ),
              Wrap(
                children: sso
                    .map((e) => ToolTechWidget(
                          techName: e,
                        ))
                    .toList(),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              AdaptiveText(
                "✨ Integration ",
                style: GoogleFonts.montserrat(
                    color:
                        _themeProvider.lightTheme ? Colors.black : Colors.white,
                    fontSize: height * 0.018),
              ),
              Wrap(
                children: integration
                    .map((e) => ToolTechWidget(
                          techName: e,
                        ))
                    .toList(),
              ),
              Wrap(
                children: integration2
                    .map((e) => ToolTechWidget(
                          techName: e,
                        ))
                    .toList(),
              ),
              SizedBox(
                height: height * 0.02,
              ),
            ],
          ),
          
          SizedBox(
            height: height * 0.015,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey[900]!, width: 1.0),
              ),
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          AboutMeMetaData(
            data: "Name",
            information: "Jaydip Chothani",
            alignment: Alignment.centerLeft,
          ),
          AboutMeMetaData(
            data: "Email",
            information: "chothanijaydip98@gmail.com",
            alignment: Alignment.centerLeft,
          ),
          SizedBox(
            height: height * 0.015,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedCustomBtn(
                      btnText: "Resume",
                      onPressed: () {
                        kIsWeb
                            ? html.window.open(
                                resumelink,
                                "pdf")
                            : launchURL(
                                resumelink);
                      }),
                ),
                Container(
                  width: width * 0.2,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey[900]!, width: 2.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              // for (int i = 0; i < kCommunityLogo.length; i++)
              //   CommunityIconBtn(
              //     icon: kCommunityLogo[i],
              //     link: kCommunityLinks[i],
              //     height: _communityLogoHeight[i],
              //   ),
            ],
          ),
        ],
      ),
    );
  }
}

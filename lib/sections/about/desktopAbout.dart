import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../provider/themeProvider.dart';
import '../../widget/aboutMeMetaData.dart';
import '../../widget/adaptiveText.dart';
import '../../widget/communityIconBtn.dart';
import '../../widget/customBtn.dart';
import '../../widget/customTextHeading.dart';
import '../../widget/toolsTechWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0];

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.02,
      ),
      color: _themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          CustomSectionHeading(text: "\nAbout Me"),
          CustomSectionSubHeading(text: "Get to know me :)"),
          SizedBox(height: 30.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Expanded(
                child: Image.asset(
                  'assets/web.png',
                  height: height * 0.7,
                ),
              ),
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdaptiveText(
                        "Who am I?",
                        style: GoogleFonts.montserrat(
                            color: kPrimaryColor, fontSize: height * 0.025),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      AdaptiveText(
                        "Jaydip Chothani here,",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.035,
                          fontWeight: FontWeight.w400,
                          color: _themeProvider.lightTheme
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "I am full stack developer with having 5+ years of experience developing Native and Haybrid App with having expertise on Mobile development (Android & IOS) and Web Development. Also holding expertise on flutter. I have completed 20+ projects including integrating third party Apps. Since last 5 year helping companies to streamline user experience and helping teams to streamline their operations. ",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.02,
                          color: Colors.grey[500],
                          height: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Colors.grey[800]!, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "Technologies I have worked with:",
                        style: GoogleFonts.montserrat(
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                            fontSize: height * 0.018),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "✨ Back-End ",
                        style: GoogleFonts.montserrat(
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                            fontSize: height * 0.018),
                      ),
                      Row(
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
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                            fontSize: height * 0.018),
                      ),
                      Row(
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
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                            fontSize: height * 0.018),
                      ),
                      Row(
                        children: database
                            .map((e) => ToolTechWidget(
                                  techName: e,
                                ))
                            .toList(),
                      ),
                       Row(
                        children: database2
                            .map((e) => ToolTechWidget(
                                  techName: e,
                                ))
                            .toList(),
                      ),SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "✨ Payment Getway ",
                        style: GoogleFonts.montserrat(
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                            fontSize: height * 0.018),
                      ),
                      Row(
                        children: payment
                            .map((e) => ToolTechWidget(
                                  techName: e,
                                ))
                            .toList(),
                      ),SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "✨ Designing Tools ",
                        style: GoogleFonts.montserrat(
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                            fontSize: height * 0.018),
                      ),
                      Row(
                        children: designing
                            .map((e) => ToolTechWidget(
                                  techName: e,
                                ))
                            .toList(),
                      ),SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "✨ Social Media Login ",
                        style: GoogleFonts.montserrat(
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                            fontSize: height * 0.018),
                      ),
                      Row(
                        children: sso
                            .map((e) => ToolTechWidget(
                                  techName: e,
                                ))
                            .toList(),
                      ),SizedBox(
                        height: height * 0.02,
                      ),
                      AdaptiveText(
                        "✨ Integration ",
                        style: GoogleFonts.montserrat(
                            color: _themeProvider.lightTheme
                                ? Colors.black
                                : Colors.white,
                            fontSize: height * 0.018),
                      ),
                      Row(
                        children: integration
                            .map((e) => ToolTechWidget(
                                  techName: e,
                                ))
                            .toList(),
                      ),Row(
                        children: integration2
                            .map((e) => ToolTechWidget(
                                  techName: e,
                                ))
                            .toList(),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Colors.grey[800]!, width: 2.0),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          AboutMeMetaData(
                            data: "Name",
                            information: "Jaydip Chothani",
                          ),
                          AboutMeMetaData(
                            data: "Email",
                            information: "chothanijaydip98@gmail.com",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedCustomBtn(
                              onPressed: () {
                                html.window.open(resumelink, "pdf");
                              },
                              btnText: "Resume",
                            ),
                          ),
                          Container(
                            width: width * 0.05,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey[900]!, width: 2.0),
                              ),
                            ),
                          ),
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
                ),
              ),
              Container(
                width: width < 1230 ? width * 0.05 : width * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}

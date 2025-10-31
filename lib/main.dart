// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

final GlobalKey aboutKey = GlobalKey();
final GlobalKey skillsKey = GlobalKey();
final GlobalKey projectsKey = GlobalKey();
final GlobalKey contactKey = GlobalKey();
final GlobalKey experienceKey = GlobalKey();

const Map<String, dynamic> portfolioData = {
  "name": "Prakash Dodawad",
  "profileImage": "assets/profile.png",
  "tagline": "Building engaging, cross-platform apps with Flutter.",
  "professionalSummary":
      "Experienced Flutter Developer with over 3 years of hands-on experience building high-performance, cross-platform mobile applications for Android and iOS. Skilled in Dart, Firebase, REST APIs, GraphQL, and modern state management solutions like BLoC, GetX, and Provider.\n\nI’m passionate about clean architecture, intuitive UI/UX, and writing maintainable, scalable code that delivers real business value. I thrive in collaborative, fast-paced teams and enjoy solving complex problems through innovation and attention to detail.\n\nAlways eager to learn, adapt, and contribute to impactful projects that push the boundaries of mobile technology.",
  "contact": {
    "email": "prakashgdodawad@gmail.com",
    "phone": "+916366133365",
    "resume":
        "https://drive.google.com/file/d/10T55Kjx_zAFNTNTEpaP8DNX2Q9MtMWcEj/view?usp=sharing",
    "linkedin": "https://www.linkedin.com/in/prakash-dodawad-a621571b8",
    "github": "https://github.com/PrakashDodawad2024",
    "youtube": "https://www.youtube.com/@FlutterbyPrakash",
    "location": "Bangalore, Karnataka, Pin code 560097",
    "dob": "23rd May 2000"
  },
  "skills": {
    "Programming Languages": ["Flutter", "Dart", "Core Java"],
    "Databases": [
      "Hive (local storage)",
      "MySQL",
      "Shared Preferences",
      "Firebase Firestore",
      "Secure Storage"
    ],
    "API Integration": [
      "REST",
      "GraphQL",
      "MQTT",
      "WebSocket",
      "Firebase Functions"
    ],
    "State Management & Design Patterns": [
      "GetX",
      "Provider",
      "BLOC",
      "MVC",
      "MVVM"
    ],
    "Tools & Platforms": [
      "Android Studio",
      "Xcode",
      "VS Code",
      "Git",
      "GitHub",
      "Postman",
      "Figma"
    ],
    "Flutter Integrations & Platform Services": [
      "Firebase Auth",
      "AWS Auth",
      "Push Notifications (FCM)",
      "Google Maps",
      "In-App Purchases"
    ],
    "Testing & Deployment": [
      "Unit Testing",
      "Widget Testing",
      "App Store/Play Store Deployment"
    ]
  },
  "workExperience": [
    {
      "company": "Mobil80 Solution and Services Pvt Limited",
      "role": "Software Engineer (Flutter Developer)",
      "duration": "02nd November 2022 – Present",
      "responsibilities": [
        "Developed and implemented user-friendly mobile applications using Flutter.",
        "Collaborated with senior developers and designers to integrate UI/UX designs and third-party libraries.",
        "Integrated APIs and services, conducted unit tests, and fixed bugs to ensure app stability and performance.",
        "Researched and added new features and functionalities to enhance Flutter applications."
      ]
    }
  ],
  "projects": [
    {
      "name": "ServiceWRK Technician",
      "description":
          "A mobile app to manage service tickets and increase productivity.",
      "imageUrl": "assets/images/servicewrk.png",
      "details": [
        "Utilized Firebase Auth for secure user authentication and login.",
        "Integrated Google Maps to provide location services and track technicians.",
        "Managed data efficiently with GraphQL API and Hive for local storage.",
        "Implemented GetX for robust state management.",
        "Incorporated Shake Detector and Screenshot features for enhanced interactivity."
      ],
      "links": [
        {
          "type": "Play Store",
          "url":
              "https://play.google.com/store/apps/details?id=com.mobil80.servicewrk"
        },
        {
          "type": "App Store",
          "url": "https://apps.apple.com/in/app/servicewrk/id1609190294"
        }
      ]
    },
    {
      "name": "ServiceWRK Agent",
      "description":
          "A back-end service agent app for creating, assigning, and monitoring tickets from anywhere.",
      "imageUrl": "assets/images/servicewrkagent.png",
      "details": [
        "Enabled agents to create, assign, and manage service tickets on the go.",
        "Provided real-time monitoring of ticket status and technician locations.",
        "Integrated Google Maps to provide location services and track agent.",
        "Managed data efficiently with GraphQL API and Hive for local storage.",
        "Implemented GetX for robust state management.",
      ],
      "links": [
        {
          "type": "Play Store",
          "url":
              "https://play.google.com/store/apps/details?id=com.mobil80.servicewrkagent"
        },
        {
          "type": "App Store",
          "url": "https://apps.apple.com/in/app/servicewrk-agent/id1612823765"
        }
      ]
    },
    {
      "name": "PharmaWRK",
      "description":
          "An easy tool to assist Medical Representatives in the field.",
      "imageUrl": "assets/images/pharmawrk.png",
      "details": [
        "Features Firebase Auth and Google Maps for user authentication and location services.",
        "Uses GraphQL API and Hive database for efficient and offline-friendly data handling.",
        "Leveraged the GetX state management package for a responsive and scalable architecture.",
        "Enabled uploading and fetching files from AWS S3, along with handling dynamic form fields.",
        "Implemented Hive for submitting offline visit logs reliably.",
        "Designed to be fully responsive across both mobile devices and iPads.",
      ],
      "links": [
        {
          "type": "Play Store",
          "url":
              "https://play.google.com/store/apps/details?id=com.mobil80.pharmawrk"
        },
        {
          "type": "App Store",
          "url": "https://apps.apple.com/in/app/pharmawrk/id1575723537"
        }
      ]
    },
    {
      "name": "Dyrectori",
      "description":
          "Organize & share contact books, directories, and lists with others or use solo.",
      "imageUrl": "assets/images/dyrectori.png",
      "details": [
        "Created dynamic directories with customizable fields for flexible data input",
        "Displayed text fields dynamically while adding entries based on directory structure",
        "Integrated amplify_storage_s3 to upload and manage files on AWS S3",
        "Displayed user and directory locations using google_maps_flutter",
        "Fetched directory lists from AWS S3 using aws_client for real-time access",
        "Used hive_flutter to store and display directories for offline access",
        "Implemented razorpay_flutter on Android and RevenueCat on iOS for directory upgrades",
      ],
      "links": [
        {
          "type": "Play Store",
          "url":
              "https://play.google.com/store/apps/details?id=com.mobil80.dyrectori&pcampaignid=web_share"
        },
        {
          "type": "App Store",
          "url":
              "https://apps.apple.com/in/app/dyrectori-shared-entry-books/id6742438975"
        }
      ]
    },
    {
      "name": "Radio.ONE",
      "description":
          "Enjoy a world of music at your fingertips with Radio.ONE app!.",
      "imageUrl": "assets/images/radioone.png",
      "details": [
        "Tune in to your favorite stations across genres - relax, dance, or explore new sounds",
        "Set your favorite stations for instant access anytime",
        "Used radio_player package to stream live radio stations seamlessly",
        "Implemented MQTT protocol to list and update all available radio stations in real time",
        "Utilized Hive database to store radio station data for offline access and fast loading",
      ],
      "links": [
        {"type": "Play Store", "url": ""},
        {"type": "App Store", "url": ""}
      ]
    }
  ],
  "education": [
    {
      "school":
          "KLS’s Vishwanathrao Deshpande Institute of Technology, Haliyal",
      "degree": "B. E in Civil Engineering",
      "duration": "2017-2021",
    },
    {
      "school": "Madeena Pre-University College, Dharwad",
      "degree": "Pre-University Course",
      "duration": "2016-2017",
    },
    {
      "school": "Basel Mission Boys High School, Dharwad",
      "degree": "Secondary School Leaving Certificate",
      "duration": "2014-2015",
    }
  ]
};

Future<void> launchURL(String url) async {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    // ignore: avoid_print
    print('Could not launch $url');
  }
}

void scrollToKey(GlobalKey key, ScrollController controller) {
  final context = key.currentContext;
  if (context != null) {
    Scrollable.ensureVisible(
      context,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  const ResponsiveLayout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
    super.key,
  });

  static const int mobileBreakpoint = 600;
  static const int tabletBreakpoint = 1000;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileBreakpoint) {
          return mobileScaffold;
        } else if (constraints.maxWidth < tabletBreakpoint) {
          return tabletScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}

class TopBar extends StatelessWidget {
  final Map<String, dynamic> portfolioData;
  final ScrollController scrollController;

  const TopBar({
    required this.portfolioData,
    required this.scrollController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> navItems = [
      {'text': 'About', 'key': aboutKey},
      {'text': 'Experience', 'key': experienceKey},
      {'text': 'Skills', 'key': skillsKey},
      {'text': 'Projects', 'key': projectsKey},
      {'text': 'Contact', 'key': contactKey},
    ];

    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      title: Text(
        '${portfolioData['name']}',
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              ...navItems.map((item) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _NavBarButton(
                    text: item['text'],
                    onPressed: () =>
                        scrollToKey(item['key'] as GlobalKey, scrollController),
                  ),
                );
              }).toList(),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class _NavBarButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const _NavBarButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}

class ContactLinks extends StatelessWidget {
  final Map<String, dynamic> contact;
  const ContactLinks({required this.contact, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _SocialIcon(
            icon: Icons.link, url: contact['linkedin'], label: 'LinkedIn'),
        _SocialIcon(icon: Icons.code, url: contact['github'], label: 'GitHub'),
        _SocialIcon(
            icon: Icons.email,
            url: 'mailto:${contact['email']}',
            label: 'Email'),
        _SocialIcon(
            icon: Icons.play_arrow, url: contact['youtube'], label: 'YouTube'),
      ],
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  final String url;
  final String label;

  const _SocialIcon({
    required this.icon,
    required this.url,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: Theme.of(context).primaryColor, size: 28),
      tooltip: label,
      onPressed: () => launchURL(url),
    );
  }
}

class HeaderSection extends StatelessWidget {
  final Map<String, dynamic> portfolioData;
  final bool isMobileSection;
  const HeaderSection(
      {required this.portfolioData, this.isMobileSection = false, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < ResponsiveLayout.mobileBreakpoint;

    final profileImage = Padding(
      padding: EdgeInsets.all(isMobile ? 0 : 20),
      child: Container(
        width: isMobile ? 180 : 350,
        height: isMobile ? 180 : 350,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: isMobile ? 3 : 4,
          ),
          image: DecorationImage(
            image: AssetImage(portfolioData['profileImage']!),
            fit: BoxFit.contain,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
      ),
    );

    final textContent = Column(
      crossAxisAlignment:
          isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hi, my name is',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: isMobile ? 18 : 20,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          portfolioData['name']!,
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontSize: isMobile ? 40 : 70,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          portfolioData['tagline']!,
          textAlign: isMobile ? TextAlign.center : TextAlign.left,
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: isMobile ? 30 : 60,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 25),
        SizedBox(
          width: isMobile ? size.width : size.width * 0.5,
          child: Text(
            portfolioData['professionalSummary']!,
            textAlign: isMobile ? TextAlign.center : TextAlign.left,
            style: TextStyle(
              color: Colors.grey,
              fontSize: isMobile ? 16 : 18,
              height: 1.5,
            ),
          ),
        ),
      ],
    );

    return Container(
      key: aboutKey,
      padding: const EdgeInsets.symmetric(vertical: 50),
      constraints: const BoxConstraints(minHeight: 600),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                profileImage,
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: textContent,
                ),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 3, child: textContent),
                Expanded(flex: 2, child: profileImage),
              ],
            ),
    );
  }
}

class AnimatedSectionWrapper extends StatelessWidget {
  final Widget child;
  final Duration delay;

  const AnimatedSectionWrapper({
    required this.child,
    this.delay = const Duration(milliseconds: 0),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 30 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}

class ExperienceAndEducationSection extends StatelessWidget {
  final Map<String, dynamic> portfolioData;
  final bool isMobileSection;
  const ExperienceAndEducationSection(
      {required this.portfolioData, this.isMobileSection = false, super.key});

  @override
  Widget build(BuildContext context) {
    final experience = portfolioData['workExperience'] as List<dynamic>;
    final education = portfolioData['education'] as List<dynamic>;
    final isMobile =
        MediaQuery.of(context).size.width < ResponsiveLayout.mobileBreakpoint;
    final primaryColor = Theme.of(context).primaryColor;

    return Column(
      key: experienceKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isMobileSection)
          Text(
            '# Professional Background',
            style: TextStyle(
              color: primaryColor,
              fontSize: isMobile ? 24 : 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        if (!isMobileSection)
          const Divider(color: Colors.white12, thickness: 2, height: 40),

        // --- Work Experience ---
        Text(
          'WORK EXPERIENCE',
          style: TextStyle(
            color: Colors.white,
            fontSize: isMobile ? 20 : 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        ...experience.map((exp) => _buildExperienceCard(context, exp)).toList(),

        const SizedBox(height: 20),

        // --- Education ---
        Text(
          'EDUCATION',
          style: TextStyle(
            color: Colors.white,
            fontSize: isMobile ? 20 : 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        ...education.map((edu) => _buildEducationCard(context, edu)).toList(),
      ],
    );
  }

  Widget _buildExperienceCard(BuildContext context, Map<String, dynamic> exp) {
    final primaryColor = Theme.of(context).primaryColor;
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF112240).withOpacity(0.8),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: primaryColor.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            exp['role']!,
            style: TextStyle(
              color: primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            exp['company']!,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(height: 5),
          Text(
            exp['duration']!,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const Divider(height: 20, color: Colors.white12),
          ..._buildResponsibilityList(context, exp['responsibilities']),
        ],
      ),
    );
  }

  List<Widget> _buildResponsibilityList(
      BuildContext context, List<dynamic> responsibilities) {
    return responsibilities.map((res) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.chevron_right,
                color: Theme.of(context).primaryColor, size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                res,
                style: const TextStyle(color: Colors.grey, height: 1.4),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  Widget _buildEducationCard(BuildContext context, Map<String, dynamic> edu) {
    final primaryColor = Theme.of(context).primaryColor;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.school_outlined, color: primaryColor, size: 24),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      edu['degree']!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      edu['school']!,
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 16),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      edu['duration']!,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SkillsSection extends StatelessWidget {
  final Map<String, dynamic> portfolioData;
  final bool isMobileSection;
  const SkillsSection(
      {required this.portfolioData, this.isMobileSection = false, super.key});

  @override
  Widget build(BuildContext context) {
    final skills = portfolioData['skills'] as Map<String, dynamic>;
    final isMobile =
        MediaQuery.of(context).size.width < ResponsiveLayout.mobileBreakpoint;
    final primaryColor = Theme.of(context).primaryColor;

    return Column(
      key: skillsKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isMobileSection)
          Text(
            '# Skills & Technologies',
            style: TextStyle(
              color: primaryColor,
              fontSize: isMobile ? 24 : 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        if (!isMobileSection)
          const Divider(color: Colors.white12, thickness: 2, height: 40),
        ...skills.entries.map((entry) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${entry.key.toUpperCase()}:',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                Wrap(
                  alignment: WrapAlignment.start, // Align chips on mobile
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: (entry.value as List).map((skill) {
                    return Chip(
                      backgroundColor: primaryColor.withOpacity(0.1),
                      label: Text(
                        skill.toString(),
                        style: TextStyle(color: primaryColor),
                      ),
                      side: BorderSide(color: primaryColor.withOpacity(0.5)),
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        }).toList(),
      ],
    );
  }
}

class ProjectsSection extends StatelessWidget {
  final Map<String, dynamic> portfolioData;
  final bool isMobileSection;
  const ProjectsSection(
      {required this.portfolioData, this.isMobileSection = false, super.key});

  @override
  Widget build(BuildContext context) {
    final projects = portfolioData['projects'] as List<dynamic>;
    final isMobile =
        MediaQuery.of(context).size.width < ResponsiveLayout.mobileBreakpoint;
    final isTablet =
        MediaQuery.of(context).size.width < ResponsiveLayout.tabletBreakpoint;

    int crossAxisCount = isMobile ? 1 : (isTablet ? 2 : 3);

    return Column(
      key: projectsKey,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isMobileSection)
          Text(
            '# Featured Projects',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: isMobile ? 24 : 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        if (!isMobileSection)
          const Divider(color: Colors.white12, thickness: 2, height: 40),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: isMobile ? 0.8 : 0.9,
          ),
          itemCount: projects.length,
          itemBuilder: (context, index) {
            final project = projects[index];
            return ProjectCard(project: project, isMobile: isMobile);
          },
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final Map<String, dynamic> project;
  final bool isMobile;

  const ProjectCard({required this.project, required this.isMobile, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF112240),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SizedBox(
                height: 120,
                child: Image.asset(
                  project['imageUrl'],
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => Container(
                    color: Colors.black38,
                    alignment: Alignment.center,
                    child: Icon(Icons.mobile_friendly,
                        color: Theme.of(context).primaryColor, size: 40),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            project['name'],
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: isMobile ? 20 : 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            project['description'],
            style: const TextStyle(color: Colors.white70, fontSize: 16),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 15),
          // Scrollable list for details
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: (project['details'] as List<dynamic>).map((detail) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.check_circle_outline,
                          color: Theme.of(context).primaryColor, size: 14),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          detail,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 10),
          // Links Section
          Align(
            alignment: isMobile ? Alignment.center : Alignment.bottomLeft,
            child: Wrap(
              spacing: 10.0,
              children: (project['links'] as List<dynamic>).map((link) {
                if (link['url'].isEmpty) return const SizedBox.shrink();
                return TextButton(
                  onPressed: () => launchURL(link['url']),
                  child: Text(link['type']),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class ContactDetailsSection extends StatelessWidget {
  final Map<String, dynamic> contact;
  final bool isMobileSection;

  const ContactDetailsSection(
      {required this.contact, this.isMobileSection = false, super.key});

  Widget _buildContactItem(BuildContext context, IconData icon, String label,
      String value, String? url) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: url != null ? () => launchURL(url) : null,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Theme.of(context).primaryColor, size: 24),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label,
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 14)),
                  const SizedBox(height: 2),
                  Text(
                    value,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile =
        MediaQuery.of(context).size.width < ResponsiveLayout.mobileBreakpoint;
    final primaryColor = Theme.of(context).primaryColor;

    return Container(
      key: contactKey,
      padding: EdgeInsets.symmetric(vertical: isMobile ? 48 : 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isMobileSection)
            Text(
              '# Contact & Connect',
              style: TextStyle(
                color: primaryColor,
                fontSize: isMobile ? 24 : 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          if (!isMobileSection)
            const Divider(color: Colors.white12, thickness: 2, height: 40),
          Text(
            "Let's Connect and build something great!",
            style: TextStyle(
              color: primaryColor,
              fontSize: isMobile ? 18 : 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "I'm currently **open to new opportunities** and would love to hear about your projects.",
            style: TextStyle(
              color: Colors.grey.shade400,
              fontSize: isMobile ? 16 : 18,
            ),
          ),
          const SizedBox(height: 30),
          _buildContactItem(
            context,
            Icons.email_outlined,
            'Email Address',
            contact['email']!,
            'mailto:${contact['email']}',
          ),
          _buildContactItem(
            context,
            Icons.phone_outlined,
            'Phone Number',
            contact['phone']!,
            'tel:${contact['phone']}',
          ),
          _buildContactItem(
            context,
            Icons.location_on_outlined,
            'Location',
            contact['location']!,
            null,
          ),
          _buildContactItem(
            context,
            Icons.description_outlined,
            'Resume',
            'View Full Resume',
            portfolioData['contact']['resume']!,
          ),
          const SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Align(
                alignment: isMobile ? Alignment.center : Alignment.bottomLeft,
                child: ContactLinks(contact: contact)),
          ),
        ],
      ),
    );
  }
}

class MobileSectionWrapper extends StatelessWidget {
  final Widget child;
  const MobileSectionWrapper({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          child,
          const SizedBox(height: 18),
          const Text("Designed and Built with Flutter 💙",
              style: TextStyle(color: Colors.grey, fontSize: 12),
              textAlign: TextAlign.center),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: TopBar(
          portfolioData: portfolioData,
          scrollController: scrollController,
        ),
      ),
      body: Scrollbar(
        controller: scrollController,
        child: ListView(
          controller: scrollController,
          children: [
            Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1200),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children: [
                      const AnimatedSectionWrapper(
                          child: HeaderSection(
                              portfolioData: portfolioData)), // Animated
                      const SizedBox(height: 100),
                      const AnimatedSectionWrapper(
                          delay: Duration(milliseconds: 100),
                          child: ExperienceAndEducationSection(
                              portfolioData:
                                  portfolioData)), // Animated + Delayed
                      const SizedBox(height: 100),
                      const AnimatedSectionWrapper(
                          delay: Duration(milliseconds: 200),
                          child: SkillsSection(
                              portfolioData: portfolioData)), // Animated
                      const SizedBox(height: 100),
                      const AnimatedSectionWrapper(
                          delay: Duration(milliseconds: 300),
                          child: ProjectsSection(
                              portfolioData: portfolioData)), // Animated
                      const SizedBox(height: 100),
                      AnimatedSectionWrapper(
                          delay: const Duration(milliseconds: 400),
                          child: ContactDetailsSection(
                              contact: portfolioData['contact'])), // Animated
                      const SizedBox(height: 18),
                      const Text("Designed and Built with Flutter 💙",
                          style: TextStyle(color: Colors.grey, fontSize: 12)),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    // Tablet can use the same layout as Desktop, just with narrower constraints
    return const DesktopView();
  }
}

class MobileView extends StatefulWidget {
  const MobileView({super.key});

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const MobileSectionWrapper(
        child:
            HeaderSection(portfolioData: portfolioData, isMobileSection: true)),
    const MobileSectionWrapper(
        child: ExperienceAndEducationSection(
            portfolioData: portfolioData, isMobileSection: true)),
    const MobileSectionWrapper(
        child:
            SkillsSection(portfolioData: portfolioData, isMobileSection: true)),
    const MobileSectionWrapper(
        child: ProjectsSection(
            portfolioData: portfolioData, isMobileSection: true)),
    MobileSectionWrapper(
        child: ContactDetailsSection(
            contact: portfolioData['contact'], isMobileSection: true)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String _getAppBarTitle(int index) {
    switch (index) {
      case 0:
        return portfolioData['name'] as String;
      case 1:
        return 'Experience';
      case 2:
        return 'Skills';
      case 3:
        return 'Projects';
      case 4:
        return 'Contact';
      default:
        return 'Portfolio';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getAppBarTitle(_selectedIndex),
            style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold)),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center_outlined),
            label: 'Experience',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on_outlined),
            label: 'Skills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'Projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: 'Contact',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prakash Dodawad - Flutter Developer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0A192F),
        primaryColor: const Color(0xFF64FFDA),
        textTheme: GoogleFonts.firaSansTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color(0xFF64FFDA),
            side: const BorderSide(color: Color(0xFF64FFDA), width: 2),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          ),
        ),
        chipTheme: ChipThemeData(
          backgroundColor: const Color(0xFF112240),
          labelStyle: const TextStyle(color: Color(0xFF64FFDA)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
      home: const MainPortfolioPage(),
    );
  }
}

class MainPortfolioPage extends StatelessWidget {
  const MainPortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: MobileView(),
      tabletScaffold: TabletView(),
      desktopScaffold: DesktopView(),
    );
  }
}

// main.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

const Map<String, dynamic> portfolioData = {
  "name": "Prakash Dodawad",
  "tagline": "Building engaging, cross-platform apps with Flutter.",
  "professionalSummary":
      "Experienced Flutter Developer with over a year of creating high-quality, cross-platform apps. Skilled at translating complex requirements into engaging user experiences and delivering reliable solutions in fast-paced environments. Committed to continuous learning and innovation. I have a strong foundation in Flutter development, including state management, API integration, and performance optimization. My experience spans the full app lifecycle, from initial design and development to deployment and maintenance.",
  "contact": {
    "email": "prakashgdodawad@gmail.com",
    "phone": "+916366133365",
    "resume": "assets/resume.pdf",
    "linkedin": "https://www.linkedin.com/in/prakash-dodawad-a621571b8",
    "github": "https://github.com/PrakashDodawad2024",
    "location": "Bangalore, Karnataka, Pin code 560097",
    "dob": "23rd May 2000"
  },
  "skills": {
    "languages": ["Flutter", "Dart", "Core Java"],
    "databases": ["Hive Database", "MySQL"],
    "api": ["Rest", "GraphQL", "MQTT"],
    "stateManagement": ["GetX", "Provider", "BLOC", "MVC", "MVVM"],
    "tools": ["Visual Studio Code", "Android Studio", "Xcode", "GitHub"]
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
      "imageUrl": "assets/servicewrk.png",
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
      "imageUrl": "assets/servicewrkagent.png",
      "details": [
        "Enabled agents to create, assign, and manage service tickets on the go.",
        "Provided real-time monitoring of ticket status and technician locations.",
        "Streamlined communication and workflow between agents and technicians."
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
      "imageUrl": "assets/pharmawrk.png",
      "details": [
        "Features Firebase Auth and Google Maps for user authentication and location services.",
        "Uses GraphQL API and Hive database for efficient data handling.",
        "Leveraged the GetX state management package for a responsive and scalable architecture.",
        "Enabled fetching files from S3 and handling dynamic form fields.",
        "Implemented Shake Detector and screenshot detection for user feedback and security."
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
    }
  ],
  "education": [
    {
      "school":
          "KLS’s Vishwanathrao Deshpande Institute of Technology, Haliyal",
      "degree": "B. E in Civil Engineering",
      "duration": "2017-2021",
      "percentage": "66%"
    },
    {
      "school": "Madeena Pre-University College, Dharwad",
      "degree": "Pre-University Course",
      "duration": "2016-2017",
      "percentage": "52%"
    },
    {
      "school": "Basel Mission Boys High School, Dharwad",
      "degree": "Secondary School Leaving Certificate",
      "duration": "2014-2015",
      "percentage": "69%"
    }
  ]
};
void main() {
  runApp(const PortfolioApp());
}

/// A custom scroll behavior that hides the scrollbar.
class NoScrollbarBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

// Main portfolio app widget
class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prakash Dodawad',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
          centerTitle: false,
          titleTextStyle: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.poppins(color: Colors.black87),
          bodyMedium: GoogleFonts.poppins(color: Colors.grey.shade600),
          titleLarge: GoogleFonts.poppins(
              color: Colors.black87, fontWeight: FontWeight.bold),
          displayLarge: GoogleFonts.poppins(
              color: Colors.black87, fontWeight: FontWeight.bold),
          headlineLarge: GoogleFonts.poppins(
              color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        cardTheme: CardTheme(
          color: Colors.grey.shade50,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFFFF8C00),
          secondary: Color(0xFFF0F2F5),
          surface: Colors.white,
          onSurface: Colors.black87,
        ),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

// Main screen with responsive navigation
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    AboutPage(),
    ProjectsPage(),
    ContactPage(),
  ];

  final List<String> _pageTitles = const [
    'Home',
    'About',
    'Projects',
    'Contact',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const double mobileBreakpoint = 600;
    final bool isMobile = MediaQuery.of(context).size.width < mobileBreakpoint;

    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'Prakash',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const TextSpan(
                text: ' Dodawad',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
        actions: isMobile
            ? null
            : [
                const SizedBox(width: 16),
                ...List.generate(
                  _pageTitles.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextButton(
                      onPressed: () => _onItemTapped(index),
                      child: Text(
                        _pageTitles[index],
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: _selectedIndex == index
                              ? Theme.of(context).colorScheme.primary
                              : Colors.black54,
                          fontWeight: _selectedIndex == index
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
              ],
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: isMobile ? double.infinity : 900,
          ),
          child: _pages[_selectedIndex],
        ),
      ),
      bottomNavigationBar: isMobile
          ? BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'About',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.folder),
                  label: 'Projects',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.contact_mail),
                  label: 'Contact',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor: Colors.grey.shade500,
              onTap: _onItemTapped,
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
            )
          : null,
    );
  }
}

// A reusable widget to build a titled section with content
class SectionTitleWithContent extends StatelessWidget {
  final String title;
  final Widget child;
  final IconData? icon;

  const SectionTitleWithContent({
    super.key,
    required this.title,
    required this.child,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (icon != null) ...[
              Icon(icon, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 8),
            ],
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        child,
      ],
    );
  }
}

// Home page widget
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Helper function to launch URLs
  _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoScrollbarBehavior(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 4,
                  ),
                ),
                child: ClipOval(
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        "assets/profile.png",
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'Hello, I\'m Prakash',
                style: GoogleFonts.poppins(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                portfolioData["tagline"]!,
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              // Professional summary
              SectionTitleWithContent(
                title: 'Professional Summary',
                child: Text(
                  portfolioData["professionalSummary"]!,
                  style: GoogleFonts.poppins(color: Colors.grey.shade600),
                ),
              ),
              const SizedBox(height: 32),
              // Social media links
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.link,
                      color: Theme.of(context).colorScheme.primary,
                      size: 30,
                    ),
                    onPressed: () =>
                        _launchURL(portfolioData["contact"]["linkedin"]),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.code,
                      color: Theme.of(context).colorScheme.primary,
                      size: 30,
                    ),
                    onPressed: () =>
                        _launchURL(portfolioData["contact"]["github"]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// About page widget
class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoScrollbarBehavior(),
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'About Me',
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const Divider(color: Color(0xFFFF8C00), thickness: 2),
          const SizedBox(height: 16),
          SectionTitleWithContent(
            title: 'Professional Summary',
            child: Text(
              portfolioData["professionalSummary"]!,
              style: GoogleFonts.poppins(color: Colors.grey.shade600),
            ),
          ),
          const SizedBox(height: 24),
          SectionTitleWithContent(
            title: 'Technical Skills',
            icon: Icons.code,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSkillCategory(
                    "Languages", portfolioData["skills"]["languages"], context),
                _buildSkillCategory(
                    "Databases", portfolioData["skills"]["databases"], context),
                _buildSkillCategory(
                    "API Integration", portfolioData["skills"]["api"], context),
                _buildSkillCategory("State Management",
                    portfolioData["skills"]["stateManagement"], context),
                _buildSkillCategory(
                    "Tools", portfolioData["skills"]["tools"], context),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SectionTitleWithContent(
            title: 'Work Experience',
            icon: Icons.work,
            child: Column(
              children: [
                for (var exp in portfolioData["workExperience"])
                  _buildExperienceCard(context, exp),
              ],
            ),
          ),
          const SizedBox(height: 24),
          SectionTitleWithContent(
            title: 'Education',
            icon: Icons.school,
            child: Column(
              children: [
                for (var edu in portfolioData["education"])
                  _buildEducationCard(context, edu),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper widget to build a card for a skill category
  Widget _buildSkillCategory(
      String title, List<dynamic> skills, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 4),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: skills
                .map((skill) => Chip(
                      label: Text(skill,
                          style: GoogleFonts.poppins(color: Colors.black87)),
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  // Helper widget to build a card for work experience
  Widget _buildExperienceCard(BuildContext context, Map<String, dynamic> exp) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exp["role"],
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              exp["company"],
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              exp["duration"],
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: Colors.grey.shade500,
              ),
            ),
            const SizedBox(height: 8),
            for (var res in exp["responsibilities"])
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.check_circle_outline,
                        size: 16, color: Theme.of(context).colorScheme.primary),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        res,
                        style: GoogleFonts.poppins(color: Colors.black87),
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

  // Helper widget to build a card for education with correct alignment
  Widget _buildEducationCard(BuildContext context, Map<String, dynamic> edu) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                edu["degree"],
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Text(
                edu["school"],
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                edu["duration"],
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey.shade500,
                ),
              ),
              Text(
                'Percentage: ${edu["percentage"]}',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey.shade500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Projects page widget
class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  // Helper function to launch URLs
  _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoScrollbarBehavior(),
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            'Projects',
            style: GoogleFonts.poppins(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const Divider(color: Color(0xFFFF8C00), thickness: 2),
          const SizedBox(height: 16),
          for (var project in portfolioData["projects"])
            _buildProjectCard(context, project),
        ],
      ),
    );
  }

  // Helper widget to build a project card with a header image
  Widget _buildProjectCard(BuildContext context, Map<String, dynamic> project) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          if (project["imageUrl"] != null)
            Center(
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context)
                        .colorScheme
                        .primary, // Customize color
                    width: 3,
                  ),
                ),
                clipBehavior: Clip.hardEdge, // Clips child to border radius
                child: Image.asset(
                  project["imageUrl"]!,
                  fit: BoxFit.cover,
                  frameBuilder:
                      (context, child, frame, wasSynchronouslyLoaded) {
                    if (wasSynchronouslyLoaded) return child;
                    return AnimatedOpacity(
                      opacity: frame == null ? 0 : 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                      child: child,
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: const Color(0xFF374151),
                      child: Center(
                        child: Text(
                          'Image Load Error',
                          style: GoogleFonts.exo(color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project["name"],
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  project["description"],
                  style: GoogleFonts.poppins(color: Colors.grey.shade600),
                ),
                const SizedBox(height: 12),
                if (project["details"] != null) ...[
                  for (var detail in project["details"])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.circle,
                              size: 8,
                              color: Theme.of(context).colorScheme.primary),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              detail,
                              style: GoogleFonts.poppins(color: Colors.black87),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
                const SizedBox(height: 16),
                Wrap(
                  spacing: 16,
                  children: [
                    for (var link in project["links"])
                      TextButton.icon(
                        icon: Icon(
                          link["type"] == 'Play Store'
                              ? Icons.play_arrow
                              : Icons.link,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        label: Text(
                          link["type"],
                          style: GoogleFonts.poppins(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        onPressed: () => _launchURL(link["url"]),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Contact page widget
class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  // Helper function to launch URLs
  _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    final contact = portfolioData["contact"] as Map<String, dynamic>;
    return ScrollConfiguration(
      behavior: NoScrollbarBehavior(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get in Touch',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "I'm currently open to new opportunities. Let's connect!",
                style: GoogleFonts.poppins(color: Colors.grey.shade600),
              ),
              const Divider(color: Color(0xFFFF8C00), thickness: 2),
              const SizedBox(height: 24),
              _buildContactCard(context, contact),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget to build a contact card
  Widget _buildContactCard(BuildContext context, Map<String, dynamic> contact) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildContactItem(
              context,
              icon: Icons.email,
              label: contact["email"],
              onTap: () => _launchURL("mailto:${contact["email"]}"),
            ),
            const Divider(),
            _buildContactItem(
              context,
              icon: Icons.phone,
              label: contact["phone"],
              onTap: () => _launchURL("tel:${contact["phone"]}"),
            ),
            const Divider(),
            _buildContactItem(
              context,
              icon: Icons.location_on,
              label: contact["location"],
            ),
            const Divider(),
            _buildContactItem(
              context,
              icon: Icons.calendar_today,
              label: "Born on: ${contact["dob"]}",
            ),
            const Divider(),
            _buildContactItem(
              context,
              icon: Icons.picture_as_pdf,
              label: 'resume.pdf',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ResumeViewer()),
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildSocialIcon(context, Icons.link, contact["linkedin"]),
                _buildSocialIcon(context, Icons.code, contact["github"]),
              ],
            )
          ],
        ),
      ),
    );
  }

  // Helper widget to build a contact item
  Widget _buildContactItem(BuildContext context,
      {required IconData icon, required String label, VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                label,
                style: GoogleFonts.poppins(color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper widget to build a social icon with a link
  Widget _buildSocialIcon(BuildContext context, IconData icon, String url) {
    return IconButton(
      icon: Icon(icon, color: Theme.of(context).colorScheme.primary, size: 30),
      onPressed: () => _launchURL(url),
    );
  }
}

class ResumeViewer extends StatefulWidget {
  @override
  _ResumeViewerState createState() => _ResumeViewerState();
}

class _ResumeViewerState extends State<ResumeViewer> {
  String? localPath;

  @override
  void initState() {
    super.initState();
    _loadPdfFromAssets();
  }

  Future<void> _loadPdfFromAssets() async {
    final byteData = await rootBundle.load('assets/My_Resume.pdf');
    final tempDir = await getTemporaryDirectory();
    final file = File('${tempDir.path}/My_Resume.pdf');
    await file.writeAsBytes(byteData.buffer.asUint8List());
    setState(() {
      localPath = file.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Resume")),
      body: localPath != null
          ? PDFView(filePath: localPath!)
          : Center(child: CircularProgressIndicator()),
    );
  }
}

// main.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// This is the data for the portfolio. You can easily edit this map to update the website content.
const Map<String, dynamic> portfolioData = {
  "name": "Prakash Dodawad",
  "tagline": "Building engaging, cross-platform apps with Flutter.",
  "professionalSummary":
      "Experienced Flutter Developer with over a year of creating high-quality, cross-platform apps. Skilled at translating complex requirements into engaging user experiences and delivering reliable solutions in fast-paced environments. Committed to continuous learning and innovation. I have a strong foundation in Flutter development, including state management, API integration, and performance optimization. My experience spans the full app lifecycle, from initial design and development to deployment and maintenance.",
  "contact": {
    "email": "prakashgdodawad@gmail.com",
    "phone": "+916366133365",
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
              "https://play.google.com/store/apps/details?id=com.servicewrk.technician"
        },
        {
          "type": "App Store",
          "url":
              "https://apps.apple.com/in/app/servicewrk-technician/id6470404481"
        }
      ]
    },
    {
      "name": "ServiceWRK Agent",
      "description":
          "A back-end service agent app for creating, assigning, and monitoring tickets from anywhere.",
      "details": [
        "Enabled agents to create, assign, and manage service tickets on the go.",
        "Provided real-time monitoring of ticket status and technician locations.",
        "Streamlined communication and workflow between agents and technicians."
      ],
      "links": [
        {
          "type": "Play Store",
          "url":
              "https://play.google.com/store/apps/details?id=com.servicewrk.agent"
        },
        {
          "type": "App Store",
          "url": "https://apps.apple.com/in/app/servicewrk-agent/id6470404179"
        }
      ]
    },
    {
      "name": "Pharmawrk",
      "description":
          "An easy tool to assist Medical Representatives in the field.",
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
              "https://play.google.com/store/apps/details?id=com.pharmawrk.medrep"
        },
        {
          "type": "App Store",
          "url": "https://apps.apple.com/in/app/pharmawrk/id6470403752"
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

// Main portfolio app widget
class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prakash Dodawad',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1f2937),
          foregroundColor: Colors.white,
          centerTitle: false, // Changed to false to align title to the left
        ),
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.exo(color: const Color(0xFFE5E7EB)),
          bodyMedium: GoogleFonts.exo(color: const Color(0xFF9CA3AF)),
          titleLarge:
              GoogleFonts.exo(color: Colors.white, fontWeight: FontWeight.bold),
          displayLarge:
              GoogleFonts.exo(color: Colors.white, fontWeight: FontWeight.bold),
          headlineLarge:
              GoogleFonts.exo(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF4F46E5),
          secondary: Color(0xFF1F2937),
        ),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

// Main screen with top navigation buttons
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
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            style: GoogleFonts.exo(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            children: const [
              TextSpan(
                text: 'Prakash',
                style: TextStyle(
                  color: Color(0xFF4F46E5),
                ),
              ),
              TextSpan(
                text: ' Dodawad',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        actions: [
          // Row of TextButtons for navigation
          Row(
            children: List.generate(
              _pageTitles.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextButton(
                  onPressed: () => _onItemTapped(index),
                  child: Text(
                    _pageTitles[index],
                    style: GoogleFonts.exo(
                      fontSize: 16,
                      // Change color based on selection
                      color: _selectedIndex == index
                          ? Theme.of(context).colorScheme.primary
                          : Colors.white,
                      fontWeight: _selectedIndex == index
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: _pages[_selectedIndex],
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
              style: GoogleFonts.exo(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile image placeholder
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 4,
                  ),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://media.licdn.com/dms/image/v2/C4D03AQGwsktcPeBrRQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1655488855355?e=2147483647&v=beta&t=BvMaYTZq0mCvTpb4sHD1qxna96PLVZmmCIspperRffo"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Text(
                'Hello, I\'m Prakash',
                style: GoogleFonts.exo(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                portfolioData["tagline"]!,
                style: GoogleFonts.exo(
                  fontSize: 18,
                  color: const Color(0xFF9CA3AF),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              // New section with professional summary
              SectionTitleWithContent(
                title: 'Professional Summary',
                child: Text(
                  portfolioData["professionalSummary"]!,
                  style: GoogleFonts.exo(color: const Color(0xFF9CA3AF)),
                ),
              ),
              const SizedBox(height: 32),
              // Social media links
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.link,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () =>
                        _launchURL(portfolioData["contact"]["linkedin"]),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.code,
                      color: Colors.white,
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
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Text(
          'About Me',
          style: GoogleFonts.exo(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Divider(color: Color(0xFF4F46E5), thickness: 2),
        const SizedBox(height: 16),
        SectionTitleWithContent(
          title: 'Professional Summary',
          child: Text(
            portfolioData["professionalSummary"]!,
            style: GoogleFonts.exo(color: const Color(0xFF9CA3AF)),
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
                  "Languages", portfolioData["skills"]["languages"]),
              _buildSkillCategory(
                  "Databases", portfolioData["skills"]["databases"]),
              _buildSkillCategory(
                  "API Integration", portfolioData["skills"]["api"]),
              _buildSkillCategory("State Management",
                  portfolioData["skills"]["stateManagement"]),
              _buildSkillCategory("Tools", portfolioData["skills"]["tools"]),
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
                _buildExperienceCard(exp),
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
    );
  }

  // Helper widget to build a card for a skill category
  Widget _buildSkillCategory(String title, List<dynamic> skills) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.exo(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF4F46E5),
            ),
          ),
          const SizedBox(height: 4),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: skills
                .map((skill) => Chip(
                      label: Text(skill,
                          style: GoogleFonts.exo(color: Colors.white)),
                      backgroundColor: const Color(0xFF374151),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  // Helper widget to build a card for work experience
  Widget _buildExperienceCard(Map<String, dynamic> exp) {
    return Card(
      color: const Color(0xFF1F2937),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exp["role"],
              style: GoogleFonts.exo(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              exp["company"],
              style: GoogleFonts.exo(
                fontSize: 16,
                color: const Color(0xFF9CA3AF),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              exp["duration"],
              style: GoogleFonts.exo(
                fontSize: 14,
                fontStyle: FontStyle.italic,
                color: const Color(0xFF6B7280),
              ),
            ),
            const SizedBox(height: 8),
            for (var res in exp["responsibilities"])
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.circle, size: 8, color: Color(0xFF4F46E5)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        res,
                        style: GoogleFonts.exo(color: const Color(0xFFE5E7EB)),
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
      width: double.infinity, // Force the container to take full width
      margin: const EdgeInsets.only(bottom: 16),
      child: Card(
        color: const Color(0xFF1F2937),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                edu["degree"],
                style: GoogleFonts.exo(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                edu["school"],
                style: GoogleFonts.exo(
                  fontSize: 16,
                  color: const Color(0xFF9CA3AF),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                edu["duration"],
                style: GoogleFonts.exo(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: const Color(0xFF6B7280),
                ),
              ),
              Text(
                'Percentage: ${edu["percentage"]}',
                style: GoogleFonts.exo(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: const Color(0xFF6B7280),
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
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Text(
          'Projects',
          style: GoogleFonts.exo(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Divider(color: Color(0xFF4F46E5), thickness: 2),
        const SizedBox(height: 16),
        for (var project in portfolioData["projects"])
          _buildProjectCard(context, project),
      ],
    );
  }

  // Helper widget to build a project card with detailed points
  Widget _buildProjectCard(BuildContext context, Map<String, dynamic> project) {
    return Card(
      color: const Color(0xFF1F2937),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project["name"],
              style: GoogleFonts.exo(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              project["description"],
              style: GoogleFonts.exo(color: const Color(0xFF9CA3AF)),
            ),
            const SizedBox(height: 12),
            if (project["details"] != null) ...[
              for (var detail in project["details"])
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.circle,
                          size: 8, color: Color(0xFF4F46E5)),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          detail,
                          style:
                              GoogleFonts.exo(color: const Color(0xFFE5E7EB)),
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
                      style: GoogleFonts.exo(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    onPressed: () => _launchURL(link["url"]),
                  ),
              ],
            ),
          ],
        ),
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get in Touch',
              style: GoogleFonts.exo(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "I'm currently open to new opportunities. Let's connect!",
              style: GoogleFonts.exo(color: const Color(0xFF9CA3AF)),
            ),
            const Divider(color: Color(0xFF4F46E5), thickness: 2),
            const SizedBox(height: 24),
            _buildContactCard(context, contact),
            const SizedBox(height: 24),
            Center(
              child: Column(
                children: [
                  Text(
                    "Scan to connect with me",
                    style: GoogleFonts.exo(
                        fontSize: 16, color: const Color(0xFF9CA3AF)),
                  ),
                  const SizedBox(height: 12),
                  // Placeholder for a QR code image
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'QR Code\nPlaceholder',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.exo(color: const Color(0xFF1F2937)),
                      ),
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

  // Helper widget to build a contact card
  Widget _buildContactCard(BuildContext context, Map<String, dynamic> contact) {
    return Card(
      color: const Color(0xFF1F2937),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                style: GoogleFonts.exo(color: const Color(0xFFE5E7EB)),
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

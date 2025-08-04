// lib/controllers/home_controller.dart
import 'package:flutter/material.dart';
import 'package:my_portfolio/views/about_view.dart';
import 'package:my_portfolio/views/contact_view.dart';
import 'package:my_portfolio/views/projects_view.dart';
import 'package:my_portfolio/widgets/hero_section.dart';
import 'package:my_portfolio/widgets/skills_section.dart';
import 'package:my_portfolio/widgets/nav_bar.dart';
import 'package:animate_do/animate_do.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBarWidget(),
            FadeInDown(child: const HeroSection()),
            FadeInLeft(child: const AboutView()),
            FadeInRight(child: const SkillsSection()),
            FadeInUp(child: const ProjectsView()),
            FadeIn(child: const ContactView()),
          ],
        ),
      ),
    );
  }
}

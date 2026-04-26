import 'dart:io';

void main() {
  final screens = [
    {'path': 'lib/features/onboarding/screens/s01_splash.dart', 'class': 'S01Splash'},
    {'path': 'lib/features/onboarding/screens/s02_onboarding_role.dart', 'class': 'S02OnboardingRole'},
    {'path': 'lib/features/onboarding/screens/s03_onboarding_quiz.dart', 'class': 'S03OnboardingQuiz'},
    {'path': 'lib/features/home/screens/s04_home_dashboard.dart', 'class': 'S04HomeDashboard'},
    {'path': 'lib/features/community/screens/s05_community_feed.dart', 'class': 'S05CommunityFeed'},
    {'path': 'lib/features/community/screens/s06_post_detail_thread.dart', 'class': 'S06PostDetailThread'},
    {'path': 'lib/features/community/screens/s07_create_post.dart', 'class': 'S07CreatePost'},
    {'path': 'lib/features/community/screens/s08_ai_match_result.dart', 'class': 'S08AiMatchResult'},
    {'path': 'lib/features/mentors/screens/s09_mentor_list.dart', 'class': 'S09MentorList'},
    {'path': 'lib/features/mentors/screens/s10_mentor_profile.dart', 'class': 'S10MentorProfile'},
    {'path': 'lib/features/mentors/screens/s11_booking_flow.dart', 'class': 'S11BookingFlow'},
    {'path': 'lib/features/mentors/screens/s12_expert_consultation.dart', 'class': 'S12ExpertConsultation'},
    {'path': 'lib/features/health/screens/s13_nutrition_assessment.dart', 'class': 'S13NutritionAssessment'},
    {'path': 'lib/features/marketplace/screens/s14_marketplace.dart', 'class': 'S14Marketplace'},
    {'path': 'lib/features/health/screens/s15_health_tracker.dart', 'class': 'S15HealthTracker'},
    {'path': 'lib/features/services/screens/s16_ngo_welfare.dart', 'class': 'S16NgoWelfare'},
    {'path': 'lib/features/services/screens/s17_local_services_map.dart', 'class': 'S17LocalServicesMap'},
    {'path': 'lib/features/profile/screens/s18_profile_settings.dart', 'class': 'S18ProfileSettings'},
    {'path': 'lib/features/services/screens/s19_emergency_screen.dart', 'class': 'S19EmergencyScreen'},
  ];

  for (var screen in screens) {
    final file = File(screen['path']!);
    file.createSync(recursive: true);
    
    final content = '''
import 'package:flutter/material.dart';
import 'package:mamacare/core/theme/app_theme.dart';

class ${screen['class']} extends StatelessWidget {
  const ${screen['class']}({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('${screen['class']}'),
        backgroundColor: AppTheme.backgroundColor,
        elevation: 0,
      ),
      backgroundColor: AppTheme.backgroundColor,
      body: Center(
        child: Text(
          'Placeholder: ${screen['class']}',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: AppTheme.primaryColor,
              ),
        ),
      ),
    );
  }
}
''';
    file.writeAsStringSync(content);
    print("Created ${screen['path']}");
  }
}

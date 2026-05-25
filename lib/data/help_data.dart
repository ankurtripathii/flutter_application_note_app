import '../models/help_topic.dart';

final List<HelpTopic> helpTopics = [
  HelpTopic(
    id: '1',
    title: 'Getting Started',
    description: 'Learn the basics of using the app.',
    icon: '🚀',
    steps: [
      'Download and install the app from the store.',
      'Open the app and create a new account.',
      'Verify your email address.',
      'Complete your profile setup.',
      'You are ready to use the app!',
    ],
  ),
  HelpTopic(
    id: '2',
    title: 'Account Settings',
    description: 'Manage your account and preferences.',
    icon: '⚙️',
    steps: [
      'Tap on the profile icon at the top right.',
      'Select "Settings" from the dropdown menu.',
      'Update your personal information.',
      'Change your password under Security.',
      'Save your changes.',
    ],
  ),
  HelpTopic(
    id: '3',
    title: 'Notifications',
    description: 'Control how and when you get notified.',
    icon: '🔔',
    steps: [
      'Go to Settings > Notifications.',
      'Toggle on/off the notification types you want.',
      'Set your preferred notification schedule.',
      'Choose notification sound and vibration.',
      'Tap Save to apply changes.',
    ],
  ),
  HelpTopic(
    id: '4',
    title: 'Privacy & Security',
    description: 'Keep your data safe and private.',
    icon: '🔒',
    steps: [
      'Navigate to Settings > Privacy.',
      'Review who can see your profile.',
      'Enable two-factor authentication.',
      'Manage connected apps and permissions.',
      'Review your data and download if needed.',
    ],
  ),
  HelpTopic(
    id: '5',
    title: 'Troubleshooting',
    description: 'Fix common issues quickly.',
    icon: '🛠️',
    steps: [
      'Force close the app and reopen it.',
      'Check your internet connection.',
      'Clear app cache from device settings.',
      'Ensure the app is updated to the latest version.',
      'Contact support if the issue persists.',
    ],
  ),
  HelpTopic(
    id: '6',
    title: 'Contact Support',
    description: 'Get help from our support team.',
    icon: '💬',
    steps: [
      'Go to Settings > Help & Support.',
      'Browse the FAQ section first.',
      'Tap "Contact Us" if your issue is not listed.',
      'Fill in the support form with details.',
      'Expect a response within 24 hours.',
    ],
  ),
];

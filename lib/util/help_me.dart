import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class HelpMe extends StatelessWidget {
  const HelpMe({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("User Guide & Help"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        children: <Widget>[
          // Hero Help Banner
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            color: colorScheme.primaryContainer.withValues(alpha: 0.4),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.menu_book_rounded, color: Colors.white, size: 28),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hymn Book Guide",
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          "Learn how to get the most out of your Littafin Wa\u0199o\u0199i app.",
                          style: theme.textTheme.bodySmall?.copyWith(height: 1.3),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          Text(
            "CORE FEATURES & HOW-TO",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              color: colorScheme.primary,
            ),
          ),
          const SizedBox(height: 8),

          _buildHelpCard(
            context: context,
            icon: Icons.music_note,
            iconColor: Colors.deepPurple,
            title: "Playing Audio Tunes",
            summary: "Play, pause, and stop hymn melodies.",
            details: "\u2022 Tap the Play icon at the top of any hymn screen to play the tune.\n"
                "\u2022 A dedicated audio control bar displays playback status.\n"
                "\u2022 On tablets, playback controls are always accessible at the top of the lyrics pane.\n"
                "\u2022 Tunes stop automatically when leaving the screen or receiving a phone call.",
          ),

          _buildHelpCard(
            context: context,
            icon: Icons.search,
            iconColor: Colors.blueAccent,
            title: "Searching & Sorting",
            summary: "Find hymns by number, title, author, or lyrics.",
            details: "\u2022 Tap the Search icon in the top bar to open the live search box.\n"
                "\u2022 Enter a number (e.g., '120') or words from any stanza or chorus.\n"
                "\u2022 Tap the 3-dots menu icon on the top right to sort hymns by Number (1 to 1200) or Title (A to Z).\n"
                "\u2022 Drag the fast scrollbar on the right side for rapid scrolling.",
          ),

          _buildHelpCard(
            context: context,
            icon: Icons.favorite,
            iconColor: Colors.redAccent,
            title: "Bookmarking Favorites",
            summary: "Save your favorite hymns for quick access.",
            details: "\u2022 While reading any hymn, tap the Heart icon on the action bar to add it to your favorites.\n"
                "\u2022 Tap the 'Favorite' tab on the main screen to browse all bookmarked songs.\n"
                "\u2022 To remove a favorite, tap the Heart icon again. Your list updates instantly across both tabs.",
          ),

          _buildHelpCard(
            context: context,
            icon: Icons.edit_note,
            iconColor: Colors.green,
            title: "Composing Custom Songs",
            summary: "Add your own church or choir hymns.",
            details: "\u2022 Open the Navigation Drawer (swipe from left or tap menu).\n"
                "\u2022 Select 'Compose Song' to write a new hymn with title, author, tune, and lyrics.\n"
                "\u2022 View, edit, or delete your songs anytime under 'My added song(s)'.\n"
                "\u2022 Composed songs appear with a distinct badge in your main hymn list.",
          ),

          _buildHelpCard(
            context: context,
            icon: Icons.format_size,
            iconColor: Colors.orange,
            title: "Customizing Text & Themes",
            summary: "Adjust font size, colors, and dark mode.",
            details: "\u2022 Open Drawer > Settings.\n"
                "\u2022 Font Size: Choose sizes from 14pt to 36pt for comfortable reading.\n"
                "\u2022 Line Spacing: Adjust spacing between lyric lines.\n"
                "\u2022 Colors: Pick custom text and background colors for daytime worship.\n"
                "\u2022 Night Mode: Toggle dark mode in the drawer for low-light church services.\n"
                "\u2022 Themes: Choose from 6 curated Material 3 color themes.",
          ),

          _buildHelpCard(
            context: context,
            icon: Icons.screen_lock_portrait,
            iconColor: Colors.teal,
            title: "Keep Screen Awake",
            summary: "Prevent display from sleeping while singing.",
            details: "\u2022 In Settings, toggle 'Keep Screen Awake'.\n"
                "\u2022 When active, your device will not dim or lock while reading hymns\u2014ideal for song leaders, choir singers, and organists.",
          ),

          _buildHelpCard(
            context: context,
            icon: Icons.cloud_sync,
            iconColor: Colors.indigo,
            title: "Cloud Hymn Updates",
            summary: "Fetch corrections and new hymns automatically.",
            details: "\u2022 The app automatically checks for cloud updates in the background.\n"
                "\u2022 You can also manually tap 'Check for Hymn Updates' in the drawer.\n"
                "\u2022 Cloud updates never overwrite or erase your saved favorites or custom hymns.",
          ),

          const SizedBox(height: 20),

          // Contact Card
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide(color: theme.dividerColor.withValues(alpha: 0.2)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Icon(Icons.support_agent, size: 36, color: Colors.blueAccent),
                  const SizedBox(height: 8),
                  Text(
                    "Still need assistance?",
                    style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Our team is glad to help with any questions, missing tunes, or app feedback.",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(height: 1.3),
                  ),
                  const SizedBox(height: 12),
                  FilledButton.tonalIcon(
                    onPressed: () => _contactSupport(),
                    icon: const Icon(Icons.mail_outline, size: 18),
                    label: const Text("Email Hymnestry Support"),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  static Widget _buildHelpCard({
    required BuildContext context,
    required IconData icon,
    required Color iconColor,
    required String title,
    required String summary,
    required String details,
  }) {
    final theme = Theme.of(context);

    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(color: theme.dividerColor.withValues(alpha: 0.15)),
      ),
      child: ExpansionTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: iconColor.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: iconColor, size: 22),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
        subtitle: Text(
          summary,
          style: theme.textTheme.bodySmall?.copyWith(fontSize: 12),
        ),
        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              details,
              style: theme.textTheme.bodyMedium?.copyWith(height: 1.45),
            ),
          ),
        ],
      ),
    );
  }

  static Future<void> _contactSupport() async {
    final Email email = Email(
      body: 'Hi Hymnestry Support!\n\nI need help with:\n',
      subject: 'Help Request - Littafin Wa\u0199o\u0199i',
      recipients: ['techoveridehub@gmail.com'],
      isHTML: false,
    );
    try {
      await FlutterEmailSender.send(email);
    } catch (e) {
      debugPrint("Support email error: $e");
    }
  }
}

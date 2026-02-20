import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/bottom_nav.dart';
import 'package:video_player/video_player.dart';

// =====================
// COLORS
// =====================
const Color kNavy = Color(0xFF1D3557);
const Color kGold = Color(0xFFB8860B);
const Color kWhite = Colors.white;
const Color kLightBg = Color(0xFFF0F2F5);

class ModuleScreen extends StatefulWidget {
  final String moduleTitle;

  // ✅ Image OR Video (optional)
  final String? imagePath;
  final String? videoPath;

  final List<String> lessonNotes;
  final VoidCallback onPreviousPressed;
  final VoidCallback onNextPressed;

  const ModuleScreen({
    super.key,
    required this.moduleTitle,
    this.imagePath,
    this.videoPath,
    required this.lessonNotes,
    required this.onPreviousPressed,
    required this.onNextPressed,
  });

  @override
  State<ModuleScreen> createState() => _ModuleScreenState();
}

class _ModuleScreenState extends State<ModuleScreen> {
  VideoPlayerController? _videoController;

  double _progressValue = 0.0;
  String _progressText = "0%";

  @override
  void initState() {
    super.initState();

    // ✅ Initialize Video if provided
    if (widget.videoPath != null) {
      _videoController = VideoPlayerController.asset(widget.videoPath!)
        ..initialize().then((_) {
          if (!mounted) return;
          setState(() {});
          // ❌ DO NOT AUTO PLAY
          // User must press play manually
        });

      _videoController!.addListener(_updateProgressFromVideo);
    }
  }

  void _updateProgressFromVideo() {
    if (_videoController == null) return;
    if (!_videoController!.value.isInitialized) return;

    final duration = _videoController!.value.duration.inMilliseconds;
    final position = _videoController!.value.position.inMilliseconds;

    if (duration <= 0) return;

    final progress = (position / duration).clamp(0.0, 1.0);

    if (!mounted) return;
    setState(() {
      _progressValue = progress;
      _progressText = "${(progress * 100).toStringAsFixed(0)}%";
    });
  }

  // ✅ Pause + reset video when leaving / going next
  Future<void> _stopVideoBeforeLeaving() async {
    if (_videoController == null) return;
    if (!_videoController!.value.isInitialized) return;

    await _videoController!.pause();
    await _videoController!.seekTo(Duration.zero);

    if (!mounted) return;
    setState(() {
      _progressValue = 0.0;
      _progressText = "0%";
    });
  }

  @override
  void dispose() {
    _videoController?.removeListener(_updateProgressFromVideo);
    _videoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasVideo = widget.videoPath != null;
    final hasImage = widget.imagePath != null;

    return Scaffold(
      backgroundColor: kLightBg,
      body: SafeArea(
        child: Column(
          children: [
            // =====================
            // HEADER
            // =====================
            Container(
              color: kNavy,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () async {
                      // ✅ Stop video when leaving screen
                      await _stopVideoBeforeLeaving();
                      if (!context.mounted) return;
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: kGold,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Youth K.E.Y Series",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: kWhite,
                    ),
                  ),
                ],
              ),
            ),

            // =====================
            // CONTENT
            // =====================
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: kNavy,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                ),
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    // =====================
                    // VIDEO OR IMAGE
                    // =====================
                    if (hasVideo) _buildVideoPlayer(),
                    if (!hasVideo && hasImage) _buildImage(),

                    const SizedBox(height: 16),

                    // =====================
                    // MODULE TITLE
                    // =====================
                    Text(
                      widget.moduleTitle,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kWhite,
                      ),
                    ),

                    const SizedBox(height: 16),

                    // =====================
                    // PROGRESS BAR
                    // =====================
                    Row(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: LinearProgressIndicator(
                              value: _progressValue,
                              minHeight: 8,
                              backgroundColor: Colors.white24,
                              valueColor: const AlwaysStoppedAnimation(kGold),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          _progressText,
                          style: const TextStyle(
                            color: kWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // =====================
                    // LESSON NOTES
                    // =====================
                    const Text(
                      "Lesson Notes",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kWhite,
                      ),
                    ),
                    const SizedBox(height: 12),

                    ...widget.lessonNotes
                        .map((note) => _lessonBullet(note))
                        .toList(),

                    const SizedBox(height: 30),

                    // =====================
                    // BUTTONS
                    // =====================
                    Row(
                      children: [
                        TextButton.icon(
                          onPressed: () async {
                            await _stopVideoBeforeLeaving();
                            widget.onPreviousPressed();
                          },
                          icon: const Icon(Icons.arrow_back, color: kWhite),
                          label: const Text(
                            "Previous",
                            style: TextStyle(color: kWhite),
                          ),
                        ),
                        const Spacer(),
                        ElevatedButton(
                          onPressed: () async {
                            // ✅ Pause + reset current module video
                            await _stopVideoBeforeLeaving();

                            // ✅ Go to next module
                            widget.onNextPressed();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kGold,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                          ),
                          child: const Text(
                            "Mark as Complete & Next Lesson",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kNavy,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // =====================
      // BOTTOM NAV
      // =====================
      bottomNavigationBar: buildBottomNavigationBar(context, 1),
    );
  }

  // =====================
  // IMAGE WIDGET
  // =====================
  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        widget.imagePath!,
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  // =====================
  // VIDEO WIDGET
  // =====================
  Widget _buildVideoPlayer() {
    if (_videoController == null || !_videoController!.value.isInitialized) {
      return const SizedBox(
        height: 200,
        child: Center(
          child: CircularProgressIndicator(color: kGold),
        ),
      );
    }

    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: _videoController!.value.aspectRatio,
            child: VideoPlayer(_videoController!),
          ),
        ),

        const SizedBox(height: 10),

        // ✅ Play / Pause (manual)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                _videoController!.value.isPlaying
                    ? Icons.pause_circle
                    : Icons.play_circle,
                color: kGold,
                size: 45,
              ),
              onPressed: () {
                setState(() {
                  if (_videoController!.value.isPlaying) {
                    _videoController!.pause();
                  } else {
                    _videoController!.play();
                  }
                });
              },
            ),
          ],
        ),
      ],
    );
  }

  // =====================
  // BULLET NOTE
  // =====================
  Widget _lessonBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "• ",
            style: TextStyle(color: kGold, fontSize: 18),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: kWhite, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

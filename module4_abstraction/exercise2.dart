// EXERCISE 2: Media Player (Intermediate)
// Abstract player with different formats

// REQUIREMENTS:
// 1. Abstract class: MediaPlayer
//    - Fields: title (String), duration (int) [in seconds]
//    - Constructor: MediaPlayer(title, duration)
//    - Abstract method: play() → should print playing message
//    - Abstract method: getFormat() → return String (file format)
//    - Concrete method: displayInfo():
//      * Print "Title: $title | Duration: ${duration}s | Format: ${getFormat()}"
//    - Concrete method: resume():
//      * Call play()
//      * Print "Resuming..."
//
// 2. Child class: AudioPlayer extends MediaPlayer
//    - Field: bitrate (int) [in kbps]
//    - Constructor: AudioPlayer(title, duration, bitrate)
//    - Override play() → print "$title is playing audio at ${bitrate}kbps"
//    - Override getFormat() → return "MP3"
//
// 3. Child class: VideoPlayer extends MediaPlayer
//    - Field: resolution (String) [e.g., "1080p"]
//    - Constructor: VideoPlayer(title, duration, resolution)
//    - Override play() → print "$title is playing video in $resolution"
//    - Override getFormat() → return "MP4"
//
// 4. Child class: PodcastPlayer extends MediaPlayer
//    - Field: author (String)
//    - Constructor: PodcastPlayer(title, duration, author)
//    - Override play() → print "$title by $author is playing"
//    - Override getFormat() → return "PODCAST"
//
// 5. In main():
//    - Create List<MediaPlayer> with 3+ media items
//    - Loop and call displayInfo() for each
//    - Loop and call resume() for each
//    - Show that polymorphism works!

// STARTER CODE:
// abstract class MediaPlayer {
//   // TODO: add fields, constructor, abstract methods, concrete methods
// }
//
// class AudioPlayer extends MediaPlayer {
//   // TODO: implement abstract methods
// }
//
// class VideoPlayer extends MediaPlayer {
//   // TODO: implement abstract methods
// }
//
// class PodcastPlayer extends MediaPlayer {
//   // TODO: implement abstract methods
// }
//
// void main() {
//   List<MediaPlayer> playlist = [
//     AudioPlayer('Summer Vibes', 240, 320),
//     VideoPlayer('Tutorial', 600, '1080p'),
//     PodcastPlayer('Tech Talk', 1800, 'John Doe'),
//   ];
//
//   for (var media in playlist) {
//     media.displayInfo();
//   }
//
//   print('\n--- Resuming all ---');
//   for (var media in playlist) {
//     media.resume();
//     print('');
//   }
// }

// EXPECTED OUTPUT (example):
// Title: Summer Vibes | Duration: 240s | Format: MP3
// Title: Tutorial | Duration: 600s | Format: MP4
// Title: Tech Talk | Duration: 1800s | Format: PODCAST
//
// --- Resuming all ---
// Summer Vibes is playing audio at 320kbps
// Resuming...
//
// Tutorial is playing video in 1080p
// Resuming...
//
// Tech Talk by John Doe is playing
// Resuming...

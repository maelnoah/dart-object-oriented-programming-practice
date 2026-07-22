// EXERCISE 4: Create a Music Playlist Class (Medium)
// Build a class that manages a collection of songs

// REQUIREMENTS:
// 1. Create a Song class with:
//    - title (String)
//    - artist (String)
//    - duration (int, in seconds)
//
//    Constructor: Song(title, artist, duration)
//    - Use this.title, this.artist, this.duration
//
//    Method: displayInfo()
//    - Print "$title by $artist (${duration}s)"
//
// 2. Create a Playlist class with:
//    - name (String)
//    - songs (List<Song>, starts empty)
//
// 3. Constructor: Playlist(name)
//    - Use this.name
//    - Print "Playlist '$name' created!"
//
// 4. Method: addSong(Song song)
//    - Add song to the songs list
//    - Print "Added: ${song.title}"
//
// 5. Method: removeSong(String title)
//    - Find song by title and remove it
//    - If found: print "Removed: $title"
//    - If not found: print "Song '$title' not found"
//
// 6. Method: getTotalDuration()
//    - Return sum of all song durations
//    - Example: if songs are 180s, 240s, 120s → return 540
//
// 7. Method: displayPlaylist()
//    - Print "=== Playlist: $name ==="
//    - Loop through songs and call displayInfo() on each
//    - Print "Total duration: ${getTotalDuration()}s"
//    - If no songs: print "(empty playlist)"
//
// 8. Method: displaySongCount()
//    - Print "Songs in playlist: ${songs.length}"
//
// 9. In main():
//    - Create a Playlist
//    - Create 3-4 Song objects
//    - Add them to playlist
//    - Display the playlist
//    - Remove a song
//    - Display again

// STARTER CODE:
class Song {
  // TODO: add fields and constructor
  String title;
  String artist;
  int duration;

  Song (this.title, this.artist, this.duration);

  // TODO: add displayInfo method
  displayInfo(){
    print("$title by $artist (${duration}s)");
  }
}

class Playlist {
  // TODO: add fields and constructor
  String name;
  List<Song> songs = [];

  Playlist(this.name){
    print("Playlist '$name' created!");
  }

  // TODO: add addSong method
  addSong(Song song){
    songs.add(song);
    print("Added: ${song.title}");
  }

  // TODO: add removeSong method
  removeSong(String title){
    for(var song in songs){ // loop thru sing list
      if(song.title == title){
        songs.remove(song);
        print("Removed: $title");
        return;
      }
    }
    print("Song '$title' not found");
  }
  
  // TODO: add getTotalDuration method
  int getTotalDuration (){
    int total = 0;
    for(var song in songs){
      total += song.duration;
    }
    return total;
  }

// TODO: add displayPlaylist method
void displayPlaylist(){
 print("=== Playlist: $name ===");
 if(songs.isEmpty){
  print("(empty playlist)");
 } else {
  for(var song in songs){
    song.displayInfo();
  }
  print("Total duration: ${getTotalDuration()}s");
 }
 }

  // TODO: add displaySongCount method
  displaySongCount(){
    print("Songs in playlist: ${songs.length}");
  }

  
}

void main() {
  // TODO: create playlist
  Playlist myPlaylist = Playlist("My Favorites");
  // TODO: create songs
  Song song1 = Song("Bohemian Rhapsody", "Queen", 354);
  Song song2 = Song("Imagine", "John Lennon", 183);
  Song song3 = Song("Stairway to Heaven", "Led Zeppelin", 482);
  Song song4 = Song("Hotel California", "Eagles", 391);
  // TODO: add songs to playlist
  myPlaylist.addSong(song1);
  myPlaylist.addSong(song2);
  myPlaylist.addSong(song3);
  myPlaylist.addSong(song4);
  // TODO: display, remove, display again
  myPlaylist.displaySongCount();
  myPlaylist.removeSong("Imagine");
  myPlaylist.displaySongCount();
}

// EXPECTED OUTPUT (example):
// Playlist 'My Favorites' created!
// Added: Bohemian Rhapsody
// Added: Imagine
// Added: Stairway to Heaven
// Added: Hotel California
//
// === Playlist: My Favorites ===
// Bohemian Rhapsody by Queen (354s)
// Imagine by John Lennon (183s)
// Stairway to Heaven by Led Zeppelin (482s)
// Hotel California by Eagles (391s)
// Total duration: 1410s
// Songs in playlist: 4
//
// Removed: Imagine
//
// === Playlist: My Favorites ===
// Bohemian Rhapsody by Queen (354s)
// Stairway to Heaven by Led Zeppelin (482s)
// Hotel California by Eagles (391s)
// Total duration: 1227s
// Songs in playlist: 3

// KEY SKILLS:
// - Working with Lists of objects
// - Looping through collections
// - Finding items in a list (String matching)
// - Calculating aggregate values (sum)
// - Managing state (adding/removing items)

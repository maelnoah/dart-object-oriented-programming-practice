// EXERCISE 3: Create a Video Game Player Class (Advanced)
// Build a class that tracks player state with multiple interacting methods

// REQUIREMENTS:
// 1. Create a Player class with:
//    - username (String)
//    - level (int, starts at 1)
//    - experience (int, starts at 0)
//    - health (int, starts at 100)
//
// 2. Constructor: Player(username)
//    - Use this.username
//    - Print "Player $username has joined the game!"
//
// 3. Method: gainExperience(int amount)
//    - Add amount to experience
//    - For every 100 experience, gain a level
//    - Example: if exp was 80 and you gain 50, exp becomes 30 and level goes up
//    - Print "Gained $amount XP! Level: $level, XP: $experience"
//
// 4. Method: takeDamage(int damage)
//    - Subtract damage from health
//    - But health can't go below 0
//    - If health reaches 0, print "$username has been defeated!"
//    - Otherwise print "Took $damage damage. Health: $health"
//
// 5. Method: heal(int amount)
//    - Add amount to health
//    - But health can't go above 100
//    - Print "Healed $amount HP. Health: $health"
//
// 6. Method: displayStats()
//    - Print "=== $username ==="
//    - Print "Level: $level"
//    - Print "Health: $health/100"
//    - Print "Experience: $experience/100"
//    - Print "Status:" followed by:
//      * If level >= 10: "⭐ Elite Player!"
//      * If level >= 5: "🔥 Experienced"
//      * Otherwise: "🌱 Novice"
//
// 7. In main():
//    - Create 2 players
//    - Have them gain experience and level up
//    - Have them take damage and heal
//    - Display stats for both
//    - Show level-up happening mid-combat

// STARTER CODE:
// class Player {
//   // TODO: add fields
//
//   // TODO: add constructor
//
//   // TODO: add gainExperience method
//
//   // TODO: add takeDamage method
//
//   // TODO: add heal method
//
//   // TODO: add displayStats method
// }
//
// void main() {
//   // TODO: create two players
//   // TODO: simulate combat/quests
//   // TODO: display stats
// }



class Player {
  String username;
  int level =1;
  int experience = 0;
  int health = 100;

  // constructor player with para username
  Player(this.username){
    print ("Player $username has joined the game!");
  }

// mehtod gainExperience with para amount
  void gainExperience(int amount){
    experience += amount;
    while (experience >= 100){
      experience -= 100;
      level++;
    }
    print("Gained $amount XP! Level: $level, XP: $experience");
    }

// mehtod takeDamage with para damage
  void takeDamage(int damage){
    health = health - damage;
    if (health <= 0){
      health = 0;
      print("$username has been defeated!");
    } else {
      print("Took $damage damage. Health: $health");
    }
  }

// mehtod heal
void heal(int amount){
  health = health + amount;
  if (health > 100){
    health = 100;
} else {
  print("Healed $amount HP. Health: $health");
}
}

// mehtod displayStats
void displayStats(){
  print("=== $username ===");
  print("Level: $level");
  print("Health: $health/100");
  print("Experience: $experience/100");
  if (level >= 10){
    print("Status: ⭐ Elite Player!");
  } else if (level >= 5){
    print("Status: 🔥 Experienced");
  } else {
    print("Status: 🌱 Novice");
  }

}
}

// main method
void main() {
  // Create 2 players
  Player warrior = Player("Warrior");
  Player mage = Player("Mage");


  // =====================
  // Combat Start
  // =====================
  print("\n=== Combat Start ===");

  // Warrior actions
  warrior.gainExperience(45);
  warrior.takeDamage(15);

  // Mage actions
  mage.gainExperience(60);
  mage.takeDamage(30);
  mage.heal(20);


  // =====================
  // Combat Start
  // =====================
  print("\n=== Combat Start ===");

  // Warrior levels up
  warrior.gainExperience(100);
  warrior.takeDamage(45);
  warrior.heal(25);


  // Mage levels up twice
  mage.gainExperience(100);
  mage.gainExperience(100);
  mage.takeDamage(45);
  mage.heal(25);


  // =====================
  // Final Stats
  // =====================
  print("\n=== Final Stats ===");

  warrior.displayStats();

  print("");

  mage.displayStats();
}














// EXPECTED OUTPUT (example):
// Player Warrior has joined the game!
// Player Mage has joined the game!
//
// === Combat Start ===
// Gained 45 XP! Level: 1, XP: 45
// Took 15 damage. Health: 85
// Gained 60 XP! Level: 2, XP: 5
// Took 30 damage. Health: 70
// Healed 20 HP. Health: 90
//
// === Combat Start ===
// Gained 100 XP! Level: 2, XP: 0
// Gained 100 XP! Level: 3, XP: 0
// Took 45 damage. Health: 55
// Healed 25 HP. Health: 80
//
// === Final Stats ===
// === Warrior ===
// Level: 2
// Health: 90/100
// Experience: 5/100
// Status: 🌱 Novice
//
// === Mage ===
// Level: 3
// Health: 80/100
// Experience: 0/100
// Status: 🌱 Novice

// HINT: Track your XP carefully when leveling up!
// If you have 80 XP and gain 50, you level up and have 30 leftover XP.

import processing.sound.*;

SoundFile sound;        // current playing sound
String[] lines;
int index = 0;

void setup() {
  size(800, 200);
  textSize(20);
  fill(255);
  textAlign(LEFT, CENTER);

  // Load script lines
  lines = loadStrings("script.txt");
  if (lines == null) {
    println("ERROR: script.txt not found in data/ folder.");
    noLoop();
    return;
  }
  
  // Play first line when sketch starts (optional)
  if (lines.length > 0) {
    playAudioForLine(index);
  }
}

void draw() {
  background(30);
  if (lines != null) {
    if (index < lines.length) {
      text(lines[index], 20, height/2);
    } else {
      text("🎭 END OF SCRIPT 🎭", 20, height/2);
    }
  }
}

void mousePressed() {
  if (lines == null) return;
  if (index < lines.length - 1) {
    index++;
    playAudioForLine(index);
  }
}

// Plays the mp3 corresponding to the current line index
void playAudioForLine(int i) {
  // stop and unload previous file
  if (sound != null) {
    sound.stop();
    sound = null;
  }

  // Map line number to filename and pan value
  // Assumes ordering: 1→Juliet1, 2→Romeo1, 3→Juliet2, ...
  String filename = "";
  float panValue = 0; // -1 left, +1 right

  int lineNumber = i + 1; // lines index -> human-readable number

  switch(lineNumber) {
    case 1:
      filename = "Juliet1.mp3";
      panValue = -1;
      break;
    case 2:
      filename = "Romeo1.mp3";
      panValue = 1;
      break;
    case 3:
      filename = "Juliet2.mp3";
      panValue = -1;
      break;
    case 4:
      filename = "Romeo2.mp3";
      panValue = 1;
      break;
    case 5:
      filename = "Juliet3.mp3";
      panValue = -1;
      break;
    case 6:
      filename = "Romeo3.mp3";
      panValue = 1;
      break;
      case 7:
      filename = "Juliet4.mp3";
      panValue = -1;
      break;
    case 8:
      filename = "Romeo4.mp3";
      panValue = 1;
      break;
    case 9:
      filename = "Juliet5.mp3";
      panValue = -1;
      break;
    case 10:
      filename = "Romeo5.mp3";
      panValue = 1;
      break;
    default:
      // If you later add more lines, handle them here or use fallback
      println("No audio mapped for line " + lineNumber);
      return;
  }

  // Load and play the sound with pan
  try {
    sound = new SoundFile(this, filename);
    sound.pan(panValue);   // -1 = full left, +1 = full right
    sound.play();
  } catch (Exception e) {
    println("Error loading/playing: " + filename);
    e.printStackTrace();
  }
}

// Clean up
void stop() {
  if (sound != null) {
    sound.stop();
    sound = null;
  }
  super.stop();
}

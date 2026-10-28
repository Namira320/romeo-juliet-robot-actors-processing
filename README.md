# Romeo & Juliet Robot-Actors Visualization 🎭

A computer graphics project built using Processing, designed to implement interactive digital drama visualization inspired by Romeo and Juliet. This system combines text rendering, visual layout, and synchronized audio playback derived from external script files and audio assets.

---

## 📄 Project Documentation

[romeo-juliet-robot-actors-processing](./romeo-juliet-robot-actors-processing.pdf)

---

## 🚀 Key Features

* **Frame-Based Visual Rendering:** Utilizes the draw() function running at a high frame rate to render active dialogue lines dynamically on the canvas.
* **Spatial Stereo Panning:** Implements stereo audio distribution using processing.sound where Juliet's dialogue is panned to the left channel (-1) and Romeo's dialogue is panned to the right channel (+1) to simulate spatial actor positioning.
* **External Script Parsing:** Reads dialogue lines sequentially from an external script.txt file using loadStrings() and maps them systematically to corresponding audio files.
* **Interactive Story Progression:** Uses mousePressed() event handling to increase the dialogue index, allowing users to interactively advance the story line by line.
* **Audio Overlap Prevention:** Implements a safety mechanism using sound.stop() to halt preceding audio before loading and playing a new line, ensuring clean synchronization between text and sound.

---

## 🛠️ Tech Stack & Requirements

* **Programming Environment:** Processing 4
* **Library:** processing.sound (SoundFile class)
* **Data Sources:** External text file (script.txt) and audio assets (.mp3)

---

## 📂 Project Structure

```text
📦 romeo-juliet-robot-actors-processing
 ┣ 📂 data
 ┃  ┣ 📜 script.txt         # External text source containing drama dialogues
 ┃  ┣ 📜 Juliet1.mp3        # Audio asset for Juliet's first line
 ┃  ┣ 📜 Romeo1.mp3         # Audio asset for Romeo's first line
 ┃  ┗ ...                   # Subsequent audio files (Juliet2.mp3, Romeo2.mp3, etc.)
 ┣ 📜 RomeoAndJuliet.pde    # Main Processing source code sketch
 ┗ 📜 README.md             # Project documentation
```

⚙️ How to Run
- Make sure you have Processing installed on your computer.
- Open the main sketch file (RomeoAndJuliet.pde) inside the Processing IDE.
- Ensure that the data/ folder containing script.txt and the required .mp3 audio files (Juliet1.mp3, Romeo1.mp3, etc.) is placed in the exact same directory as the sketch.
- Click the Run button in Processing to execute the program.
- Click anywhere on the display window to advance the dialogue and play the synchronized audio.

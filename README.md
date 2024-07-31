## Gemboard: Visualize Ideas, Unlock Insights. - A Infinite Canvas for Brainstorming and Data Mining

**Gemboard** is a powerful and flexible Flutter application designed to enhance brainstorming sessions and facilitate data mining by offering an infinite canvas. This application combines the intuitive nature of visual representations with the efficiency of large language models, allowing users to explore complex ideas and analyze information in a dynamic way.

### Features

* **Infinite Canvas:**  Gemboard provides an infinite canvas where users can create and arrange cells to visualize ideas and relationships. 
* **Cell Types:** Users can choose from different cell types to represent various aspects of their problem space. These include:
    * **Brainstorming cells:** Help users generate creative ideas around a given topic by suggesting related ideas or questions to explore.
    * **Editable cells:** Provide a free-form space to record thoughts and insights with markdown formatting. 
    * **Image cells:** Can be used to add images to the canvas, from local storage or external URLs.
    * **Article cells:** Allow users to create cells with a title and markdown content. 
* **Edge Connections:** Connect cells with edges to showcase relationships between concepts.
* **Luminous Language Model (LLM) Integration:**  Leverage the power of Gemini (Google's large language model) to provide suggestions and assist in content generation.
* **Customizable Decorations:**  Style cells and edges with colors and labels.
* **Save and Load Whiteboards:**  Gemboard allows users to persist their brainstorming sessions for later access and continued exploration.
* **Desktop and Mobile Support:** Built with Flutter for seamless cross-platform usage. Even on the web!

### Installation

1. **Install Flutter:** [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)
2. **Clone the repository:** `git clone https://github.com/definev/gemboard.git`
3. **Navigate to the project directory:** `cd app/gemboard_app`
4. **Install dependencies:** `flutter pub get`
5. **Start the application:** `flutter run`

**Note:** To fully utilize Gemboard's LLM integration, you will need to have a valid Gemini API Key. You can obtain one by signing up for the Gemini API program [here](https://aistudio.google.com/).

### Configuration

**LLM Settings:**


**Database Storage:**

Gemboard currently supports multiple data storage mechanisms:

* **Shared preferences (SharedPreferences):** A basic data storage mechanism that relies on device-level settings. 
* **Drift:** A high-performance and type-safe SQLite wrapper, specifically optimized for Flutter.
* **Hive:** A lightweight NoSQL database for Flutter.
* **Memory:** A temporary storage mechanism that stores data in memory.

The active data store mechanism is automatically chosen depending on your operating system. However, you can modify the default configuration in the respective app and feature modules if necessary.


For detailed contribution guidelines and code style recommendations, please refer to the [CONTRIBUTING.md](CONTRIBUTING.md) file.

### Acknowledgements and Credits

Gemboard draws inspiration from numerous libraries and open-source projects. Here are some notable contributors:

* **Flutter:** [https://flutter.dev](https://flutter.dev)
* **Riverpod:** [https://riverpod.dev](https://riverpod.dev)
* **Freezed:** [https://pub.dev/packages/freezed](https://pub.dev/packages/freezed)
* **Mix:** [https://pub.dev/packages/mix](https://pub.dev/packages/mix)
* **Drift:** [https://pub.dev/packages/drift](https://pub.dev/packages/drift)
* **Hive:** [https://pub.dev/packages/hive](https://pub.dev/packages/hive)
* **Google Generative AI:** [https://pub.dev/packages/google_generative_ai](https://pub.dev/packages/google_generative_ai) 
* **BoundlessStack:** [https://github.com/definev/boundless_stack](https://github.com/definev/boundless_stack)
* **Emoji Selector:** [https://github.com/definev/flutter-emoji-selector](https://github.com/definev/flutter-emoji-selector)

This README will continue to evolve as Gemboard's capabilities and features grow. We aim to keep it informative and updated for your convenience.

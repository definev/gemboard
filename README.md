[![Video Title](https://img.youtube.com/vi/rKH5gJIC64s/0.jpg)](https://www.youtube.com/watch?v=rKH5gJIC64s)


## Gemboard: Visualize Ideas, Unlock Insights. - A Infinite Canvas for Brainstorming and Data Mining

**Gemboard** is a powerful and flexible Flutter application designed to enhance brainstorming sessions and facilitate data mining by offering an infinite canvas. This application combines the intuitive nature of visual representations with the efficiency of large language models, allowing users to explore complex ideas and analyze information in a dynamic way.

You can find the release build for each platform in the [releases](https://github.com/definev/gemboard_release/releases/latest) section.

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

### Building for Web

A web version of Gemboard is available for testing and deployment. To build the web version, follow these steps:

You need to move to the `app/gemboard_app` directory before running the following commands.

1. **Build the web version:** `flutter build web`
2. **Serve the web version:** `flutter run -d chrome`

If you want to try the wasm version, you can use the following command:

1. **Build the web version:** `flutter build web --wasm`

#### Extension for Quick Actions

![quick action extension](assets/extension.png)

Gemboard also supports quick action extensions that allow users to perform specific actions quickly. These extensions can be accessed from the side menu and include the following options.

To install the quick action extensions, follow these steps:
- **Navigate to the extensions directory:** `cd app/gemboard_app/extensions`
- **Open chrome extension manager:** `chrome://extensions/`
- **Enable developer mode:** Toggle the switch in the top right corner.
- **Load the extension:** Click on the "Load unpacked" button and select the `extensions` directory.

### Build for Desktop

Gemboard can also be built for desktop platforms. To build the desktop version, follow these steps:

You need to move to the `app/gemboard_app` directory before running the following commands.

#### Windows

1. **Build the Windows version:** `flutter build windows`

#### macOS

1. **Build the macOS version:** `flutter build macos`
2. **Install the .app for macOS:** `open build/macos/Build/Products/Release/gemboard.app`

#### Linux

1. **Build the Linux version:** `flutter build linux`

### Build for Mobile

#### Android

1. **Build the Android version:** `flutter build apk`

#### iOS

1. **Build the iOS version:** `flutter build ios`

### Configuration

**LLM Settings:**

Gemboard need your Gemini API key to access the Luminous Language Model. You can provide your API key in the Settings screen of the app. (Open side menu -> Settings -> LLM API Key)

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

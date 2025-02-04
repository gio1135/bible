# Bible app

This is an open-source project to create a feature-rich Bible app. Developed with Flutter, our goal is to provide a seamless offline experience across iOS, Android, and the web.

## Features

*   **Offline Functionality:** Access the entire Bible text offline, along with all the following features:
    *   Audio playback with optional download for offline listening
    *   Fast, offline searches for keywords, phrases, and verse references
    *   Bookmarks, highlights, and personal notes
    *   Reading plans with progress tracking
    *   Verse memorization tools
    *   Interactive quizzes on general Bible knowledge as well as personalized quizzes based on your notes, highlights, memorized verses, and recent reading plan activity
    *   An unbloated, modern, and intuitive user interface

## Development

The app is currently under development. Contributions are welcome! Feel free to open issues, submit pull requests, or discuss the project in the Discussions tab.

### Roadmap

The project is being developed in phases:

1.  **Project Setup and Data Integration:**
    *   Acquire KJV text in USFX format.
    *   Parse the USFX data and create a data structure.
    *   Set up the basic UI.
2.  **Database Integration and Search:**
    *   Integrate SQLite for local storage.
    *   Design the database schema.
    *   Populate the database with Bible data.
    *   Implement the search functionality.
3.  **Audio Integration and Playback:**
    *   Acquire open-source KJV audio.
    *   Implement audio playback with controls and verse synchronization.
4.  **Quiz Feature Development:**
    *   Design the quiz data structure.
    *   Implement quiz generation logic, pulling from memorized verses, highlights, and notes for personalized quizzes.
    *   Create the quiz UI.
5.  **Verse Memorization Tool:**
    *   Design the UI for the memorization tool.
    *   Implement features to aid in memorization, such as flashcards, spaced repetition, and progress tracking.
6.  **UI/UX Enhancements and Testing:**
    *   Refine the UI/UX with additional features and customization options.
    *   Conduct thorough testing on different platforms.

## Contributing

If you'd like to contribute to the project, please follow these steps:

1.  Fork the repository.
2.  Create a new branch for your feature or bug fix.
3.  Make your changes and commit them with clear messages.
4.  Push your branch to your fork.
5.  Open a pull request to the main repository.
# WhatsAppClone 📱

A **Full-Stack Chatting App** built with **Flutter**, **Firebase**, **Cloudinary**, and **Riverpod**. This project replicates essential features of WhatsApp, offering a feature-rich and seamless messaging experience.

---

## 🔗 GitHub Repository

[![GitHub Repo](https://img.shields.io/badge/GitHub-Repository-blue?style=for-the-badge)](https://github.com/Nahid-web/whatsapp_clone)

---

## 🚀 Technologies Used

- **Flutter**: Cross-platform app development framework.
- **Firebase**: Backend services for authentication, database, and cloud storage.
- **Cloudinary**: File storage and media optimization.
- **Riverpod**: Robust and modern state management solution.

---

## 🌟 Features

- **Authentication**

  - Phone number-based authentication.

- **Chat Functionality**

  - One-to-one chatting with contacts.
  - Group chatting with selected contacts.
  - Supports text, images, GIFs, videos, audio (with recording), and emoji sharing.
  - Image and video caching for optimized performance.

- **Status Updates**

  - Status visible only to contacts.
  - Status disappears automatically after 24 hours.

- **User Interactions**
  - Online/offline status indicators.
  - Message seen confirmation.
  - Automatic scrolling to the latest message.
  - Replying to specific messages.

---

## 🔮 Future Enhancements

- **Calling Features**
  - One-to-one audio and video calling.
  - Group calling functionality.

---

## 📸 Screenshots

### 1. landing Screen

![landing_screen](https://github.com/user-attachments/assets/6175ce78-9b0e-496d-ae9c-0fa7bd231af0)

### 2. Validation Phone Number with Country Code

![validation_with_countrycode](https://github.com/user-attachments/assets/c27cf361-95e0-4529-8146-4ef5b2a9b329)

#![validation_with_countrycode](https://github.com/user-attachments/assets/47e67c7f-ef4f-409e-9850-2872a44be2bd)

## 3. Select Country & Automaticly add code with Phn Number

![select_your_countrycode](https://github.com/user-attachments/assets/9c9c1122-9f57-4ca4-b413-013d726f5f5f)

### 4. Create Profile Screen

![create_profile](https://github.com/user-attachments/assets/2e808407-69d9-424f-ae97-5fa511ef3f08)

### 4. Chat Screen

![chat_screen](https://github.com/user-attachments/assets/31f85fdf-6c77-4157-b697-02eb410eb624)

### 5. Chat List

![chat](https://github.com/user-attachments/assets/d6cb8224-d887-4722-a9b0-581b2b0ee4ea)
![record_audio](https://github.com/user-attachments/assets/68045e4f-1866-438b-b2fd-814915f7d97f)

### 6. Status Screen

![status_screen](https://github.com/user-attachments/assets/ea3090fa-688c-436d-ac94-4815a4bc33f0)

### 7. Status

![status](https://github.com/user-attachments/assets/a2b6dc2c-2156-4995-8995-6d1c19396490)

## 📸 Screenshots

### 1. Landing Screen

<img src="https://github.com/user-attachments/assets/6175ce78-9b0e-496d-ae9c-0fa7bd231af0" alt="landing_screen" style="transform: scale(0.8)/>

### 2. Validation Phone Number with Country Code

<img src="https://github.com/user-attachments/assets/c27cf361-95e0-4529-8146-4ef5b2a9b329" alt="validation_with_countrycode" width="400"/>

### 3. Select Country & Automatically Add Code with Phone Number

<img src="https://github.com/user-attachments/assets/9c9c1122-9f57-4ca4-b413-013d726f5f5f" alt="select_your_countrycode" width="400"/>

### 4. Create Profile Screen

<img src="https://github.com/user-attachments/assets/2e808407-69d9-424f-ae97-5fa511ef3f08" alt="create_profile" width="400"/>

### 5. Chat Screen

<img src="https://github.com/user-attachments/assets/31f85fdf-6c77-4157-b697-02eb410eb624" alt="chat_screen" width="400"/>

### 6. Chat List

<img src="https://github.com/user-attachments/assets/d6cb8224-d887-4722-a9b0-581b2b0ee4ea" alt="chat" width="400"/>
<img src="https://github.com/user-attachments/assets/68045e4f-1866-438b-b2fd-814915f7d97f" alt="record_audio" width="400"/>

### 7. Status Screen

<img src="https://github.com/user-attachments/assets/ea3090fa-688c-436d-ac94-4815a4bc33f0" alt="status_screen" width="400"/>

### 8. Status

<img src="https://github.com/user-attachments/assets/a2b6dc2c-2156-4995-8995-6d1c19396490" alt="status" width="400"/>

---

## 📥 Installation

To get started with this project, follow the steps below:

1.  Clone the repository:

    ```js
    git clone https://github.com/Nahid-web/whatsapp_clone.git
    cd whatsapp_clone
    ```

2.  Set up Firebase:

    - Create a Firebase Project.

      Run the following commands:

      ```js
      npm install -g firebase-tools
      dart pub global activate flutterfire_cli
      flutterfire configure
      ```

    - Enable Authentication in Firebase.
    - Create Android & iOS Apps in Firebase.

3.  Set up Cloudinary for media storage and management:

    - Sign up at Cloudinary and create a new project.

    - Get your Cloudinary Cloud Name, API Key, and API Secret from the Cloudinary dashboard.

    - Create a .env file in the root directory of your project and add your Cloudinary credentials:

    ```bash
    CLOUD_NAME=your_cloud_name
    API_KEY=your_api_key
    API_SECRET=your_api_secret
    ```

4.  Install dependencies:

    ```bash
    flutter pub get
    ```

5.  Open Simulator to run app

    - open the iOS simulator and run the app: (For IOS)

    ```bash
    open -a simulator
    flutter run
    ```

    - open Android, simply run the app: (For Android)

    ```bash
    flutter run
    ```

## 📚 Dependencies

The following dependencies are used in this project:

- **audioplayers**: ^6.1.0
- **cached_network_image**: ^3.4.1
- **cached_video_player_plus**: ^3.0.3
- **cloud_firestore**: ^5.5.0
- **cloudinary_flutter**: ^1.3.0
- **cloudinary_url_gen**: ^1.6.0
- **country_picker**: ^2.0.27
- **cupertino_icons**: ^1.0.8
- **emoji_picker_flutter**: ^3.1.0
- **firebase_auth**: ^5.3.3
- **firebase_core**: ^3.8.0
- **firebase_storage**: ^12.3.6
- **flutter**: sdk: flutter
- **flutter_contacts**: ^1.1.9+2
- **flutter_dotenv**: ^5.2.1
- **flutter_riverpod**: ^2.6.1
- **flutter_sound**: ^9.17.8
- **giphy_get**: ^3.6.0
- **http**: ^1.2.2
- **image_picker**: ^1.1.2
- **intl**: ^0.19.0
- **path_provider**: ^2.1.5
- **permission_handler**: ^11.3.1
- **story_view**: ^0.16.5
- **swipe_to**: ^1.0.6
- **uuid**: ^4.5.1
  For help getting started with Flutter development, view the
  [online documentation](https://docs.flutter.dev/), which offers tutorials,
  samples, guidance on mobile development, and a full API reference.

# whatsapp_clone

# whatsapp_clone

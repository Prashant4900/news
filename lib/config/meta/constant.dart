class Config {
  static const String clientID =
      "317129257323-62tq38d01nn1ovq8jnvgh6n37m80skje.apps.googleusercontent.com";

  static const String userIcon =
      'https://firebasestorage.googleapis.com/v0/b/nerdyr-nation.appspot.com/o/flutter%2Fuser.png?alt=media&token=058e3182-2ef3-437f-9ed6-95543870ce1a';

  static const String signInDescription =
      'Welcome to Memo Sample Application! Please sign in to continue.';
  static const String signUnDescription =
      'Welcome to Memo Sample Application! Please create an account to continue.';

  static const String kApiKey =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoic2VydmljZV9yb2xlIiwiaWF0IjoxNjM0ODM1ODU1LCJleHAiOjE5NTA0MTE4NTV9.6Qiy4kumOcoIkIUZrqCYl-tsyUYInCoOl5sGuk52BP8";

  static const String kAuthorization =
      "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoic2VydmljZV9yb2xlIiwiaWF0IjoxNjM0ODM1ODU1LCJleHAiOjE5NTA0MTE4NTV9.6Qiy4kumOcoIkIUZrqCYl-tsyUYInCoOl5sGuk52BP8";
}

class API {
  static const String baseUrl =
      "https://vptylhmftedfbhffpkvb.supabase.co/rest/v1";
}

class Articles {
  static const int id = 1;
  static const String titleHindi =
      "नई पोकेमॉन यात्रा यूट्यूब पर भारत में श्रृंखला प्रीमियर";
  static const String titleEng =
      "New Pokémon Journeys The Series Premieres in India on YouTube";
  static const String descHindi =
      "अपनी 26वीं वर्षगांठ के जश्न में, लोकप्रिय एनिमेटेड फ्रैंचाइजी, पोकेमॉन, अपने नवीनतम सत्र के प्रीमियर 4 एपिसोड, नि यात्रा: अपने यूट्यूब चैनल पर मुफ्त के लिए श्रृंखला आज (फ़रवरी 19 @5:30 pm IST के बाद) और नए एपिसोड हर शुक्रवार की रात को अपने आधिकारिक यूट्यूब चैनल पर स्ट्रीमिंग किया जाएगा ।";
  static const String descEng =
      "In celebration of its 26th anniversary, The popular animated franchise, Pokémon, is kicking off the festivities by the Premiering 4 Episodes of Its Latest Season, Pokemon Journeys: The Series for free on Its YouTube Channel Today ( Feb 19 @5:30pm IST onwards ) & The New Episodes will be Streaming on its Official YouTube Channel on Every Friday night.";

  static const String thumbnail =
      'https://firebasestorage.googleapis.com/v0/b/nerdyr-nation.appspot.com/o/thumbnail%2FPicsArt_02-19-03.33.01-1024x576.jpg?alt=media&token=8c1f7c2e-476e-4570-bd5e-65a2d2d9abd0';

  static const String audioHindi =
      "https://firebasestorage.googleapis.com/v0/b/nerdyr-nation.appspot.com/o/audio%2F5_hi.mp3?alt=media&token=5a6666b3-e99f-469e-a47d-7310fdff3adf";
  static const String audioEng =
      "https://firebasestorage.googleapis.com/v0/b/nerdyr-nation.appspot.com/o/audio%2F5_eng.mp3?alt=media&token=dc8fa62c-f1a4-4cdb-a9e7-ddd4526b5b47";

  static const String source =
      "https://animenewsindia.wordpress.com/2021/02/19/new-pokemon-journeys-the-series-premieres-in-india-on-youtube/";

  static const bool isVideo = false;

  static const String createAt = "13-01-2022 11.33.49 PM";
  static const String updateAt = "16-01-2022 11.17.16 PM";

  static const String category = "Anime";
}

class Language {
  static const String hindi = "Hindi";
  static const String english = "English";
}

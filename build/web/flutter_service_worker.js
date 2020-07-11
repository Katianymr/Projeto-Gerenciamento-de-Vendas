'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "541fae9a5b7a1616449965f170bbe66d",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/lib/assets/imagens/Katiany.jpg": "22f25f376b5f9819e07bda8df883fb2e",
"assets/lib/assets/imagens/Logo%2520PDM.png": "167052f0944097e062e7c1cdb5df577f",
"assets/LICENSE": "c683ec93538f4a3698731763baae0a52",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "d18765bd18e67da5c4be0f09fb93066c",
"/": "d18765bd18e67da5c4be0f09fb93066c",
"main.dart.js": "ce98acddb52c9d274b3b1b7229b78d8f",
"manifest.json": "eabaf8458968fa9dd2337b077daa06dc"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});

'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "styles.css": "7e94a13e57374f6084bac267bc9ee003",
"favicon.png": "21e60659936a04dbc9dc5cd694954841",
"main.dart.js": "061c7022fdc7bb7fb913bec880a58511",
"index.html": "0b7f0fb8a193c3d31a08028e68d00c3e",
"/": "0b7f0fb8a193c3d31a08028e68d00c3e",
"flutter.js": "f85e6fb278b0fd20c349186fb46ae36d",
"manifest.json": "e3ede0e5b6ffc02ced9b235b93add508",
"canvaskit/canvaskit.js": "2bc454a691c631b07a9307ac4ca47797",
"canvaskit/canvaskit.wasm": "bf50631470eb967688cca13ee181af62",
"canvaskit/profiling/canvaskit.js": "38164e5a72bdad0faa4ce740c9b8e564",
"canvaskit/profiling/canvaskit.wasm": "95a45378b69e77af5ed2bc72b2209b94",
"assets/AssetManifest.json": "d4fb43160b27010cfdc8ac5ccad8fe18",
"assets/shaders/ink_sparkle.frag": "237ceacd6c04871e538aaa934b1327a3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/assets/images/widgets.jpg": "e40ea9f408a88055ab692e4bf0bcaa39",
"assets/assets/images/companies.png": "039da9b351b6ad7399abbb2f008a0d85",
"assets/assets/images/hamiltonApp.png": "eeb73e2d7672434031616f6876ce17a7",
"assets/assets/images/alibabaCase.png": "3bc30e9bebf42f8a35274ecabd9f4a47",
"assets/assets/images/adwordsCase.png": "c08c892086715e871691c64ff5b1d0bc",
"assets/assets/images/birchCase.png": "e3312a64a15a41952a8627aab6a439b7",
"assets/assets/images/screen4.png": "6a679fc700ecb39ab07be83cb120546e",
"assets/assets/images/gpay2.png": "825fb4217302ea4e89725bd9c1581f03",
"assets/assets/images/screen3.png": "2a88d15bbd21da0c08d0e669739849dc",
"assets/assets/images/hamiltonAd.png": "6a395426dfc04fddcfb60392f3ebcdc8",
"assets/assets/images/appRender.png": "58ba514af67bbf3501cef5622839ced8",
"assets/assets/images/gpay1.png": "b534737cb2d5ae64ce2c244b30ca8d11",
"assets/assets/images/gpay.jpg": "8881c854c8006e00abbee2cb54d188bb",
"assets/assets/images/hamiltonCase.png": "5076b5f92b5ebf4fa5ad11cb85fb33aa",
"assets/assets/images/organisation.png": "8414c8470528c80715d4627edafbd83e",
"assets/assets/images/screen2.png": "7fbadcc02f1af4461b9ba9adbbdbcdef",
"assets/assets/images/screen1.jpg": "c2ccebc1da83ae18521954f4557d77ae",
"assets/assets/gif/ui1.gif": "a6071e6cda666c382159782b022fc70e",
"assets/assets/gif/ui3.gif": "80d142fdae0b3109fc504a57ec8e2b71",
"assets/assets/gif/hotR.gif": "5ac31a2db347a37e88e79f800359bd1b",
"assets/assets/gif/robot_half.gif": "a061c61fab73d185489719a603771cd6",
"assets/assets/gif/ui2.gif": "805fe4fb193d356ca6af0e0f48c776ae",
"assets/assets/chrisbin.jpg": "243982362af5329a1d7d280aceb286b9",
"assets/assets/icons/android.png": "7c203f73efc28b82f6b0e24ee491104c",
"assets/assets/icons/firebase.png": "c24b6b9c0fcd84c7b258879880472660",
"assets/assets/icons/native2.png": "5ec91e4f63e96a1a62c444420baf7f3c",
"assets/assets/icons/redux.png": "8251fe76d7487a28b07603515b300964",
"assets/assets/icons/studio.png": "f182626cc6ccb4ce7ca19f428543142b",
"assets/assets/icons/vscode.png": "e3f53dda8adb2b7919ea4e7904a01b3f",
"assets/assets/icons/material.png": "773d2d6fa0dab5ed886e948fca240c6f",
"assets/assets/icons/apple.png": "1ec11a869384bc5e59625bac39b6a099",
"assets/assets/icons/native1.png": "ae3b7f8ab36d2abc88c2a36e686cedda",
"assets/assets/icons/gcp.png": "55b406640869352715a6168602c020cd",
"assets/assets/icons/xcode.png": "50c8ecfe733aad7dc915c3c65911e108",
"assets/assets/icons/flex.png": "f72486cdc16fd6d110ace45018be483b",
"assets/assets/icons/fast.png": "29412956870118c65839e7b7fb5ab2fd",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/NOTICES": "16e78daf9efaec13b806e6408002b3a7",
"version.json": "eb79a38afe99528e04c598ac1590049a",
"icons/Icon-512.png": "69827d65347a27db9dca0635488b344d",
"icons/Icon-192.png": "d112b7cef808ee33637cdbd4553853f3",
"icons/Icon-maskable-192.png": "4dde15bde5e5ba2e70d8f46277a62525",
"icons/Icon-maskable-512.png": "ebdaa16c543959fa4746f0f7892c609e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}

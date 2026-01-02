'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "43c626e4a32618693aae91a7b3209373",
"assets/AssetManifest.bin.json": "2424ef562e053fa307f0bab29ebcb68f",
"assets/AssetManifest.json": "a951aad22407ffa0847bf9e02aabb2a9",
"assets/assets/images/mobile_dev.png": "5d02a923e19fc324b6562b6da4deb40e",
"assets/assets/images/projects/2kfest/ingressos.png": "fe32a33a8056571b84b5a6eb0708d0cb",
"assets/assets/images/projects/2kfest/ingressos_vendidos.png": "5bc99751f98264246735d0fde40eabf7",
"assets/assets/images/projects/2kfest/login.png": "69988901c34577b7880fd1323d8ff69d",
"assets/assets/images/projects/2kfest/validacao.png": "72cc6721408881a74c53a0ff67d6224c",
"assets/assets/images/projects/2kfest/venda.png": "beb41275edee300921305b737dc69d5c",
"assets/assets/images/projects/2kfest/venda_ingressos.png": "11e451f542b1467960369c87b476e193",
"assets/assets/images/projects/barth_fitness/agenda.png": "e6e7abc8ad0b47e2cf98fb8e3a9d1bbb",
"assets/assets/images/projects/barth_fitness/AI_report.png": "2511228a06e29c30f93db339feff28ea",
"assets/assets/images/projects/barth_fitness/contracts.png": "d0615e02c249c9d3afed7aa6369c8f8c",
"assets/assets/images/projects/barth_fitness/home.png": "fbb03d42f79b35bbcd2ba2a6ae087bb2",
"assets/assets/images/projects/barth_fitness/payments.png": "37c511b82bc4210a2b1d87c592190909",
"assets/assets/images/projects/barth_fitness/training.png": "c1b386b86c95f07ef5236c9da5fd0884",
"assets/assets/images/projects/barth_fitness/venda.png": "8db53e9549ff47408fdc7289cf9a3b1b",
"assets/assets/images/projects/barth_fitness_app/1.png": "cca2f4b716d06939c9b22ef12e45805d",
"assets/assets/images/projects/barth_fitness_app/2.png": "df381816cae22305eddbaa5c267a5c6a",
"assets/assets/images/projects/barth_fitness_app/3.png": "df54e4b18c4d8cc14cab654029024711",
"assets/assets/images/projects/barth_fitness_app/4.png": "77ca8e469c5c69b18850de699ad422aa",
"assets/assets/images/projects/barth_fitness_app/5.png": "3e118178e1a9e265ffe95175dde59615",
"assets/assets/images/projects/barth_fitness_app/6.png": "39503bb40b6331894c40ca6c793de5e0",
"assets/assets/images/projects/barth_fitness_app/7.png": "179a559d4c829459ebb96938c3414e16",
"assets/assets/images/projects/barth_fitness_app/8.png": "7086cfce100aae4c7c781e36615b1b0b",
"assets/assets/images/projects/desconecte/home.png": "5b1634c4540202a3288827134a6d15b9",
"assets/assets/images/projects/desconecte/item.png": "91d0bdced63304b17e5e486f4813aaa8",
"assets/assets/images/projects/desconecte/item_2.png": "b3ee8b1a9c7f4a2c62d62dc8f5baba25",
"assets/assets/images/projects/desconecte/jogos.png": "955b38239d1de869375b7ff7098dbc21",
"assets/assets/images/projects/petmais_app/home_app.png": "d9892a57204383023b6b92d976833b16",
"assets/assets/images/projects/petmais_app/login_app.png": "2cc99f4fd644143f044749c7accec8d2",
"assets/assets/images/projects/petmais_app/pet_app.png": "69b5a6c84fd0fffbc908b647094cd0b5",
"assets/assets/images/projects/petmais_app/profile_app.png": "ec62c8993a950f428a1e4b2fd36c6efa",
"assets/assets/images/projects/petmais_app/schedules_app.png": "3c963b6e6720217c24174872d244a7b5",
"assets/assets/images/projects/petmais_app/schedule_app.png": "312dea8517e20c037f77c14698284243",
"assets/assets/images/projects/petmais_app/schedule_detail_app.png": "7f841977e19ef38ac2bd84f861f5cb98",
"assets/assets/images/projects/petmais_app/supplier_app.png": "d7780191ca9a3414770408b4022a0b74",
"assets/assets/images/projects/petmais_app/vaccination_app.png": "dc441a10b467cf667791122f20c79cf0",
"assets/assets/images/projects/petmais_web/configs.png": "d128288ba79c1dfc775d6ad29ff32cc5",
"assets/assets/images/projects/petmais_web/funcionarios.png": "eed775a9677ebc40aa2acda99ace87d2",
"assets/assets/images/projects/petmais_web/home.png": "30444d0391d554c75eed10e3ebd09d4e",
"assets/assets/images/projects/petmais_web/login.png": "2848fb5df9e7a404bf43cc9220d8d2c6",
"assets/assets/images/projects/petmais_web/reports.png": "eaafea80c816f53ad653ae5835b29f91",
"assets/assets/images/projects/petmais_web/schedule.png": "a7b6614b37e7be8788ed2e75bdcb3fe0",
"assets/assets/images/projects/quiz_faction/image_1.png": "3ae6d991deaccd22f6449b281e7d73e0",
"assets/assets/images/projects/quiz_faction/image_2.png": "6e75a14c75771cc7201f2c8beb81d34d",
"assets/assets/images/projects/quiz_faction/image_3.png": "9df210cdb3a1dd62e1166605eded9e5b",
"assets/assets/images/projects/quiz_faction/image_4.png": "6c82ff50cc0273a3d67375d45a08462e",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "549d52c39752f826d0aa72385d78712e",
"assets/NOTICES": "92fd0101b824448e86af4449117ba143",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "1561d314b6e1c66894be9177faa2d06e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5d424a84ac80760175a3638412945dd1",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "cf6b55b8325726ee1bb31efecd71ff5a",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "ba06f73ed8562693b1d66478b81b0d04",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "fdd18c69efeee6c202e554fbfa5c3351",
"/": "fdd18c69efeee6c202e554fbfa5c3351",
"main.dart.js": "c408db96601547a0d3c03eb5ba405d55",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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

'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "336d4459c2835584fa1f4cc8dfe6f299",
"assets/AssetManifest.bin.json": "c5fa133b8a4e8c1f1948fda197fdbf73",
"assets/AssetManifest.json": "088bea3c6d3e873b72af9c9cde25971f",
"assets/assets/images/mobile_dev.png": "5d02a923e19fc324b6562b6da4deb40e",
"assets/assets/images/projects/2kfest/ingressos.png": "fe32a33a8056571b84b5a6eb0708d0cb",
"assets/assets/images/projects/2kfest/ingressos_vendidos.png": "5bc99751f98264246735d0fde40eabf7",
"assets/assets/images/projects/2kfest/login.png": "69988901c34577b7880fd1323d8ff69d",
"assets/assets/images/projects/2kfest/validacao.png": "72cc6721408881a74c53a0ff67d6224c",
"assets/assets/images/projects/2kfest/venda.png": "beb41275edee300921305b737dc69d5c",
"assets/assets/images/projects/2kfest/venda_ingressos.png": "11e451f542b1467960369c87b476e193",
"assets/assets/images/projects/comparai/image_1.png": "03dce1b7f84f23094882db8795ac4cd1",
"assets/assets/images/projects/comparai/image_2.png": "8880ebe8f930f85c5c419256ffac195c",
"assets/assets/images/projects/comparai/image_3.png": "f4d1d061b31268aadf7ffdb825760a67",
"assets/assets/images/projects/comparai/image_4.png": "b7b7019046e5405e8225a6f0e1ee325f",
"assets/assets/images/projects/desconecte/home.png": "5b1634c4540202a3288827134a6d15b9",
"assets/assets/images/projects/desconecte/item.png": "91d0bdced63304b17e5e486f4813aaa8",
"assets/assets/images/projects/desconecte/item_2.png": "b3ee8b1a9c7f4a2c62d62dc8f5baba25",
"assets/assets/images/projects/desconecte/jogos.png": "955b38239d1de869375b7ff7098dbc21",
"assets/assets/images/projects/eidara-ticket/clientes.png": "786002a06bb2bd39f86742127b4a66a3",
"assets/assets/images/projects/eidara-ticket/conferencia.png": "e29f56b2a187cfb9097827afb34346f9",
"assets/assets/images/projects/eidara-ticket/dashboard.png": "a53b58c78d5064da408fc5335c1de8dc",
"assets/assets/images/projects/eidara-ticket/evento.png": "b58380b5cc42c2def11a686622b6984a",
"assets/assets/images/projects/eidara-ticket/ingresso.png": "fd73103dd2324b6ca5dae2d216dc34ac",
"assets/assets/images/projects/eidara-ticket/lotes.png": "198827a87d5004db83dcfae7fc93b31d",
"assets/assets/images/projects/eidara-ticket/reserva.png": "373549dbfbfbfc4c5cc3bd3ad476f8e2",
"assets/assets/images/projects/eidara_fit_app/aulas.png": "590a9de1e8f1f33f11ab02af9bb068ca",
"assets/assets/images/projects/eidara_fit_app/contratos.png": "99d89a3b90a91b460c11440238ebe152",
"assets/assets/images/projects/eidara_fit_app/login.png": "c85198e585e6566ee30b08b5fe462f82",
"assets/assets/images/projects/eidara_fit_app/profile.png": "2329e07f40cfb01b701616bd8410dd42",
"assets/assets/images/projects/eidara_fit_app/treino.png": "bebb38949a5ecd9598aabd685ef42230",
"assets/assets/images/projects/eidara_fit_web/agenda.png": "2c100cc51cc7800221a6a8519f9e2bb2",
"assets/assets/images/projects/eidara_fit_web/avaliacao_fisica.png": "2ef8a473cd4a075a167335c41ea062bd",
"assets/assets/images/projects/eidara_fit_web/logs.png": "a299cde792ef553afc77bb4b8fa53f7d",
"assets/assets/images/projects/eidara_fit_web/relatorios.png": "2ae95f14203ddeb9176abf626aefa806",
"assets/assets/images/projects/eidara_fit_web/treino.png": "ef1a24bbbcf7990e9139698ffb4e95ad",
"assets/assets/images/projects/eidara_fit_web/usuarios.png": "aeb7ee82dbf75fe7ea7d021c5c6cf051",
"assets/assets/images/projects/eidara_fit_web/vendas.png": "6776bbfc62b9f6b448ee9298aa563c48",
"assets/assets/images/projects/petmais_app/home_app.png": "2521b0546f255f95edf7db582f44f0bb",
"assets/assets/images/projects/petmais_app/login_app.png": "50ed167de7353271806aa4044262d474",
"assets/assets/images/projects/petmais_app/pet_app.png": "a806d106817815406e391c2d2291201f",
"assets/assets/images/projects/petmais_app/profile_app.png": "7dd1288ded8264fdf3a2e054df0dcbaa",
"assets/assets/images/projects/petmais_app/schedules_app.png": "b7d229178a05453fe1b349e106a88670",
"assets/assets/images/projects/petmais_app/supplier_app.png": "6cb2a6051b0e4f989eb0b6f3fa9c7b52",
"assets/assets/images/projects/petmais_app/vaccination_app.png": "98d4583432a40cb802d5c5af46cbb7db",
"assets/assets/images/projects/petmais_web/configs.png": "c8e4798c508634d6f357dcfa007dd67e",
"assets/assets/images/projects/petmais_web/home.png": "42d11da34532f31417eae8a867a6edbb",
"assets/assets/images/projects/petmais_web/login.png": "bd521331635e42cbfd11315567a68602",
"assets/assets/images/projects/petmais_web/reports.png": "030e1ae3f01ffe37bda7c63dd31b4915",
"assets/assets/images/projects/petmais_web/schedule.png": "51bce8a8dfb687af0a6f2f47c03e6381",
"assets/assets/images/projects/petmais_web/servicos.png": "e79c6b0e9766d98e944f81c05fc2b63a",
"assets/assets/images/projects/quiz_faction/image_1.png": "3ae6d991deaccd22f6449b281e7d73e0",
"assets/assets/images/projects/quiz_faction/image_2.png": "6e75a14c75771cc7201f2c8beb81d34d",
"assets/assets/images/projects/quiz_faction/image_3.png": "9df210cdb3a1dd62e1166605eded9e5b",
"assets/assets/images/projects/quiz_faction/image_4.png": "6c82ff50cc0273a3d67375d45a08462e",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "67466cec97baaffea16ef7ee5a007252",
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
"flutter_bootstrap.js": "26adfed895104636301989c282a39233",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "b3a089ab9fe29e08ea852386308c661d",
"/": "b3a089ab9fe29e08ea852386308c661d",
"main.dart.js": "6f77e32e196c5116786c23ee31d1368a",
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

/**
 * Welcome to your Workbox-powered service worker!
 *
 * You'll need to register this file in your web app and you should
 * disable HTTP caching for this file too.
 * See https://goo.gl/nhQhGp
 *
 * The rest of the code is auto-generated. Please don't update this file
 * directly; instead, make changes to your Workbox build configuration
 * and re-run your build process.
 * See https://goo.gl/2aRDsh
 */

importScripts("https://storage.googleapis.com/workbox-cdn/releases/4.3.1/workbox-sw.js");

self.addEventListener('message', (event) => {
  if (event.data && event.data.type === 'SKIP_WAITING') {
    self.skipWaiting();
  }
});

/**
 * The workboxSW.precacheAndRoute() method efficiently caches and responds to
 * requests for URLs in the manifest.
 * See https://goo.gl/S9QRab
 */
self.__precacheManifest = [
  {
    "url": "404.html",
    "revision": "80012fd5fbf4334962b56d56369f2d4a"
  },
  {
    "url": "assets/css/0.styles.e1f0d356.css",
    "revision": "32c2004e497c15c81cba5bb88271b99e"
  },
  {
    "url": "assets/img/search.83621669.svg",
    "revision": "83621669651b9a3d4bf64d1a670ad856"
  },
  {
    "url": "assets/js/10.17dc7fc0.js",
    "revision": "235105471074525d1d2bdc9d1186bdf9"
  },
  {
    "url": "assets/js/11.32ba2003.js",
    "revision": "b012f550c9920cce59792eeb20924fd7"
  },
  {
    "url": "assets/js/12.f4d805b2.js",
    "revision": "45a0f424731485e8513dbf3f52453817"
  },
  {
    "url": "assets/js/13.b369ab95.js",
    "revision": "ff30346a2ae0704d1a7791e2ab06f152"
  },
  {
    "url": "assets/js/14.4fd45c58.js",
    "revision": "2826a1bfcbbdf9810af87b4f633a8390"
  },
  {
    "url": "assets/js/15.2778bc60.js",
    "revision": "e22b3f17770a85a8e629f5bc4764a3aa"
  },
  {
    "url": "assets/js/16.d9cfeece.js",
    "revision": "c4198733324dbed8797b6c14c8c0fb70"
  },
  {
    "url": "assets/js/17.2fc3ce3b.js",
    "revision": "fa0c5305ca0f6742b07e3f4cbfe05073"
  },
  {
    "url": "assets/js/18.d8070267.js",
    "revision": "ed75a869134ac19fa7e978a7cca1d4e7"
  },
  {
    "url": "assets/js/19.52fbf99a.js",
    "revision": "27fdce0dee90ea3ed9605a185c2c3021"
  },
  {
    "url": "assets/js/2.e85d634e.js",
    "revision": "613eef12571b272390e4d84a5a7700fd"
  },
  {
    "url": "assets/js/20.86308ff8.js",
    "revision": "66b06e520eac2a35392482449a87bc15"
  },
  {
    "url": "assets/js/21.5f46f703.js",
    "revision": "03d7f09101441c38cc29d09fcd4f82f6"
  },
  {
    "url": "assets/js/22.ccf33038.js",
    "revision": "605a4ccb0a88331e992baa0819328028"
  },
  {
    "url": "assets/js/23.759bac56.js",
    "revision": "b96f0274c66bb58089b4b04c6455325a"
  },
  {
    "url": "assets/js/24.f86a78d0.js",
    "revision": "e9168eab73f05e64591fd7110dd5e05a"
  },
  {
    "url": "assets/js/26.2b7d224e.js",
    "revision": "d09140fd6d4af5d21412c1e04e0338bb"
  },
  {
    "url": "assets/js/3.33d6b42d.js",
    "revision": "808ea9f2d864b4467fe90f16175227a8"
  },
  {
    "url": "assets/js/4.5d00dd71.js",
    "revision": "354b2b53903cf28623245afa41ac130d"
  },
  {
    "url": "assets/js/5.659aa560.js",
    "revision": "1e64aadea8db82000000ca9b866cb5ff"
  },
  {
    "url": "assets/js/6.73f22f79.js",
    "revision": "65c87ea66ae3b2e4b676cfecaec56395"
  },
  {
    "url": "assets/js/7.a2994458.js",
    "revision": "817c1a9fc1e6f84583934d814a9ab3f5"
  },
  {
    "url": "assets/js/8.e8761b22.js",
    "revision": "df02b8b825d5757e125dbe170d1555c1"
  },
  {
    "url": "assets/js/9.c0a843c2.js",
    "revision": "6fdef7e064583d735d435c9c7be58314"
  },
  {
    "url": "assets/js/app.234f6b50.js",
    "revision": "913ba361454a9855ac249bbfaeaa2aa1"
  },
  {
    "url": "conclusion/index.html",
    "revision": "57860638263d68d76ea467f885927214"
  },
  {
    "url": "design/index.html",
    "revision": "77ca62494b7e818b340a831ca9cf20c3"
  },
  {
    "url": "index.html",
    "revision": "45e4cccec81fc7ddd244ca5fe89a7832"
  },
  {
    "url": "intro/index.html",
    "revision": "d3fbf8adc92141382eb7e438285c329c"
  },
  {
    "url": "license.html",
    "revision": "70a2edbdcd1a16b29dc6ec11e14ab937"
  },
  {
    "url": "myAvatar.png",
    "revision": "b76db1e62eb8e7fca02a487eb3eac10c"
  },
  {
    "url": "requirements/index.html",
    "revision": "012532b86228366aed584778e6e96154"
  },
  {
    "url": "requirements/stakeholders-needs.html",
    "revision": "82519aecef02f17d2812708e4e46d71a"
  },
  {
    "url": "requirements/state-of-the-art.html",
    "revision": "be1fb7434a03dddc94ee782bcbef6d9a"
  },
  {
    "url": "software/index.html",
    "revision": "27813a06b4e200f31fce914e4a6f6d48"
  },
  {
    "url": "test/index.html",
    "revision": "ad5ec9581e04152d88756504b9712693"
  },
  {
    "url": "use cases/index.html",
    "revision": "e524d9f992c164d89633b5f60f1f59fc"
  }
].concat(self.__precacheManifest || []);
workbox.precaching.precacheAndRoute(self.__precacheManifest, {});
addEventListener('message', event => {
  const replyPort = event.ports[0]
  const message = event.data
  if (replyPort && message && message.type === 'skip-waiting') {
    event.waitUntil(
      self.skipWaiting().then(
        () => replyPort.postMessage({ error: null }),
        error => replyPort.postMessage({ error })
      )
    )
  }
})

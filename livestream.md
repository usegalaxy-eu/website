---
layout: home
title: GCC Livestream
---


<script type="text/javascript" src="https://content.jwplatform.com/libraries/POjuZXXt.js"></script>
<h1>GCC Livestream</h1>
<p>This year's Galaxy Community Conference will be livestreamed!</p>
<div class="alert alert-success">
	These videos will become active on Monday, July 1st. We have two cameras, during parallel talks, we will have one in each room. During plenary talks only one livestream will be active.
</div>

<div class="row">
	<div class="col-sm-6 col-xs-12">
		<div id="mobilemz"></div>
	</div>
	<div class="col-sm-6 col-xs-12">
		<div id="mobilerz"></div>
	</div>
</div>

<script type="text/javascript">
jwplayer("mobilemz").setup({
	width: "100%",
	aspectratio: "16:9",
	image: "https://www.streaming.uni-freiburg.de/Bilder/playerbackground.jpg",
	sources: [{
				file: "https://wowza.ub.uni-freiburg.de/live/smil:mobilemz.smil/playlist.m3u8"
			}, {
				file: "rtmps://wowza.ub.uni-freiburg.de/live/smil:mobilemz.smil"
			}, {
				file: "rtmp://wowza.ub.uni-freiburg.de:1935/live/mobilemz"
			}],
	rtmp: {
		bufferlength: 0.3
	},
	proxyType: "best"
});

jwplayer("mobilerz").setup({
	width: "100%",
	aspectratio: "16:9",
	image: "https://www.streaming.uni-freiburg.de/Bilder/playerbackground.jpg",
	sources: [{
				file: "https://wowza.ub.uni-freiburg.de/live/smil:mobilerz.smil/playlist.m3u8"
			}, {
				file: "rtmps://wowza.ub.uni-freiburg.de/live/smil:mobilerz.smil"
			}, {
				file: "rtmp://wowza.ub.uni-freiburg.de:1935/live/mobilerz"
			}],
	rtmp: {
		bufferlength: 0.3
	},
	proxyType: "best"
});
</script>

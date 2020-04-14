Download a static build of ffmpeg which contains libass from https://www.ffmpeg.org/download.html. For example

	wget https://evermeet.cx/ffmpeg/ffmpeg-96869-gb6879b61df.zip
	unzip ffmpeg-96869-gb6879b61df.zip

Download the video

	youtube-dl https://www.youtube.com/watch\?v\=SLGeFfxdEkA

Use that particular ffmpeg binary to render the subtitles.  Pay attention to the start time on the subtitles since it will need to coincide.  Set start time with -ss and the duration with -t.  

	./ffmpeg -i a.mkv -vf subtitles=a.srt -r 10 -ss 151 -t 5 out.gif

See if it works

	open -a "Google Chrome" out.gif



# clean up old video
rm cheering.mp4

# convert to png images
convert -density 160 cheering.pdf cheering.png

# convert to video
ffmpeg -ss 00:00:00 -i cheering-%d.png -ss 00:00:00 -i ToyStory_mix.mp3 -shortest cheering_raw.mp4
#ffmpeg -ss 00:00:00 -i cheering-%d.png -ss 00:00:10 -i ToyStory.m4a -shortest cheering_raw.mp4
#ffmpeg -ss 00:00:00 -i cheering-%d.png cheering_raw.mp4

# repair video
HandBrakeCLI --crop 0:0:0:0 -i cheering_raw.mp4 -o cheering.mp4

# clean up
rm cheering-*.png
rm cheering_raw.mp4

# view :)
#open cheering.mp4

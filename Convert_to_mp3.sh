for foo in *.m4a;
do ffmpeg -i "$foo" -acodec libmp3lame -aq 2 "${foo%.m4a}.mp3";
rm "$foo"
done

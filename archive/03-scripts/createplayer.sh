FILE="playlist.pls"
if [[ ! -f $FILE  ]]; then
   sh ~/bin/playlist.sh 
fi

echo 'mpv --start=$1 --end=$2 --playlist=playlist' > play.sh
chmod +x play.sh

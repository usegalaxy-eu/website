./gdrive list -q '"1fAslh6mfaXDS8P-dzp1BL9Qfm8adzcCm" in parents and trashed = false' --no-header | awk '{print $1}' > file_ids.txt
mkdir -p photos

for id in `cat file_ids.txt`; do
	if [[ ! -f $id.url ]]; then
		info="$(./gdrive info $id)"
		echo "$info" | grep DownloadUrl | sed 's/DownloadUrl: //;s/.export=download//g' > photos/${id}.url
		echo "$info" | grep Created | sed 's/Created: //g;s/ /T/g;' > photos/${id}.time
		sleep 1
	fi
done



echo '<?xml version="1.0" encoding="utf-8"?>
<feed xmlns="http://www.w3.org/2005/Atom" >
<generator uri="https://usegalaxy.eu" version="1">Blah</generator>
<link href="https://galaxyproject.eu/feed.xml" rel="self" type="application/atom+xml" />
<link href="https://drive.google.com/drive/folders/1fAslh6mfaXDS8P-dzp1BL9Qfm8adzcCm" rel="alternate" type="text/html" />
<updated>'$(date --rfc-3339=seconds | sed 's/ /T/')'</updated>
<id>https://galaxyproject.eu/feed.xml</id>
<title type="html">GCC 2019 Photos</title>
<subtitle>from the conference</subtitle>
'


for id in `cat file_ids.txt`; do
	url=$(cat photos/${id}.url)
	time=$(cat photos/${id}.time)

	echo '
	<entry>
	<title type="html">
	</title>
	<link href="'$url'" rel="alternate" type="text/html" title="Photo" />
	<published>'$time'</published>
	<updated>'$time'</updated>
	<id>'$id'</id>
	<content type="html">&lt;img src=&quot;'$url'&quot; /&gt;</content>
	<author>
	<name>
	</name>
	</author>
	</entry>'
done

echo '
</feed>
'

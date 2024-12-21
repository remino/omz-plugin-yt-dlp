unalias yd 2> /dev/null || true

function yd() {
  local output_format="%(upload_date)s - %(uploader)s - %(title)s [%(width)sx%(height)s %(fps)s][%(display_id)s].%(ext)s"
  local alias_noarc="--no-download-archive"
  local alias_sub="--sub-langs all --convert-subs srt --mkv --embed-subs"
  local alias_mkv="--remux-video mkv"
  local param_def="-N 10 --download-archive done.txt --embed-chapters"

  yt-dlp -o $output_format \
		--alias narc $alias_noarc \
		--alias sub $alias_sub \
		--alias mkv $alias_mkv \
		--download-archive "done.txt" \
		--embed-chapters \
		-N 10 \
		"$@"
}

compdef yd=yt-dlp

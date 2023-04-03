unalias y 2> /dev/null || true

function y() {
  local outputFormat="%(upload_date)s - %(uploader)s - %(title)s [%(width)sx%(height)s %(fps)s][%(id)s].%(ext)s"
  local noArcAlias="--no-download-archive"
  local subAlias="--sub-lang 'en.*' --convert-subs srt --mkv --embed-subs"
  local mkvAlias="--remux-video mkv"
  yt-dlp -o $outputFormat --alias narc $noArcAlias --alias sub $subAlias --alias mkv $mkvAlias -N 10 --download-archive "done.txt"  "$@"
}
compdef y=yt-dlp

_ytdlp_alias_set() {
	fpath+=($(dirname "$0"))
	autoload -Uz yt-dlp
}

_ytdlp_alias_set

unset -f _ytdlp_alias_set

unalias yd 2> /dev/null || true
alias yd=yt-dlp
compdef yd=yt-dlp

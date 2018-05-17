# debuglog_to_slack
Send error logs to slack

This allows you to watch a folder and then send yourself a slack msg when the folder changes

1. Download fswatch https://github.com/emcrisostomo/fswatch#getting-fswatch
or https://stackoverflow.com/questions/1515730/is-there-a-command-like-watch-or-inotifywait-on-the-mac 
you will only need 
	# Homebrew
	$ brew install fswatch

# cannot symlink error: https://stackoverflow.com/questions/26647412/homebrew-could-not-symlink-usr-local-bin-is-not-writable

Use first answer ^^

watch folder: 
$ fswatch -o ~/path/to/watch| xargs -n1 ~/script/to/run/when/files/change.sh

Example all together 
$ fswatch /path/to/folder | xargs -n1 /path/to/slack.sh

2. slack.sh file (in repo) you will need to put this /usr/local/bin

3. Get your own web hook from slack

4. Fill out slack.sh file vars

4. Go forth and spam yourself on slack

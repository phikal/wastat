WASTAT - WhatsApp statistics - is a toolset to extract, and analyse data
from WhatsApp chats, revived in a DD/MM/YYYY and 24h format. These can
be obtained by sending sending the chat in question via email, f.e. to
yourself.

(Android: In chat -\> options -\> more -\> email chat)

How to use
==========

Most common usages are collected in the `wastat` script. By default this
script will assume your chat is in the current directory and is called
`chat.txt`. To specify a different file, just append an argument to
wastat.

Commands
========

* `wc [chat file] [output file] [-o]`
	wc - or *word count* will
	count how often what word was used and output the results, sorted, by
	default, into `words.lis` if -o is mentioned, data will also be
	outputted to STDOUT.
* `uc [chat file] [output file] [-o]`
	 uc - or *user count* will count how often which user sent a message and
	output the results, sorted, by default, into `users.lis` if -o is
	mentioned, data will also be outputted to STDOUT.
* `uc [chat file] [output file] [-o]`
	uc - or *user count* will count how often which
	user sent a message and output the results, sorted, by default, into
	`users.lis` if -o is mentioned, data will also be outputted to STDOUT.
* `pt [chat file]`
	 pt - or /plot times/ will create a graph
	(using gnuplot), plotting the accumulative ammount of messages over all
	days.
* `pd [chat file] [start] [end]`
	 pd - or /plot dates/ will create a graph (using gnuplot), plotting
	the ammount of messages over time. The first and the last date will
	be extracted automatically, and generally don't/shouldn't have to be changed. 
* `pu [chat file] [start] [end]`
	pd - or /plot users/ will create a graph (using gnuplot),
	plotting the ammount of messages over time, for each participant
	individually. The first and the last date will be extracted
	automatically, and generally don't/shouldn't have to be changed. The
	script will ask you which users to include, and which not to. You will
	either be able to accept, modify (change name) or ignore.
* `put [chat file] [start] [end]`
	put - or /plot user times/ will create a
	graph (using gnuplot), plotting the ammount of messages over all days,
	for each participant individually. The plot will span from 00:00 to
	23:59.The script will ask you which users to include, and which not to.
	You will either be able to accept, modify (change name) or ignore.
* `clean`
	 This command removes all files that ./wastat might have generated.

Non-DD/MM/YYYY Files
====================

Wastat expects the DD/MM/YYYY file format to be used, and therfore
non-DD/MM/YYYY chat logs have to be converted first with `waconv`. This
script requires one argument to set the incoming language, and will then
convert any files from ARGV or STDIN. The result will to redirected to
STDOUT. Example:

```Shell
$ ./waconv de chat\_datei.txt \> chat\_file.txt
```

This will convert the german `chat\_datei.txt` to the DD/MM/YYY
`chat\_file.txt`. This now can be used with `wastat`.

Currently the following locales are supported:
* German: `de`
* United States format [MM/DD/YYY]: `us`

------------------------------------------------------------------------

License: MIT<br/>
Version: 0.3<br/>
Last update: 05.03.2016<br/>
Author: Philip Kaludercic <philippija@gmail.com>

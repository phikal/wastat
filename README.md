Wastat - WhatsApp statistics - is a toolset to extract,
and analyse data from WhatsApp chats, revived in US-Time
(MM/DD/YYYY). These can be obtained by sending sending 
the chat in question via email, f.e. to yourself
(Android: In chat -> options -> more -> email chat).

# How to use

To simplify usage, the `run` script exists. This script always 
assumes that the chat is saved as `chat.txt` in the current
directory but can easily be changed.

## Commands:

* `./run wo [chat file] [output file]`
	wo - or /word output/ will output all words separately into
	a file, by default `words.txt`
* `./run wc [chat file] [output file]`
	wc - or /word count/ will count how often what word was used
	and output the results, sorted, by default, into `words.lis`

---

License:	MIT
Version:	0.1
Last update:	11.02.2016
Author:		Philip Kaludercic <philippija@gmail.com>

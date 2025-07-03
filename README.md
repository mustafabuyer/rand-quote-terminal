# Random Text Highlighter for Terminal

This is a minimal Bash/Zsh-based terminal quote selector, viewer, and tagger system.  
It picks random lines from a plain `.txt` file, shows them in a styled terminal box, and lets you tag them with `+` or `-`.

> This is not a religious project; the default example file contains Quranic verses, but you can use any `.txt` file with one item per line.

## Features
- Shows random untagged lines from a text file in a beautiful styled terminal box
- Lets you mark the last shown line as `+` (liked) or `-` (disliked) with `ay+` and `ay-`
- Automatically skips tagged lines for future display
- Editable, extensible and terminal-friendly

## Files
- `json-to-txt.py`: Converts JSON-formatted verse data into plain text
- `random_quotes.txt`: Your input file (1 quote per line)
- `ayet_kutu_ustalt.zsh`: Zsh function that draws the styled terminal output
- `ay+` and `ay-`: CLI tools to tag the last shown quote
- `son_ayet.txt`: Temporary file storing last shown quote
- `tr.json`: Example JSON input
- `README.md`: This file

## Install
1. Add the function in `ayet_kutu_ustalt.zsh` to your `.zshrc`
2. Make `ay+` and `ay-` executable and accessible (e.g., in `~/bin`)
3. Use `ayet_kutu_ustalt` to show a quote. Then run `ay+` or `ay-` to tag it.

MIT License.

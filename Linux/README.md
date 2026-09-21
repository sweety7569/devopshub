# vi Editor Modes and Commands Reference

The `vi` editor is one of the most commonly used text editors and is included by default with every UNIX and Linux system. It operates in three modes:

1. **vi mode**: The mode `vi` starts in.
2. **Command mode**: Accessed from `vi mode` by pressing the colon key (`:`).
3. **Input mode**: Used for editing text.

![alt text](ref_image/image.png)

## vi Mode Commands

| Command      | Action                                                     |
|--------------|------------------------------------------------------------|
| `k`          | Move one line upwards                                      |
| `l`          | Move one character to the right                           |
| `h`          | Move one character to the left                            |
| `w`          | Move one word to the right                                |
| `W`          | Move one word to the right past punctuation               |
| `b`          | Move one word to the left                                 |
| `B`          | Move one word to the left past punctuation                |
| `e`          | Move to the end of the current word                       |
| `1G`         | Move to the beginning of the file                         |
| `H`          | Move to the top of the current screen                     |
| `M`          | Move to the middle of the current screen                  |
| `L`          | Move to the bottom of the current screen                  |
| `Ctrl-G`     | Move to the last line in the file                         |
| `Ctrl-F`     | Move one screen towards the end of the file               |
| `Ctrl-D`     | Move 1/2 screen towards the end of the file               |
| `Ctrl-B`     | Move one screen towards the beginning of the file         |
| `Ctrl-U`     | Move 1/2 screen towards the beginning of the file         |
| `Ctrl-L`     | Refresh the screen                                        |
| `5G`         | Move to line 5 of the file (replace `5` with any line number) |
| `/string`    | Find text string forward press `n` or `N`                 |
| `?string`    | Find text string backward press `n` or `N`                |
| `n`          | Find forward next string instance after a string search   |
| `N`          | Find backward next string instance after a string search  |
| `ZZ`         | Save the file and exit `vi`                               |
| `x`          | Delete the character at the cursor                        |
| `X`          | Delete the character behind the cursor                    |
| `dd`         | Delete the line the cursor is on                          |
| `10dd`       | Delete the 10 lines following the cursor                  |
| `dw`         | Delete from the cursor to the end of the current word     |
| `dG`         | Delete from the current line to the end of the file       |
| `d1G`        | Delete from the current line to the beginning of the file |
| `:1,10d`      | Delete lines 1 through 10                                 |
| `yy`         | Yank or copy the current line                             |
| `5yy`        | yank or copy particular line                              |
| `:1,3 co 8`   | yank or copy selected lines                               |
| `:1 m 8`      | move selected lines                                       |
| `:1,3 m 8`    | move selected lines                                       |
| `p`          | Put the yanked line below the current line                |
| `P`          | Put the yanked line above the current line                |
| `+`          | Move to the beginning of the next line                    |
| `-`          | Move to the beginning of the previous line                |
| `Shift+^`    | Move to the first non-blank character of the current line |
| `Shift+$`    | Move to the end of the current line                       |
| `Shift+G`    | Move to the last line of the file                         |
| `linenumberShift+G`    | Move to the particular line of the file         |
| `Shift+D`    | Delete from the cursor to the end of the line             |
| `Shift+Y`    | Yank from the cursor to the end of the line               |
| `Shift+J`    | Join the current line with the next line                  |
| `Shift+C`    | Change (delete) from the cursor to the end of the line and enter insert mode |
| `cc`         | Change (delete) the entire current line and enter insert mode |

## Command Mode Commands

| Command          | Action                                                |
|------------------|-------------------------------------------------------|
| `:g/X/s//x/g`    | Global search and replace (X=search object, x=replace object) |
| `:%s/search/replace` | Global search and replace                          |
| `:s/search/replace`  | firt occurence of the current line search and replace     |
| `:s/search/replace/g`| all occurences of the current line search and replace     |
| `:r file`        | Import a file into the current file                   |
| `:34 r file`     | Import a file into the current file after line 34     |
| `:w`             | Write out the file to save changes                    |
| `:w file`        | Write the file to the named file                      |
| `:wq`            | Save the file and exit `vi`                           |
| `:w!`            | Force save the file                                   |
| `:q!`            | Quit `vi` without saving changes                      |
| `:e!`            | Discard Unsaved changes                               |
| `:set nu`        | Display line numbers                                  |
| `:set nonu`      | Hide line numbers                                     |
| `:set ic`        | Ignore case in search                                 |
| `:set noic`      | Make search case-sensitive                            |
| `:set hlsearch`  | Highlight search results                              |
| `:set nohlsearch`| Remove search result highlights                       |
| `:set tabstop=4` | Set tab width to 4 spaces                             |
| `:set expandtab` | Replace tabs with spaces                              |
| `:set noexpandtab`| Retain tabs instead of spaces                        |
| `:set shiftwidth=4`| Set indentation width to 4 spaces                   |

## Input Mode Commands

| Command      | Action                                                     |
|--------------|------------------------------------------------------------|
| `a`          | Insert characters to the right of the cursor              |
| `A`          | Append characters to the current line                     |
| `i`          | Insert characters to the left of the cursor               |
| `I`          | Insert characters at the beginning of the current line    |
| `o`          | Add a new line after the current line                     |
| `O`          | Insert a new line above the current line                  |

Use this reference to efficiently navigate and edit text in the `vi` editor.

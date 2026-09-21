# Linux Terminal Shortcuts

## 1. Cursor Movement

| Shortcut   | Action                      |
| ---------- | --------------------------- |
| `Ctrl + A` | Move to beginning of line   |
| `Ctrl + E` | Move to end of line         |
| `Alt + B`  | Move backward one word      |
| `Alt + F`  | Move forward one word       |
| `Ctrl + B` | Move backward one character |
| `Ctrl + F` | Move forward one character  |
| `←`        | Move left                   |
| `→`        | Move right                  |
| `Home`     | Beginning of line           |
| `End`      | End of line                 |

## 2. Delete / Edit Text

| Shortcut          | Action                                         |
| ----------------- | ---------------------------------------------- |
| `Ctrl + U`        | Delete from cursor to beginning of line        |
| `Ctrl + K`        | Delete from cursor to end of line              |
| `Ctrl + W`        | Delete previous word                           |
| `Alt + D`         | Delete next word                               |
| `Ctrl + D`        | Delete character under cursor                  |
| `Backspace`       | Delete previous character                      |
| `Alt + Backspace` | Delete previous word                           |
| `Ctrl + T`        | Swap current character with previous character |
| `Alt + T`         | Swap current word with previous word           |
| `Alt + U`         | Convert word to uppercase                      |
| `Alt + L`         | Convert word to lowercase                      |
| `Alt + C`         | Capitalize word                                |

## 3. Command History

| Shortcut   | Action                                         |
| ---------- | ---------------------------------------------- |
| `↑`        | Previous command                               |
| `↓`        | Next command                                   |
| `Ctrl + P` | Previous command                               |
| `Ctrl + N` | Next command                                   |
| `Ctrl + R` | Search command history                         |
| `Ctrl + G` | Exit history search                            |
| `Alt + P`  | Non-incremental reverse search                 |
| `Alt + N`  | Non-incremental forward search                 |
| `Ctrl + O` | Execute selected history command and show next |
| `!!`       | Execute previous command                       |
| `!$`       | Last argument of previous command              |
| `!*`       | All arguments of previous command              |
| `!^`       | First argument of previous command             |
| `!n`       | Execute command number `n`                     |
| `!-n`      | Execute nth previous command                   |

Example:

```bash
mkdir /tmp/test
cd !$
```

`!$` becomes `/tmp/test`.

## 4. Terminal Control

| Shortcut            | Action                                      |
| ------------------- | ------------------------------------------- |
| `Ctrl + C`          | Stop/interrupt running command              |
| `Ctrl + Z`          | Suspend current process                     |
| `Ctrl + D`          | Exit shell / send EOF                       |
| `Ctrl + L`          | Clear terminal screen                       |
| `Ctrl + S`          | Pause terminal output                       |
| `Ctrl + Q`          | Resume terminal output                      |
| `Ctrl + \`          | Quit process and generate core dump         |
| `Ctrl + Y`          | Paste previously killed text                |
| `Ctrl + X Ctrl + X` | Swap cursor position with previous position |

**Important:**

`Ctrl + C` ≠ `Ctrl + Z`

```text
Ctrl + C → Terminates/interupts the command
Ctrl + Z → Suspends the command
```

## 5. Process Management

| Shortcut / Command | Purpose                              |
| ------------------ | ------------------------------------ |
| `Ctrl + C`         | Interrupt process                    |
| `Ctrl + Z`         | Suspend process                      |
| `fg`               | Bring job to foreground              |
| `bg`               | Continue suspended job in background |
| `jobs`             | List background jobs                 |
| `kill %1`          | Kill job number 1                    |
| `fg %1`            | Bring job 1 to foreground            |

Example:

```bash
ping google.com
```

Press:

```text
Ctrl + Z
```

Then:

```bash
bg
```

The process continues in the background.

## 6. Screen / Terminal Shortcuts

| Shortcut           | Action                             |
| ------------------ | ---------------------------------- |
| `Ctrl + L`         | Clear screen                       |
| `Ctrl + S`         | Stop terminal output               |
| `Ctrl + Q`         | Resume terminal output             |
| `Shift + PageUp`   | Scroll up                          |
| `Shift + PageDown` | Scroll down                        |
| `Shift + Home`     | Scroll to top in some terminals    |
| `Shift + End`      | Scroll to bottom in some terminals |

## 7. Bash History Commands

```bash
history
```

Show command history.

```bash
history 10
```

Show last 10 commands.

```bash
!100
```

Execute history entry 100.

```bash
!!
```

Execute previous command.

Very useful with `sudo`:

```bash
sudo !!
```

If the previous command was:

```bash
apt update
```

then:

```bash
sudo !!
```

runs:

```bash
sudo apt update
```

## 8. Tab Completion

| Shortcut  | Action                          |
| --------- | ------------------------------- |
| `Tab`     | Auto-complete command/file      |
| `Tab Tab` | Show available options          |
| `Alt + ?` | List possible completions       |
| `Alt + *` | Insert all possible completions |

Example:

```bash
cd /var/lo<Tab>
```

may become:

```bash
cd /var/log/
```

## 9. Command Line Navigation

Suppose you have:

```bash
sudo systemctl restart nginx.service
```

Useful shortcuts:

```text
Ctrl + A       → beginning
Ctrl + E       → end
Alt + B        → previous word
Alt + F        → next word
Ctrl + W       → delete previous word
Ctrl + U       → delete everything before cursor
Ctrl + K       → delete everything after cursor
```

## 10. Copy / Paste

Terminal copy/paste depends on the terminal emulator.

Common Linux terminal shortcuts:

| Shortcut           | Action                                  |
| ------------------ | --------------------------------------- |
| `Ctrl + Shift + C` | Copy                                    |
| `Ctrl + Shift + V` | Paste                                   |
| `Shift + Insert`   | Paste                                   |
| Mouse middle-click | Paste selection in many Linux terminals |

**Note:** `Ctrl + C` is generally **not copy** in a Linux terminal; it sends an interrupt signal.

## 11. Search

### Search command history

```text
Ctrl + R
```

Then type:

```text
docker
```

It searches previous commands containing `docker`.

Press:

```text
Ctrl + R
```

again to find older matches.

Press:

```text
Enter
```

to execute the displayed command.

Press:

```text
Esc
```

to edit the command without executing it.

## 12. Bash History Expansion

| Syntax      | Meaning                                   |
| ----------- | ----------------------------------------- |
| `!!`        | Previous command                          |
| `!n`        | Command number n                          |
| `!-2`       | Two commands ago                          |
| `!string`   | Most recent command beginning with string |
| `!?string?` | Most recent command containing string     |
| `!$`        | Last argument                             |
| `!^`        | First argument                            |
| `!n:m`      | Argument m from command n                 |
| `!*`        | All arguments                             |
| `^old^new^` | Replace text in previous command          |

Example:

```bash
echo hello world
```

Then:

```bash
^world^Linux^
```

Runs:

```bash
echo hello Linux
```

## 13. Useful `Alt` Shortcuts

These are especially useful when editing long commands.

| Shortcut          | Action                                     |
| ----------------- | ------------------------------------------ |
| `Alt + B`         | Move backward one word                     |
| `Alt + F`         | Move forward one word                      |
| `Alt + D`         | Delete next word                           |
| `Alt + Backspace` | Delete previous word                       |
| `Alt + T`         | Swap words                                 |
| `Alt + U`         | Uppercase word                             |
| `Alt + L`         | Lowercase word                             |
| `Alt + C`         | Capitalize word                            |
| `Alt + .`         | Insert last argument from previous command |
| `Alt + _`         | Insert previous command's last argument    |
| `Alt + R`         | Revert current line                        |
| `Alt + ?`         | Show possible completions                  |

## 14. Most Important Shortcuts for DevOps/Linux

If you're learning Linux for **DevOps**, memorize these first:

```text
Ctrl + A       Beginning of line
Ctrl + E       End of line
Ctrl + C       Stop command
Ctrl + Z       Suspend command
Ctrl + D       Exit / EOF
Ctrl + L       Clear screen
Ctrl + R       Search history
Ctrl + U       Delete before cursor
Ctrl + K       Delete after cursor
Ctrl + W       Delete previous word
Ctrl + Y       Paste killed text
Ctrl + P       Previous command
Ctrl + N       Next command
Ctrl + B       Back one character
Ctrl + F       Forward one character
Alt + B        Back one word
Alt + F        Forward one word
Tab            Auto-complete
Ctrl + Shift+C Copy
Ctrl + Shift+V Paste
```

## Quick memory trick

```text
A → Beginning
E → End
B → Back
F → Forward
C → Cancel
D → Delete / EOF
L → Clear
R → Reverse search
U → Up to beginning
K → Kill to end
W → Word
Z → Suspend
P → Previous
N → Next
```

These shortcuts are specifically for **terminal/Bash command-line usage**. They are different from regular Linux commands such as `ls`, `cd`, `mount`, `apropos`, `grep`, etc.

To **move the cursor to the beginning of the line** in your SSH terminal (`ssh myalmalinux`), use this **keyboard shortcut**:

## Press

```bash
Ctrl + A
```

> **Works in:**  
>
> - `bash` (default shell)  
> - `zsh`, `fish`, `ksh`  
> - MobaXterm, PuTTY, Windows Terminal, macOS Terminal, Linux terminals

## Other Useful Cursor Shortcuts

| Action                        | Shortcut       |
|-----------------------------|----------------|
| **Beginning of line**       | `Ctrl + A`     |
| **End of line**             | `Ctrl + E`     |
| **Delete from cursor to end**| `Ctrl + K`     |
| **Delete word backward**    | `Ctrl + W`     |
| **Move one word left**      | `Alt + B`      |
| **Move one word right**     | `Alt + F`      |

> **Note:** On **macOS**, use `Option` instead of `Alt`.  
> In **MobaXterm**, `Alt` works by default.

## Example

```bash
ssh myalmalinux@192.168.100.10 -p 2224
```

You type this, cursor is at the end:  

```bash
ssh myalmalinux@192.168.100.10 -p 2224[CURSOR]
```

Press **Ctrl + A** → cursor jumps to start:  

```bash
[CURSOR]ssh myalmalinux@192.168.100.10 -p 2224
```

**Done.**  
Use `Ctrl + A` every time you want to jump to the **start of the command**.

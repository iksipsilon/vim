	REPLACE OCCURRENCES OF A WORD

     type   :#,#s/old/new/g    where #,# are the line numbers of the range
                               of lines where the substitution is to be done.
     Type   :%s/old/new/g      to change every occurrence in the whole file.
     Type   :%s/old/new/gc     to find every occurrence in the whole file,
                               with a prompt whether to substitute or not.

%: Targets the entire file (from the first to the last line). 
s: Stands for substitute.
/old/new/: Specifies the search pattern and the replacement text.
g: The global flag ensures all occurrences on each line are replaced (otherwise, only the first match per line is changed). 
c: The confirm flag prompts you for each match. 
Confirmation Options:
When prompted (replace with new (y/n/a/q/l/^E/^Y)?), use the following keys:

y: Replace this specific instance. 
n: Skip this instance.
a: Replace this and all remaining instances without further prompts. 
q: Quit the replacement process. 
l: Replace this instance and quit. 
^E / ^Y: Scroll the screen up or down to see more context.



	SPLIT VIM IN TWO FILES


# for vertical splits
:vsplit <other-filename>

# To create a new empty vertical split, use the command 
:vnew

# for horizontal splits
:split <other-filname>   or  Ctrl+w then s  and for new file Ctrl+w then n

to toggle between splits use Ctrl+w

# pressing Ctrl+W then w cycles through all open windows. 
# To resize windows, use Ctrl+W with + or - to change height, and < or > to change width.



	DELETING


d   number   motion
d3w  # deletes three words

# to delete 7 lines down including the current line:
7dd

# to delete lines 5 through 10, you would type:
:5,10d

# to enter visual mode press v for selecting characters, V for lines and
# Ctrl+q for block. You have to map Ctrl+v, which is reserved for pasting to Ctrl+q
# edit .vimrc by adding this line: nnoremap <C-Q> <C-V>


r - replace the character under the cursor
R - replace the following characters without moving the text to the right.

c<motion> - change (to the end of the word, beginning of line etc.)


	UNDO/REDO

u  		# to undo the last commands
U  		# to undo all the changes on a line
Ctrl+r  # to redo



	MOVING AROUND

w - until the start of the next word, EXCLUDING its first character.
e - to the end of the current word, INCLUDING the last character.
$ - to the end of the line, INCLUDING the last character.
0 - to the start of the line

Typing a number before a motion repeats it that many times.

hjkl
w	 - move forward to the beginning of next word # 3w, 14w, ...
e    - move forward to the end of next word       # 2e, ...    
b	 - move backward to the start of the current or previous word
B    - treat any sequence of non-whitespace characters as a word
be	 - move backward to the end of the current or previous word

gg   - go to start of file
G    - go to end of file
:69  - go to line 69


	SEARCH

/
n   		- next
N   		- opposite direction
Ctrl+o		- go back to where you came from
:set hls	- highlight all matching phrases
# Prepend "no" to switch an option off:   :set nohls


	UPPERCASE LOWERCASE

~	- toggles the character upperase lowercase

gU 	- followed by any motion 
gUw - uppercase for the rest of the word 
gUU - uppercase for the entire line converts the selected text to uppercase

guw		- lowercase for the rest of the word
guiw 	- lowercase the "inner word" regardless of cursor position 
guu 	- lowercase the entire current line


	COMPLETION


              ** Command line completion with CTRL-D and <TAB> **

  1. Make sure Vim is not in compatible mode:  :set nocp

  2. Look what files exist in the directory:  :!ls   or  :!dir

  3. Type the start of a command:  :e

  4. Press  CTRL-D  and Vim will show a list of commands that start with "e".

  5. Type  d<TAB>  and Vim will complete the command name to ":edit".

  6. Now add a space and the start of an existing file name:  :edit FIL

  7. Press <TAB>.  Vim will complete the name (if it is unique).

NOTE:  Completion works for many commands.  Just try pressing CTRL-D and
       <TAB>.  It is especially useful for  :help .



.  - repeats the last change command

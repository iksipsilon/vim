	REPLACE OCCURRENCES OF A WORD


To replace all occurrences of a word in a file with approval for each case, use the substitute command with the global and confirm flags.

Enter command mode by typing :.
Type the following command, replacing old and new with your desired text:
:%s/old/new/gc

Press Enter.

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



	DELETE MULTIPLE LINES

# to delete lines 5 through 10, you would type:
:5,10d

# to delete 7 lines down including the current line:
7dd

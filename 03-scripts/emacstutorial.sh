#!/bin/bash

echo '''
C-h C-h : help
C-g : quit
C-x b : switch buffers
C-x right : right-cycle through buffers
C-x left : left-cycle through buffers
C-x k : kill buffer

C-x 0 : close the active window
C-x 1 : close all windows except the active window
C-x 2 : split the active window vertically into two horizontal windows
C-x 3 : split the active window horizontally into two vertical windows

C-x o : change active window to next window
C-x C-f : open file
C-x C-s : save file

C-x C-w : save file as

C-space : set region mark
C-w : kill region
C-k : kill line
C-u 10 C-k : Kill 10 lines
M-w : kill region without deleting
C-y : Yanks last killed text
M-y : Replace yanked text with previously killed text
M-d : Kill next word
M-k : Kill to end of sentence

C-x C-space : Last edit position
C-x C-x : Highlight everything between previous cursor location and the new location

M-Y : move to next item in the kill ring

C-_ : Undo
C-/ : Undo
C-x u : Undo
C-s : search forwards
C-s C-s : Search for most recently searched item
C-s M-p : Previous item in search history
C-x M-n : Next item in search history
C-r : search backwards
M-% : query replace (‘space’ to replace, ‘n’ to skip, ‘!’ to replace all)
C-M-s : Regular expression incremental search

M-q : wrap text

C-f : Forward one character   C-b : Backward one character
C-n : Next line  C-p : Previous line

C-a : Beginning of line     C-e : End of line
M-f : Forward one word      M-b : Back one word
M-a : Previous sentence     M-e : Next sentence
M-v : Prevous screen        C-v : Next screen
M-< : Beginning of buffer   M-> : End of buffer

C-u 3 C-p : Back 3 lines
C-u 10 C-f : Forward 10 characters
M-1 M-0 C-f : Forward 10 characters
C-u C-n : Forward  4 lines
C-u C-u C-n : Forward 16 lines
C-u C-u C-u C-n : Forward 64 lines

M-g g : Jump to specified line
C-s : Incremental search forward
C-r : Incremental search backward

C-Space : Set mark to current location
C-x C-x : Swap point and mark
C-u C-Space : Cycle through mark ring

C-x h : Make region contain the entire buffer ("Select all")
M-h : Make region contain the current paragraph

C-x n n : Narrow buffer to the current region
C-x n w : Restore ("widen") buffer

F3 : Start recording macro F4 : Stop recording macro
F4 : Play back macro once
M-5 F4 : Play back macro 5 times
M-0 F4 : Play back macro over and over until it fails

C-h k : Shows documentation for the command associated with any particular key
C-h f : Shows documentation for any particular command, by name (i.e What you type after M-x)

M-x shell : Starts shell 
M-x compile : Invokes make
M-x grep : Invokes grep and prints results in a new buffer. Takes to maching file and line
M-x man : Displays man pages
M-x calculator : A simple calculator
M-x calendar : A calendar

M-x shell-command or M-! : Executes a command and displays output in new buffer
M-x shell-command-on-regions or M-| : Executes a command, piping in current region as input

C-x v : Displays a diff showing changes you have made to the current file
C-x v ~ : Displays version number
C-x v l : Displays a log of previous changes to the file.

M-x tetris: Tetris
    
M-x java-mode : Mode for editing Java files
M-x python-mode : Mode for editing Python files
M-x text-mode : Mode for editing text files
M-x fundamental-mode : Mode with no specilizations at all

M-x auto-fill-mode : Wraps lines longer than 70 characters.
M-x flyspell-mode : Highlights misspelled words as you type.
M-x follow-mode : Makes two windows scroll together and follow other
M-x icomplete-mode : In M-x prompt or elsewhere, show completions as you type
M-x iswitchb-mode : Show all buffer names when you switch buffers with C-x b

Block editing
Alt-x rectangle-mark-mode. Use Ctrl-w to remove the portion you don’t need

Change the type of the document
Alt-x xml-mode/c-mode

Format/Indent
Select the document. Ctrl-Space, Alt-Shift-> or Alt-Shift-<, then press Ctrl-Alt-\


Org Mode
========
http://orgmode.org/worg/org-tutorials/orgtutorial_dto.html

Create file with .org extension for org-mode
* Heading
** Sub-heading

E.g.
* Tasks
** TODO Start new org file for tutorial

C-c C-t (on TODO line) changes it to DONE and adds date for CLOSED

M-shift-RET on a blank line calls org-insert-todo-heading (you can create several TODO)

[[http://google.com][Google]] Link
shift-TAB = over-view

C-c C-s To create schedule (it brings up calendar)
C-c a for week's scheduled items list


Ctrl-c p f Switch file
Ctrl-x b

  ;; Haskell
     =======
     M-x haskell-interactive-bring

     Show the ~/.cabal directory
     Set /tmp to directory of execution

     TAB = In selected text, unindent

     C-x C-b = Buffer, Select Multiple, M-D delete buffers
     M-x desktop-save/desktop-change-dir (previous saved structure)



	 Org
	 ===

	 8.2 Creating timestamps

	 http://orgmode.org/manual/Creating-timestamps.html

For Org mode to recognize timestamps, they need to be in the specific format. All commands listed below produce timestamps in the correct format.

C-c .     (org-time-stamp)
          Prompt for a date and insert a corresponding timestamp. When the cursor is at an existing timestamp in the buffer,
          the command is used to modify this timestamp instead of inserting a new one. When this command is used twice in succession, a time range is inserted. 
C-c !     (org-time-stamp-inactive)
          Like C-c ., but insert an inactive timestamp that will not cause an agenda entry. 
C-u C-c .
C-u C-c !
Like C-c . and C-c !, but use the alternative format which contains date and time. The default time can be rounded to multiples of 5 minutes, see the option org-time-stamp-rounding-minutes. 
C-c C-c
Normalize timestamp, insert/fix day name if missing or wrong. 
C-c <     (org-date-from-calendar)
Insert a timestamp corresponding to the cursor date in the Calendar. 
C-c >     (org-goto-calendar)
Access the Emacs calendar for the current date. If there is a timestamp in the current line, go to the corresponding date instead. 
C-c C-o     (org-open-at-point)
Access the agenda for the date given by the timestamp or -range at point (see Weekly/daily agenda). 
S-<left>     (org-timestamp-down-day)
S-<right>     (org-timestamp-up-day)
Change date at cursor by one day. These key bindings conflict with shift-selection and related modes (see Conflicts). 
S-<up>     (org-timestamp-up)
S-<down>     (org-timestamp-down-down)
Change the item under the cursor in a timestamp. The cursor can be on a year, month, day, hour or minute. When the timestamp contains a time range like ‘15:30-16:30’, modifying the first time will also shift the second, shifting the time block with constant length. To change the length, modify the second time. Note that if the cursor is in a headline and not at a timestamp, these same keys modify the priority of an item. (see Priorities). The key bindings also conflict with shift-selection and related modes (see Conflicts). 
C-c C-y     (org-evaluate-time-range)
Evaluate a time range by computing the difference between start and end. With a prefix argument, insert result after the time range (in a table: into the following column).








	 
''' | more




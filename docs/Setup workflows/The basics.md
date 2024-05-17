Back to [[Workflows|workflows]], [[Menu]].
# Abstract
We will set up folders, create a graph of notes, refactor it, and try out canvas.
## First, install Obsidian from their website
## Set up folder structure
- Files.
- References
- "Notes" or "Zettelkasten"
- Templates
Then,

1. Settings -> Files and Links -> Default location for new notes: set it to "Notes" or "Zettelkasten".
2. Settings -> Files and Links -> Default location for new attachements: "In the folder specified below": Set to "Files".
## Create a graph of notes
Remember: Cmd+p to search for actions.

1. Create one note for each white node and link them as in the drawing. Do this with the quick switcher (Cmd+O), write the name of the file and then (Shift+Enter) to create it.

![daily note template](https://raw.githubusercontent.com/mscott99/matthewscott-blog/main/files/exercise_graph.png)

2. Create the coloured nodes (organisational nodes) and link them as in the drawing
3. Add a header with content below it (e.g. `# hello`) to test1.md.
4. Embed the content of the header from test1.md within test3.md. Remember: `![[file_name#header_name|display_name]]`, and the exclamation mark makes the link an embed.
5. Rename test1 to "test4". What happened to the links in test3.md?
2. Write a few lines in test2, select a part of the content, and then run the command (Cmd+P) "Note Composer: extract current selection". When prompted enter test5 to create a new note.
3. Use composer to merge test2 with test3: go to test2, run Cmd+P and search "merge". Then when prompted, search and select test3.
4. Rename test3 to test6, either by clicking the top title of test3, or by searching for a command "rename".
5. Make "longform.md" and embed all the test files one after another in it.
6. Make a canvas (search the command) and set up a graph of the test notes there. To add a note to the canvas, drag and drop the middle bottom icon into the canvas.
7. Set a hotkey: Settings (on side bar or 'Cmd+,') -> Hotkey. Set "Toggle to reading view" to Cmd+E. Try out the hotkey. Any command can be set to a hotkey!
8. Change your theme: Settings -> Options -> Appearance -> Themes. Mine (currently):the ITS Theme

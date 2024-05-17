Back to [[Obsidian, Zotero and Git Technical Set Up|workflows]], [[index|menu]].
# Abstract 
Have your .qmd files amongst your .md files in your vault, and export to html directly from obsidian.

> [!Warning] Rendering quarto this way will create export files within your vault folder.

1. Plugin: Qmd as md.
2. Settings -> Files and links -> detect all file extensions.
3. Install Omnisearch.
4. Settings -> Community Plugins -> Omnisearch -> Additional Text files to index: "qmd".
5. Install quarto.
6. Set up a conda environment for quarto.
7. Settings -> Community Plugins -> Shell commands. Add a command "quarto: export current file", and set the code to.
```
source ~/.zshrc; conda activate quarto_env; quarto render {{file_path:absolute}} --to html
```

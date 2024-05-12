Back to [[Obsidian, Zotero and Git Technical Set Up|workflows]], [[index|menu]].
> [!Warning] Rendering quarto this way will create files in your vault.
- Plugin: Qmd as md
- Settings -> Files and links -> detect all file extensions.
- Install Omnisearch
- Settings -> Community Plugins -> Omnisearch -> Additional Text files to index: "qmd".
- Install quarto.
- Set up a conda environment for quarto.
- Settings -> Community Plugins -> Shell commands. Add a command "quarto: export current file", and set the code to
```
source ~/.zshrc; conda activate quarto_env; quarto render {{file_path:absolute}} --to html
```

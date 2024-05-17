Back to [[Obsidian, Zotero and Git Technical Set Up|workflows]], [[index|menu]].
# Abstract
Setup daily notes with automatically generated templates.

# Instructions
1. Set up a daily note folder, and optionally a weekly notes folder.
2. Install Calendar Plugin
3. Install the Periodic notes plugin.
4. Place the [daily note template](https://raw.githubusercontent.com/mscott99/matthewscott-blog/main/files/daily%20note%20template.md) in your templates folder.
5. In the settings of the Perodic notes plugin, set Daily Note Template to your template.
6. Set the notes folder to your daily notes folder.
7. Install the plugin "Linter".
8. In the linter settings, in the first, "General" tab, check the boxes "Lint on save" and "Lint on file change". Add most folders to "Folders to ignore".
9. In "Linter" settings, under the "Yaml" tab, under the "YAML Timestamp" heading:
  - check "Keep track of the date the file ...".
  - Check "Date created". 
  - Set "Date created key" to "ctime".
  - check "Force Date created key value retention".
  - Check "Date modified".
  - Set "Date modified key" to "mtime".
  - Make sure the "Format" field is "YYYY-MM-DD".

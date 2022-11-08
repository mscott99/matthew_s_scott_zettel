#meta
# Recently Modified
```dataview
table file.mtime.year + "-" + file.mtime.month + "-" + file.mtime.day as Created 
sort file.mtime desc
limit 4
```
# Projects
```dataview
TABLE length(file.outlinks)+length(file.inlinks) as "Number of Links", file.mtime.year + "-" + file.mtime.month + "-" + file.mtime.day as Modified
from "Zettelkasten"
and #project/toplevel 
and !#archived
SORT file.mtime DESC
```
# Links of Interest
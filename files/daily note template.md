#temporal/daily 

### Notes created today
```dataview
List FROM "" WHERE file.cday = date("{{date}}") SORT file.ctime asc
```
### Notes last touched today
```dataview
List FROM "" WHERE file.mday = date("{{date}}") SORT file.mtime asc
```
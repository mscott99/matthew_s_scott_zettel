Back to [[Workflows|workflows]], [[index|menu]].
#workshop #reference #obsidian 
# Abstract
Read and tick off tasks anywhere in your vault from a single location.
# Setup
Using data view, I set up these queries on my homepage.

## Active Tasks
```dataview
task
where !completed AND ((date(today) - file.ctime) <= dur(30 days))
group by priority
sort file.ctime desc
```
### Older than 30 days
```dataview
task
where !completed AND ((date(today) - file.ctime) > dur(30 days))
group by file.link
sort rows.file.ctime desc
```

Note you can switch the `file.ctime` to `file.mtime` if you prefer to separate by file modified time (when you last worked on it) instead of when you first created the note.
# Motivation
Motivation for my grouping is that "active tasks" (where I made them within 30 days of today) should be grouped by priority to make sure things that are urgent are done first. "Older tasks" could be untouched for a while so I group by file to give addition context and hopefully related tasks.

# Using the system
## Main flags
Once this is set up, my workflow is simply adding a task via `- [ ] do this soon [priority::high]` or `- [ ] try this later [priority::low]` in whatever note I am working on. The tasks get automatically added to my home page, so I don't lose them. I could use a `[priority::mid]` tag, but any task that doesn't explicitly have a priority flag gets grouped together anyway, so I usually omit that.

## Additional flags
Sometimes I'll also add some other tags just for a visual cue or to remind myself something later. I don't filter/group tasks with these, but I could in the future if I wanted to. Some examples are `[scope::big]` or `[due::May31]` .

## Nesting tasks
I also want to add that it's sometimes helpful to nest tasks like this  

```
- [ ] finish the big project [scope::big]
    - [x] pick title
    - [ ] submit my abstract [priority::high] [due::May31]
    - [ ] collect my data
    - [ ] check my figures match [[My Other Project]] [priority::low]
```

## Quick task management
And in case people don't know, from a data view query, you can
1) check off the task and have it auto checked off in the original note, and
2) click the task to open up the note at the location of the task.
The second I often use to quickly go to the thing I've been working on.

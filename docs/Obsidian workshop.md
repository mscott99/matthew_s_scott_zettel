---
ctime: 2024-05-05
mtime: 2024-05-12
title: Graph-based writing
---
See [[index|menu]], [[Obsidian, Zotero and Git Technical Set Up|workflows]]
# Abstract
What is the best way to structure a research workflow that will maximize
efficiency and satisfaction? That would be the Zettelkasten method, a system
where notes (markdown files) are organised through linking rather than folders.
I give my own take on this popular system and how I use it everyday to conduct
research in mathematics and write papers. This simple method, coupled with a
good understanding and good tools, has a surprising number of benefits, and has
the potential to speed up and improve your research from brainstorms all the
way to published papers. The workshop will proceed as follows: first I will
show what a Zettelkasten workflow looks like by showcasing my own network of
notes that I have been building for three years now. Then I will give my
understanding of the ideas and principle undergirding this method and the
reasons it is inherently more efficient than tranditional folder-based,
word-based or overleaf-based methods of writing. The last part of the workshop
will be the hands-on part of the workshop. You will try out Obsidian on your
own computer. It is a popular markdown editor specialized for this kind of
workflow. I will guide you through its core features, best practices and setting 
up crucial plugins that will bring your work to the next level.
# Graph-based writing: what, why, how
# What
- Demo of my vault: prepare demos.
	- Show demo note as source and editing mode. [[Demo note]].
	- Local graph view from [[Counter-Example large ball at origin]].
	- Full graph view
	- Tracking dead ends 
		- [[Bounds on Xnorm Complexity]]
		- [[Scaling of Tails]]
	- Current paper.
		- [[Journal 2024 map of math.canvas|Journal 2024 map of math]] 
		- Project note: [[Unevenly Sampled Fourier Generative Recovery Project]]
		- Citations and literature reviews.
			- [[@vershyninHighDimensionalProbabilityIntroduction2018]]
			- [[Coherence in Compressed Sensing]]	
		- Breadcrumbs lemma: see something
		- Longform. [[Longform journal uneven sampling 2024]]
		- Demo of paper export.
	- Team work on project: [[Exact regularization]].
	- Tasks [[Tasks]]
## Why
[[Workshop slides]]
- Why spend time improving workflow and how.
	- "Free" productivity improvements
	- Up-front cost for recurring returns; avoid repetitive organizational work.
	- Make the work more fun; reduce friction.
- Guiding principle.
	- Quality and quantity of writing output.
- Setting
	- Chaotic generation of ideas, results and learning.
- A good workflow should do the following.
	- Optimize quality: clarity of ideas.
	- Optimize quantity: writing-to-output ratio. (minimize waste, maximize re-use).
- Workflows fail through waste:
	- Not writing things down.
	- Un-recallable records.
	- Poor organization of results: loss through volume.
	- No way of storing connection between ideas as a form of knowledge.
	- Work lost through context switching. Includes research direction, project, degree of polish, writing structure, time, team.
	- Repetitive organizational work.
	- Other efficiency concerns include
		- Optimizing for learning while note-taking: writing to learn.
		- Teamwork: efficiently working together.
- The solution: the Zettelkasten method.
	- Components
			- Atomic notes: context-independent note, self-contained (usually).
			- Links: between notes and/or ideas. Allows for organization, navigation, recall. Are a form of knowledge in themselves.
	- Core strength:
		- Resilience in usefulness from context-independent notes. (expand on this). From:
			- Sources: literature.
			- Project
			- Final writing
		- Plurality of organizational structures. (make a graph here) ![[Drawing 2024-05-07 12.16.10.excalidraw]]
		
		- Continuous polish spectrum. ![[Drawing 2024-05-07 11.14.55.excalidraw]]
	- Common pitfals:
		- Folder structure: restricts to a single organizational structure. Instead rely on links and search functionality.
		- Formatting concerns (latex).
		- Good-enough requirements: brainstorms, single sentences of thought, all are notes.
# How
## Core features of Obsidian
- Markdown files: no vendor lock-in. Efficient storage, future-proof, versioning.
	- Rich plugin ecosystem.
	- Base environment
		- Command pannel
		- Quick switcher.
		- Linking (with header and display)
		- Figures.
		- Tags: role of tags.
		- Longforms and embeds.
### Set up folder structure
- Files.
- References
- "Notes" or "Zettelkasten"
- Templates
Then,
1. Settings -> Files and Links -> Default location for new notes: set it to "Notes" or "Zettelkasten".
2. Settings -> Files and Links -> Default location for new attachements: "In the folder specified below": Set to "Files".
## Workshop: create a graph of notes
- Create the specified graph and organize it by project and content.
- Use composer to extract a heading.
- Use composer to merge nodes of the graph.
- Rename a note.
- Make a canvas and set up the graph there.
- Make a longform through embeds.
- Set a hotkey: Settings -> Hotkey. Set "Toggle to reading view" to Cmd+E.
- Change your theme: Settings -> Options -> Appearance -> Themes. Mine: ITS Theme
## Set up a workflow!
- [[Setup citations]]
- [[Setup home note and dataview]]
- [[Setup latex suite]]
- [[Setup quarto]]
- [[Setup vim]]
- [[Setup paper export]]

## Reccomended Plugins
### For writing LaTex
- Latex suite: snippets to write faster.
- Extended Mathjax: Enable user-defined latex commands globally.
### Highly reccomended
- Omnisearch: adjust hotkeys.
- Breadcrumbs: track lemmas. %%make this a workflow?%%
- Zotero integration.
- Canvas
- Dataview: home note and preamble with templater.
### Very good
- Plugins(Very good)
	- Obsidian vimrc.
	- Collaborate with github.
- Plugin (Specialized)
	- Excalidraw
	- Desmos
	- Templater
	- Tasks
	- Calendar and Periodic notes
	- Linter: YAML -> YAML timestamp
	- Chatgpt and copilot
# Additions
## Citations with zotero
Technical set-up (hands on) [[Obsidian, Zotero and Git Technical Set Up]]
# Related
[[Obsidian Presentation]].

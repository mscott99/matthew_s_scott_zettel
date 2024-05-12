---
ctime: 2024-05-05
mtime: 2024-05-12
title: Graph-based writing
---
Alternatives:[[Obsidian Presentation]], [[Ideas of Zettelkasten Slides]].
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
- Why spend time improving workflow and how.
	- Up-front cost for recurring returns.
	- Avoid repetitive organizational work.
- Guiding principle
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
- The software: Obsidian
	- Markdown files: no vendor lock-in. Efficient storage, future-proof, versioning.
	- Rich plugin ecosystem.
- Workshop: setting up the environment.
	- Base environment
		- Command pannel
		- Quick switcher.
		- Linking (with header and display)
		- Figures.
		- Tags: role of tags.
		- Longforms and embeds.
	- Setting up citations: [[Obsidian, Zotero and Git Technical Set Up#technical-setup#zotero]]
	- Make a home note: [[Obsidian, Zotero and Git Technical Set Up#technical-setup#make-a-home-note]] 
	- Plugins (essential)
		- Latex suite
		- Note composer
		- Backlinks
	- Plugins (Highly recomended)
		- Breadcrumbs for lemmas.
		- Omnisearch
		- Citations with Zotero integration.
		- Canvas
		- Dataview: home note and preamble with templater.
	- Plugins(Very good)
		- Themes.
		- Extended Mathjax.
		- Obsidian vimrc.
		- Collaborate with github.
	- Plugin (Specialized)
		- Excalidraw
		- Desmos
		- Templater.
		- Tasks.
		- Calendar and Periodic notes.
		- Linter: YAML -> YAML timestamp.
		- Chatgpt and copilot.
		- Vim: core vim plugin
		  - Scroll offset
		  - Vimrc Support
> Make sure that the things are good.
- Task: create a graph and organize it by project and content.
- Use composer to extract a heading.
- Use composer to merge nodes of the graph.
- Make a longform through embeds.
- Make a literature note from Zotero.
- Set-up a home note.
- (Optional): export the longform.
# Additions
## Citations with zotero
Technical set-up (hands on) [[Obsidian, Zotero and Git Technical Set Up]]
# Related
[[Obsidian Presentation]].

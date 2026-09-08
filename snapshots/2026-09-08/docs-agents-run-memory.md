Visual Studio Code
Features
Agents
Agent Customization
Models & Agent Harnesses
Enterprise
Extensibility
Docs
Documentation
API
FAQ
Release Notes
Blog
Learn
Events
Resources
Extensions
MCP
Download
Search
Download
🎬 Watch The Story of VS Code!
Dismiss this update
Documentation
Overview
Get Started
Overview
Agents Quickstart
Editor Tutorial
Intro Videos
Agents
Overview
Get started
Agents Quickstart
Agents Tutorial
Best Practices
Concepts
Agents
Agent Harnesses
Language Models
Context
Tools
Sessions & Handoff
Agent Host Architecture
Customization
Workspace Context
Trust & Safety
Run agents
Agents Window
Chat View
Choose an Agent Harness
Use Tools
Browser Tools
Approvals & Permissions
Review & Revert Changes
Artifacts
Remote Agent Sessions
Plan Work
Memory
Subagents
Sessions
Manage Sessions
Session History
AI Security
Customize agents
Create and Manage
Instructions
Agent Skills
Custom Agents
Language Models
MCP
Hooks
Plugins
Prompt Files
Tutorials & guides
Customize AI
Context Engineering
Test-Driven Development
Test with AI
Test Web Apps with Browser Tools
Debug with AI
Edit Notebooks with AI
Optimize AI Credit Usage
MCP Dev Guide
Prompt Examples
Reference
Cheat Sheet
Settings Reference
MCP Configuration
Hooks Reference
OpenTelemetry Monitoring
Troubleshooting
Troubleshooting
Debug Chat Interactions
Diagnose Prompt Caching
FAQ
Chat
Chat Basics
Inline & Quick Chat
Add Prompt Context
Editor
Overview
Getting Started
Editor Tutorial
User Interface
Tips and Tricks
Write code
Basic Editing
IntelliSense
Inline Suggestions
Smart Actions
Code Navigation
Refactoring
Snippets
Workspaces
Overview
Multi-Root Workspaces
Workspace Trust
Configure the editor
Display Language
Layout
Keyboard Shortcuts
Settings
Settings Sync
Extensions
Overview
Extension Marketplace
Extension Runtime Security
Themes
Profiles
Accessibility
Overview
Voice Interactions
Command Line Interface
Telemetry
Reference
Default Keyboard Shortcuts
Default Settings
Substitution Variables
Tasks Schema
Source Control
Overview
Quickstart
Repositories & Remotes
Staging & Committing
Source Control History
Branches & Worktrees
Merge Conflicts
Collaborate on GitHub
Troubleshooting
FAQ
Terminal
Get Started
Terminal Basics
Terminal Profiles
Shell Integration
Appearance
Advanced
Debugging & Testing
Debugging
Debug Configuration
Tasks
Testing
Integrated Browser
Port Forwarding
Guides & Tutorials
Test-Driven Development
Test Web Apps with Browser Tools
Enterprise
Overview
Enterprise Policies
AI Settings
Extensions
Telemetry
Updates
Remote
Overview
VS Code for the Web
SSH
SSH Tutorial
Tunnels
Dev Containers
WSL
WSL Tutorial
GitHub Codespaces
VS Code Server
Linux Prerequisites
Tips and Tricks
FAQ
Advanced Setup
GitHub Copilot Setup
Linux
macOS
Windows
Raspberry Pi
Network
Portable Mode
Additional Components
Uninstall
Languages & Runtimes
Extension Docs
Topics
Overview
Overview
Agents Quickstart
Editor Tutorial
Intro Videos
Overview
Get started
Agents Quickstart
Agents Tutorial
Best Practices
Concepts
Agents
Agent Harnesses
Language Models
Context
Tools
Sessions & Handoff
Agent Host Architecture
Customization
Workspace Context
Trust & Safety
Run agents
Agents Window
Chat View
Choose an Agent Harness
Use Tools
Browser Tools
Approvals & Permissions
Review & Revert Changes
Artifacts
Remote Agent Sessions
Plan Work
Memory
Subagents
Sessions
Manage Sessions
Session History
AI Security
Customize agents
Create and Manage
Instructions
Agent Skills
Custom Agents
Language Models
MCP
Hooks
Plugins
Prompt Files
Tutorials & guides
Customize AI
Context Engineering
Test-Driven Development
Test with AI
Test Web Apps with Browser Tools
Debug with AI
Edit Notebooks with AI
Optimize AI Credit Usage
MCP Dev Guide
Prompt Examples
Reference
Cheat Sheet
Settings Reference
MCP Configuration
Hooks Reference
OpenTelemetry Monitoring
Troubleshooting
Troubleshooting
Debug Chat Interactions
Diagnose Prompt Caching
FAQ
Chat Basics
Inline & Quick Chat
Add Prompt Context
Overview
Getting Started
Editor Tutorial
User Interface
Tips and Tricks
Write code
Basic Editing
IntelliSense
Inline Suggestions
Smart Actions
Code Navigation
Refactoring
Snippets
Workspaces
Overview
Multi-Root Workspaces
Workspace Trust
Configure the editor
Display Language
Layout
Keyboard Shortcuts
Settings
Settings Sync
Extensions
Overview
Extension Marketplace
Extension Runtime Security
Themes
Profiles
Accessibility
Overview
Voice Interactions
Command Line Interface
Telemetry
Reference
Default Keyboard Shortcuts
Default Settings
Substitution Variables
Tasks Schema
Overview
Quickstart
Repositories & Remotes
Staging & Committing
Source Control History
Branches & Worktrees
Merge Conflicts
Collaborate on GitHub
Troubleshooting
FAQ
Get Started
Terminal Basics
Terminal Profiles
Shell Integration
Appearance
Advanced
Debugging
Debug Configuration
Tasks
Testing
Integrated Browser
Port Forwarding
Guides & Tutorials
Test-Driven Development
Test Web Apps with Browser Tools
Overview
Enterprise Policies
AI Settings
Extensions
Telemetry
Updates
Overview
VS Code for the Web
SSH
SSH Tutorial
Tunnels
Dev Containers
WSL
WSL Tutorial
GitHub Codespaces
VS Code Server
Linux Prerequisites
Tips and Tricks
FAQ
GitHub Copilot Setup
Linux
macOS
Windows
Raspberry Pi
Network
Portable Mode
Additional Components
Uninstall
Languages & Runtimes
Extension Docs
Copy as Markdown
Copy as Markdown
View as Markdown
On this page there are 2 sectionsOn this page
Memory tool
Related resources
Related
Try memory in action
Launch a chat prompt that asks the agent to remember a coding preference.
Open in VS Code
Stable
Insiders
Memory in VS Code agents
Agents in Visual Studio Code use memory to retain context across conversations. Rather than starting from scratch each session, agents recall your preferences, apply lessons from previous tasks, and build up knowledge about your codebase over time.
For background on how memory fits into the agent architecture, see Agents concepts.
This article explains how to use the memory tool in VS Code and manage memory files.
Memory tool
Note
The memory tool is currently in preview.
The memory tool is a built-in agent tool that allows agents to save and recall notes as they work. You can also explicitly ask the agent to remember something. User, repository, and session memory are stored locally on your machine.
You can turn the memory tool on or off with the
chat.tools.memory.enabled
Open in VS Code
Open in VS Code Insiders
setting.
Memory scopes
Each scope serves a different purpose, depending on how long the information should persist and where it applies.
Scope
Path
Persists across sessions
Persists across workspaces
Use for
User
/memories/
Yes
Yes
Preferences, patterns, frequently used commands
Repository
/memories/repo/
Yes
No (workspace-scoped)
Codebase conventions, project structure, build commands
Session
/memories/session/
No (cleared when chat ends)
No
Task-specific context, in-progress plans
User memory
User memory persists across all workspaces and conversations. The first 200 lines are automatically loaded into the agent's context at the start of every session. Use user memory for general preferences and insights that apply regardless of which project you're working in.
For example, ask the agent to remember a coding preference:
Remember that I prefer tabs over spaces and always use single quotes in JavaScript
In a later conversation, even in a different workspace, the agent recalls this preference and applies it to generated code.
Repository memory
Repository memory is scoped to the current workspace and persists across conversations in that workspace. Use repository memory for facts about a specific codebase, such as architecture decisions, naming conventions, or build commands.
For example:
Remember that this project uses the repository pattern for data access and all API endpoints require authentication
Repository memory is stored locally on your machine.
Session memory
Session memory is scoped to the current conversation and cleared when the conversation ends. Use session memory for temporary working notes or task-specific context that the agent tracks while working through a multi-step task.
The Plan agent uses session memory to persist its implementation plans in a plan.md file. This plan is available during the session and can be viewed with the Chat: Show Memory Files command, but is not available in subsequent sessions. Learn more about planning with agents.
Store and retrieve memories
To store a memory, ask the agent to remember something in natural language. The agent determines the appropriate scope and creates or updates the corresponding memory file.
Remember that our team uses conventional commits for all commit messages
To retrieve a memory, ask about it in a new conversation. The agent checks its memory files and recalls the relevant information.
What are our commit message conventions?
Memory file references in the agent's chat responses are clickable, so you can view the contents of the memory file directly.
Manage memory files
VS Code provides commands to view and manage your memory files:
Chat: Show Memory Files: opens a list of all memory files across scopes. Select a file to view its contents.
Chat: Clear All Memory Files: removes all memory files across all scopes.
Note
Deleting individual memory files is not yet supported. Use Chat: Clear All Memory Files to remove all memories, or ask the agent to update a specific memory file to remove outdated information.
Related resources
Planning with agents
Agent tools
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

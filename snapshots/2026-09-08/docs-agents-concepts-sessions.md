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
On this page there are 7 sectionsOn this page
What is a session?
Chats within a session
Work with multiple sessions
Sessions across surfaces
Hand off a session
Remote and synced sessions
Related resources
Sessions and handoff
A session is the unit of work with an agent in Visual Studio Code: a single conversation with an agent, along with all the context that builds up as it works. This article explains what a session is, how sessions behave, how they are shared across surfaces, and how you hand off a session from one agent to another.
To create and organize sessions, see Manage agent sessions.
What is a session?
A session holds one conversation with an agent, including your prompts, the agent's responses, the tool calls it makes, and the context it accumulates along the way. Each session is independent and has its own context window, so work in one session doesn't leak into another.
The session is the main way you organize agent work. You give a session a task, follow its progress, and review its results as a self-contained thread.
Chats within a session
A session can contain more than one chat. Each chat is an independent conversation with its own history, title, status, and agent or model selection, but all chats in a session share the same workspace and code isolation. A new chat starts blank and doesn't inherit the conversation history of the other chats in the session.
Running several chats in one session lets you work on related tasks against the same codebase at the same time without switching sessions. This capability runs on the Agent Host and is available for harnesses that support it, such as Copilot and Claude. Learn how to run multiple chats in a session.
Work with multiple sessions
Because each session is independent, you can run several at once and move between them:
Run in parallel: start multiple sessions to work on independent tasks at the same time. A session keeps running when you switch away from it.
Fork: branch a session to explore an alternative direction without losing the original.
Checkpoint and roll back: return a session to an earlier point to undo a set of changes. Learn more about checkpoints.
Sessions across surfaces
The Chat view and the Agents window share the same sessions. You can start a task in one surface and continue it in the other, and the sessions list gives you a unified view of all your sessions regardless of where they run.
VS Code can also discover supported local sessions created in Copilot CLI, the GitHub Copilot app, Claude Code, and Codex. A discovered session is external until you send a message from VS Code. The Agent Host then adopts the session, and the external-session filter no longer controls whether it appears. Learn how to view sessions from other applications.
On the Agent Host, an agent can also coordinate work across sessions. It can list sessions, create new sessions or chats, read another session's recent context, and send follow-up messages between sessions.
Hand off a session
Handoff continues ongoing work with a different agent configuration and carries the full conversation history and context with it. A handoff can change the harness, execution environment, or agent role. Use handoff when another configuration is a better fit for the next part of the task.
Common handoffs include:
Harness to harness: continue a Copilot session with Claude or Codex to use provider-specific capabilities.
Plan to implementation: use the Plan agent to produce a reviewed plan, then hand off to an implementation agent.
Continue in the cloud: hand off a well-scoped task to the Cloud target for remote execution and a pull request workflow.
Learn how to hand off an ongoing session.
Remote and synced sessions
A session doesn't have to run on your local machine, and it doesn't have to stay on one device:
Remote sessions run on a machine other than the one you work from. You can connect the Agents window to a remote host over SSH or a dev tunnel, or use Copilot remote control (/remote on) to monitor and steer a running Copilot session from GitHub. Learn more about connecting to a remote machine and remote control for Copilot sessions.
Synced sessions are backed up to your GitHub account so you can access them across devices. Learn more about syncing sessions.
Session insights let you query your session history to review what you worked on. Learn more about session insights.
Related resources
Manage agent sessions
Agent harnesses
Agents
VS Code Agent Host architecture
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

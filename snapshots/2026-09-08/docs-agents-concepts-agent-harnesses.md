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
On this page there are 6 sectionsOn this page
Understand the session choices
Compare session targets
Choose where work runs
Code isolation
Optional: Understand the Agent Host
Related resources
Agent harnesses
An agent harness is the software that runs an agent session and coordinates the agent loop. It sends prompts and context to a language model, executes requested tool calls, returns the results to the model, and maintains the session as the work progresses.
Choosing a harness affects which provider-specific tools and capabilities are available. It can also affect which models, agent roles, execution environments, and code-isolation options you can use. This article explains how these choices fit together so you can choose a session target. To select and configure a target, see Choose and use an agent harness.
Understand the session choices
Several session choices determine how an agent works:
Session target: combines the harness and execution environment into one VS Code control. For targets that run on your machine, the target directly identifies a harness, such as Local, Copilot, Claude, or Codex. The Cloud target selects remote execution and then lets you choose an available cloud agent.
Agent harness: coordinates the agent loop and provides provider-specific tools and capabilities. Examples include Local, Copilot, Claude, and Codex.
Execution environment: determines where tools run and code changes are made. An agent can run on your machine, a remote machine, or cloud infrastructure.
Agent role: provides instructions, tools, and behavior for a task. Examples include Agent, Plan, Ask, and custom agents.
Language model: provides the reasoning and generates responses. The model might run in a different location from the harness.
Code isolation: when available, determines whether changes go directly into your current folder or into a separate Git worktree.
These choices work together, but they are not interchangeable. The available roles, models, execution environments, and isolation options depend on the selected session target.
Local is the name of the built-in VS Code harness. It does not refer to every harness that runs on your machine. Copilot, Claude, and Codex harnesses can also run locally.
For example, a session can use the Local harness on your machine, the Agent role, a supported Claude language model, and folder isolation. Local remains the harness, and Claude is the language model. Selecting the Claude session target instead uses the Claude harness and its provider-specific capabilities, even though it also runs on your machine.
Compare session targets
VS Code provides a shared chat, session-management, change-review, and handoff experience across session targets. The Session Target control presents both harnesses and the Cloud execution target:
Session target choice
How it works
Choose it for
Local
The built-in VS Code harness runs in the extension host. It can use built-in tools, extension tools, MCP servers, and models configured in VS Code.
Interactive work that needs editor context or a model configured in VS Code.
Copilot, Claude, or Codex
A provider harness runs on your machine and exposes provider-specific tools and capabilities.
Work that benefits from a specific provider's agent workflow or capabilities.
Cloud
The target runs an available provider agent on remote infrastructure against a GitHub repository and returns the result through a pull request.
Well-scoped work that can run independently or benefit from team review.
Cloud is an execution target that groups available cloud agents, not a single provider harness. After you select Cloud, you choose an available cloud agent, such as Copilot, Claude, or Codex.
Choose where work runs
The execution environment determines where the harness runs tools and changes code:
Your machine: the harness works with a local folder or Git worktree and can access local context, such as test results and terminal output.
Cloud infrastructure: the harness works with a GitHub repository and creates a pull request. It uses the tools and models configured in the cloud service instead of your local VS Code environment.
A remote machine: the harness runs next to the source code on a remote host. You connect to it over SSH or a dev tunnel. Learn more about remote agent sessions.
Changing the session target for ongoing work is one type of handoff. The handoff carries the conversation history and context to the new harness or execution environment.
Code isolation
When an agent runs on your machine, code isolation determines which working directory receives its changes. It does not change which harness or model the session uses.
Folder isolation: the agent works directly in your current workspace. The agent sees any uncommitted changes and applies edits in place.
Worktree isolation: VS Code creates a separate Git worktree for the session. The agent runs in the worktree folder and starts from the committed state of the selected base branch. It keeps its changes out of your primary branch until you integrate them.
Worktree isolation requires a Git repository with at least one commit. It is useful for parallel tasks because each worktree has its own checked-out files and uncommitted changes.
Important
A worktree is a Git code-isolation boundary, not a security boundary. It does not restrict commands, network access, or access to files outside the worktree. Use agent sandboxing when you need operating system-level file system and network restrictions.
Code isolation also affects permissions and approvals. Learn how to choose folder or worktree isolation.
Optional: Understand the Agent Host
You don't need to understand or manage the Agent Host to choose a session target. Some provider harnesses, such as Copilot, run in the Agent Host, a dedicated process that is independent of the windows displaying their sessions. This separation lets sessions continue in the background, stay synchronized across windows, and run on a remote machine.
Related resources
Choose and use an agent harness
Complete your first task with an agent
Sessions and handoff
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

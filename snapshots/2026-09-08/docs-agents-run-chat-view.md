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
Prerequisites
Open the Chat view
Interface overview
Start a session
Work with the agent
Next steps
Related
Get started with agents
Follow a hands-on tutorial to build an app with AI agents in VS Code.
Start agentic coding tutorial
Use the Chat view
The Chat view is where you work with agents in Visual Studio Code while staying focused on the code in your current project. It lives alongside your editor tabs in the main VS Code window, so you can prompt an agent, review its changes, and keep writing code without leaving your workspace.
Use the Chat view when your work centers on a single project and you want to:
Edit and review in the editor: select changed files in the agent's response to inspect diffs, request revisions, and validate the result before you commit or integrate it. Learn more about reviewing AI-generated code edits.
Debug and test: use the debugger, run tasks, and execute tests to validate the agent's changes before you commit them.
Use extensions and notebooks: the agent has access to your installed extensions and can edit notebooks directly in the editor.
Work remotely: if you're connected to a remote workspace, agents in the Chat view work there too, with access to the same context and tools as you have.
In this article, you learn how to open and work with agents in the Chat view. For chat mechanics that apply to both the Chat view and the Agents window — such as sending requests, adding context, and reviewing changes — see Use chat in VS Code.
Tip
The Chat view (code-first) and the Agents window (agent-first) are the main surfaces for working with agents. They share the same sessions and settings, so you can move freely between them. To switch, select the Open in Agents button in the title bar, or run code --agents. For help choosing, see Choose how you work with agents.
Prerequisites
Visual Studio Code installed. Download VS Code.
Access to GitHub Copilot. Follow the steps in Set up GitHub Copilot in VS Code to sign in and activate your subscription.
Open the Chat view
The Chat view opens in the Secondary Side Bar, next to your editor. To open the Chat view, use one of the following methods:
Select the Chat menu in the VS Code title bar, and then select Open Chat.
Use the keyboard shortcut ⌃⌘I (Windows, Linux Ctrl+Alt+I).
Run code chat from the command line to start chat from outside VS Code. Learn more about starting chat from the command line.
Layout options
The Chat view offers several layout options within the main VS Code window. Choose the layout that best fits your workflow:
Side bar (default): select New Chat (+) > New Chat, or run the Chat: New Chat command. Best for keeping chat visible alongside your code.
Editor tab: select New Chat (+) > New Chat Editor, or run the Chat: New Chat Editor command. Best for giving chat more space or comparing sessions side by side.
Separate window: select New Chat (+) > New Chat Window, or run the Chat: New Chat Window command. Best for multi-monitor setups.
Interface overview
The Chat view keeps the agent next to your code, so you can prompt, review, and edit in the same window. The Chat view has the following main areas:
Sessions list: at the top of the view, where you can view and manage your sessions for the current workspace. Learn more about the sessions list.
Chat conversation: in the center, where you see the conversation history and the agent's responses, including the changes it makes to your code.
Chat input: at the bottom, where you type prompts and configure the session with the agent target, agent, language model, and permission pickers.
The Chat view operates in two modes: compact and side-by-side. Use the toggle control in the top-right corner of the Chat view to switch between them. In compact mode, the sessions list and conversation share the same panel. In side-by-side mode, the sessions list stays visible next to the conversation. Learn more about sessions list layout options.
Start a session
To start a new session, select New Chat (+) or press ⌘N (Windows, Linux Ctrl+N). Before you send your first prompt, use the controls in the chat input area to choose an agent target, agent, language model, and permission level. You can adjust these at any time during a session. Learn more about configuring your agent session.
Type a prompt and press Enter to start. The agent breaks down your task into steps, edits files in your workspace, runs commands, and self-corrects when something goes wrong. Learn more about managing agent sessions.
Work with the agent
After you send a prompt, the agent works through the task step by step. Because the Chat view lives inside the main VS Code window, you can interact with the agent's changes using the full editor experience.
Review edits in the editor: the agent edits files directly in the session folder or isolated worktree. Select a changed file in the response to inspect its diff, or show a per-request summary with
chat.checkpoints.showFileChanges
Open in VS Code
Open in VS Code Insiders
. Learn more about reviewing AI-generated code edits.
Follow terminal activity: when the agent runs shell commands, such as installing dependencies or running a build, you can see the output in real time.
Debug and test: use the VS Code debugger, run tasks, and execute tests to validate the agent's changes before you commit them. This is a key advantage of working in the Chat view, where the full editor tooling is always available.
Use extensions and notebooks: the agent has access to your installed extensions and can work with notebooks directly in the editor.
Tip
You can open chat in an editor tab, a separate window, or maximized for more space. Learn more about the Chat view layout options.
Next steps
Chat overview - add context, write effective prompts, and review changes.
Manage agent sessions - organize, archive, and fork sessions.
Use the Agents window - work with agents across multiple projects.
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

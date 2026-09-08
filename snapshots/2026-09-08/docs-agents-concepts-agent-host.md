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
Why a dedicated Agent Host?
Process architecture
Agent Host Protocol
Self-contained, with optional client tools
Local and remote hosts
Behavior on the extension host
Related resources
VS Code Agent Host architecture
VS Code runs AI coding agents in a dedicated process called the Agent Host, which it communicates with through the Agent Host Protocol (AHP). The host owns agent sessions independently of the clients that display and control them.
Note
The Agent Host and AHP are under active development, and new capabilities continue to roll out.
Why a dedicated Agent Host?
A dedicated Agent Host process for agents provides the following capabilities:
Shared sessions: multiple clients can observe and control the same session, staying in sync.
Remote execution: the host can run next to the workspace on another machine while clients connect from elsewhere.
Independent execution: an agent session can continue when no editor or other client is connected.
Multiple agent implementations: different agent runtimes plug into one host-facing interface and present common session concepts to clients.
Dedicated process: agents run in their own process, where they won't be blocked by busy extensions.
Earlier versions ran agent logic in the extension host, alongside the Copilot Chat extension. The extension host remains important for extensibility, but it is designed around the lifecycle and APIs of extensions, and long-running autonomous work has different needs. Extensions can still contribute chat customizations such as tools, MCP servers, and custom agents, but the agent runtime itself runs in the Agent Host process. By default, tools from extensions are only available in chats in an editor window where the extension is running.
Process architecture
The Agent Host can run as a local utility process or as a standalone server on a remote machine. VS Code uses a message port for local IPC and AHP JSON-RPC over WebSocket for remote connections.
The first-party agent adapters run inside the Agent Host process. An adapter translates between its agent runtime and the common AHP session model.
The Agent Host lives next to the workspace. When the host runs remotely, file edits and commands run on the remote machine.
Agent Host Protocol
Agent Host Protocol is an open, agent-agnostic protocol between a host and its clients. It uses JSON-RPC for communication and immutable state with pure reducers for synchronized session data.
The host is the source of truth. Each client subscribes to URI-addressed channels for resources such as sessions, chats, terminals, and changesets. The client receives an initial state snapshot followed by ordered actions. If the connection drops, the client reconnects and receives missed actions or a fresh snapshot.
Self-contained, with optional client tools
The defining Agent Host principle is that the agent can run without a client. A client is a viewer and controller that can come and go. The host therefore includes the baseline capabilities needed to manage sessions and work with the workspace.
Agent sessions are not tied to the lifetime of the window for their workspace. You can close the window and reopen the session later from another window. While the Agent Host remains running, an active turn can continue without a connected client.
Connected clients can also contribute tools. For example, VS Code can advertise tools that are provided by the client (like the browser tools) or by installed extensions. The Agent Host adds those definitions to the active session and routes a tool call back to the client that contributed it.
Local and remote hosts
For remote sessions, the Agent Host runs as a standalone process and exposes AHP over WebSocket. The Agents window reaches it through SSH or a dev tunnel.
Like VS Code Remote Development, the user interface stays on the client while workspace operations run close to the source code and development tools.
To run your own standalone Agent Host, use code agent host. By default, the command starts a server on localhost and protects it with a connection token. Use the --tunnel option to expose it through a dev tunnel.
Behavior on the extension host
Agent sessions that don't run on the Agent Host run in the extension host. Existing extension-host sessions continue to run there.
There are some differences in behavior for agent sessions that run on the extension host:
Behavior
Difference
Reviewing changes
Agent Host sessions apply edits directly to the session folder or worktree. Review the resulting diffs and then commit, merge, or discard the changes. Extension-host sessions track edits as pending until you keep or undo them. Learn more about reviewing AI-generated code edits.
Customizations
The Agent Host reads user-level customizations from harness-agnostic folders like ~/.copilot and ~/.claude. Customizations stored only in your VS Code profile user data are a legacy location that the Copilot agent doesn't read. Learn more about customizing agent behavior.
Autopilot
On the Agent Host, Autopilot is an agent mode. On the extension host, it's a permission level.
Assisted permissions
Assisted permissions is experimental and might change or be removed.
The Assisted permissions level is available only for supported Agent Host sessions and is off by default in Stable.
Session capabilities
Shared multi-window sessions, multiple chats per session, quick chats, and remote hosting are available only on the Agent Host.
Extension-provided tools
Tools from extensions are only available in chats in an editor window where the extension is running.
MCP configuration
The Agent Host reads harness-agnostic MCP config from .mcp.json (workspace) and ~/.copilot/mcp-config.json (user). It doesn't read .vscode/mcp.json directly, but VS Code forwards servers you configure in VS Code to the Agent Host, except servers that require interactive input (for example, ${input:...} variables). Learn more about configuring MCP servers.
Related resources
Agent Host Protocol documentation
Agent Host Protocol source repository
Agents in VS Code
Remote agent sessions
VS Code Remote Development architecture
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

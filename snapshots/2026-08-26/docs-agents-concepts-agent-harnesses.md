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
📼 Rewatch VS Code Live at MS Build 2026
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
Tools
Prompt Files
Use chat
Chat Basics
Inline & Quick Chat
Add Prompt Context
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
Editor
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
Tools
Prompt Files
Use chat
Chat Basics
Inline & Quick Chat
Add Prompt Context
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
Editor
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
Agent harnesses and session targets
Separate the session choices
Supported harnesses
Where harnesses run
Code isolation
Agent harnesses and the Agent Host
Related resources
Agent harnesses
An agent harness is the runtime that runs the agent loop. It manages the session, calls tools, and applies changes to your code. This article explains how agent harnesses relate to session targets, agent roles, language models, execution environments, and code isolation.
To select and configure a harness, see Choose and use an agent harness.
Agent harnesses and session targets
Agent harness is the industry term for the software that coordinates an agent. Session Target is the VS Code control for choosing the harness and execution environment for a session.
For harnesses that run on your machine, the session target directly identifies the harness, such as Copilot, Claude, or Codex. The Cloud target first selects remote execution, and then lets you choose an available cloud provider.
Separate the session choices
The options in the chat input control different parts of an agent session:
Agent harness: coordinates the agent loop and determines the provider-specific tools and capabilities. Examples include Local, Copilot, Claude, and Codex.
Execution environment: determines where tool calls and code changes run. An agent can run on your machine, a remote machine, or cloud infrastructure.
Agent role: provides instructions, tools, and behavior for a task. Examples include Agent, Plan, Ask, and custom agents.
Language model: provides the reasoning and generates responses. The model might run in a different location from the harness.
The harness passes your prompt and context to the model, executes the model's requested tool calls, returns the results, and continues the loop until the task is complete or requires your input.
Supported harnesses
VS Code supports multiple harnesses through a shared session experience:
Local: the built-in VS Code harness runs in the extension host and can use VS Code tools, extension-provided tools, MCP servers, and models configured in VS Code.
Copilot: uses the Copilot SDK and runs on the Agent Host.
Claude: uses Anthropic's Claude Agent SDK for local sessions and is also available as a cloud agent.
Codex: uses OpenAI Codex for local sessions and is also available as a cloud agent.
Provider SDKs expose provider-specific capabilities while VS Code supplies common session management, workspace selection, chat, change review, and handoff.
Where harnesses run
An agent harness can run in these environments:
Your machine: the harness works with a local folder or Git worktree and can access local runtime context, such as test results and terminal output.
Cloud infrastructure: the harness works with a GitHub repository and creates a pull request. It uses the tools and models configured in the cloud service instead of your local VS Code environment.
A remote machine: the harness runs next to the source code on a remote host. You connect to it over SSH or a dev tunnel. Learn more about remote agent sessions.
You can hand off a session when another harness or execution environment is a better fit for the next part of a task.
Code isolation
When an agent runs on your machine, code isolation determines which working directory receives its changes:
Folder isolation: the agent works directly in your current workspace. The agent sees any uncommitted changes and applies edits in place.
Worktree isolation: VS Code creates a separate Git worktree for the session. The agent runs in the worktree folder and starts from the committed state of the selected base branch. It keeps its changes out of your primary branch until you integrate them.
Worktree isolation requires a Git repository with at least one commit. It is useful for parallel tasks because each worktree has its own checked-out files and uncommitted changes.
All chats in an agent host session share the same folder or worktree. Some fork operations also create a peer chat that shares the worktree. Start separate worktree sessions when parallel tasks must not change the same files.
Important
A worktree is a Git code-isolation boundary, not a security boundary. It does not restrict commands, network access, or access to files outside the worktree. Use agent sandboxing when you need operating system-level file system and network restrictions.
Code isolation also affects permissions and approvals. Learn how to choose folder or worktree isolation.
Agent harnesses and the Agent Host
The Agent Host is a dedicated process for running harnesses independently of the windows that display their sessions. It lets sessions continue in the background, stay synchronized across windows, and run on a remote machine.
Related resources
Choose and use an agent harness
How agents work
Sessions and handoff
Language models
Agent Host architecture
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

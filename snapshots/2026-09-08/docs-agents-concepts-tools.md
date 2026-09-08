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
Tools in the agent loop
Types of tools
How agents choose tools
Control which tools are available
Tool approval and trust
Related resources
Tools
A tool is a capability that lets an agent gather information or take an action. Without tools, a language model can only generate text. With tools, an agent can read files, edit code, run terminal commands, search your codebase, and connect to external services.
When the agent uses a tool, it makes a tool call with the inputs that the tool needs. The tool runs and returns tool output, which becomes part of the context for the next step in the agent loop.
This article explains how tools fit into the agent loop, the types of tools available in VS Code, and how you control their use.
Tools in the agent loop
For example, when you ask an agent to fix a failing test, it might:
Call search and file-reading tools to find the test and related code.
Use the returned file contents to decide what to change.
Call an editing tool to apply the change.
Call the terminal tool to run the test.
Use the test output to decide whether the task is complete or another change is needed.
Each call gives the agent new information or changes the development environment. Depending on your permission level, VS Code might ask you to approve a tool call before it runs.
Types of tools
VS Code supports three types of tools:
Built-in tools: tools that ship with VS Code for common development tasks, like reading and writing files, running terminal commands, searching your codebase, and navigating the editor. These are available immediately without any setup.
MCP tools: tools provided by Model Context Protocol (MCP) servers, an open standard for connecting AI models to external tools and data sources. MCP servers can run locally on your machine or be hosted remotely. Use MCP tools to connect to databases, APIs, and other external services.
Extension tools: tools contributed by VS Code extensions through the Language Model Tools API. Extension tools integrate deeply with the editor and are available when you install the extension.
How agents choose tools
By default, the agent chooses from the enabled tools based on your request and the current context. You can give the agent a high-level goal without naming each tool that it should use.
To direct the agent to a specific tool or group of tools, add a # reference to your prompt. Learn how to use tools in a request.
Control which tools are available
An available tool comes from VS Code, an MCP server, or an installed extension. An enabled tool is one that the agent is permitted to choose for a request.
Limit enabled tools to the capabilities that are relevant to your task. A focused set helps the agent choose appropriate tools, reduces the chance of unnecessary actions, and limits the tool output added to the context window.
The scope of a tool selection depends on where the agent session runs. For the Local harness on the extension host, the selection applies to one chat request. For the Copilot harness on the Agent Host, the selection persists in your user profile. Tools can also be fixed for a reusable custom agent.
Tool approval and trust
Tools can edit files, modify your environment, or access external services. VS Code provides controls for reviewing and limiting these actions:
Approval prompts: based on your permission level, a tool call can require confirmation before it runs.
URL approval: when a tool accesses a URL, a two-step process verifies both the request and the response content.
Permission levels: the permissions picker controls how much autonomy the agent has, from requiring manual approval to fully autonomous operation.
Review the tool name and inputs before you approve a call. Learn more about trust and safety.
Related resources
Use tools with agents
Manage approvals and permissions
Add and manage MCP servers
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

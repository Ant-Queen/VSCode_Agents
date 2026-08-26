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
On this page there are 5 sectionsOn this page
Types of tools
How tools work
Why limit the available tools
Tool approval and trust
Related resources
Tools
Tools are the mechanism that lets the model act on your development environment. Without tools, a language model can only generate text. With tools, an agent can read files, write code, run terminal commands, search your codebase, and connect to external services.
During the agent loop, the model decides which tools to call based on the task. Each tool call produces output that becomes part of the context for the next iteration.
This article explains the types of tools available, how the agent selects and uses them, and how you can control which tools are enabled.
Types of tools
VS Code supports three types of tools:
Built-in tools: tools that ship with VS Code for common development tasks, like reading and writing files, running terminal commands, searching your codebase, and navigating the editor. These are available immediately without any setup.
MCP tools: tools provided by Model Context Protocol (MCP) servers, an open standard for connecting AI models to external tools and data sources. MCP servers can run locally on your machine or be hosted remotely. Use MCP tools to connect to databases, APIs, and other external services.
Extension tools: tools contributed by VS Code extensions through the Language Model Tools API. Extension tools integrate deeply with the editor and are available when you install the extension.
How tools work
When an agent processes a task, the model examines the available tools and decides which ones to call. This happens autonomously: you give the agent a high-level task, and it determines the right tools to use at each step.
You can also explicitly reference tools in your prompts by typing # followed by the tool name. This is useful when you want to ensure a specific tool is used.
Why limit the available tools
Every tool the agent can call adds to the decision space the model has to reason about, and every tool call produces output that is added to the context window. Narrowing the set of available tools to those relevant for the task helps to:
Preserve context: fewer tool calls means less context consumed by intermediate results.
Reduce credit consumption: unnecessary tool calls increase token usage and consume more AI credits.
Get more relevant results: the agent focuses on the most appropriate tools rather than choosing from a large set.
Improve performance: a smaller tool set reduces the decision space for the model.
Tool availability can be scoped per chat request or fixed for specific workflows in custom agent configuration. For the Copilot harness, tool availability is configured once per user profile and applies across all sessions. See Manage tools for the Copilot harness.
Tool approval and trust
Tools can perform actions that edit files, modify your environment, or access external services. VS Code includes security controls to keep you in charge:
Approval prompts: tools with side effects show a confirmation dialog before running. You can approve for a single use, the current session, or all future invocations.
URL approval: when a tool accesses a URL, a two-step process verifies both the request and the response content.
Permission levels: the permissions picker controls how much autonomy the agent has, from requiring manual approval to fully autonomous operation.
Learn more about trust and safety.
Related resources
Use tools with agents
Manage tools for the Copilot harness
Add and manage MCP servers
Agents
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

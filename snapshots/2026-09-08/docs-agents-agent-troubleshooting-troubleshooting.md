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
View logs for GitHub Copilot
Collect network diagnostics
Debug chat interactions
Troubleshoot MCP servers
Provide feedback
Related resources
Troubleshoot AI in Visual Studio Code
This article covers diagnostic tools and techniques for troubleshooting AI-related issues in VS Code. Use these tools to identify problems with network connectivity, customization files, and AI responses.
View logs for GitHub Copilot
The log files for the GitHub Copilot extension are stored in the standard log location for Visual Studio Code extensions. Use these logs to diagnose connection issues, extension errors, and unexpected behavior.
To view detailed logs:
Open the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)).
Run Developer: Set Log Level and set the value to Trace for the GitHub Copilot and GitHub Copilot Chat extensions.
Run Output: Show Output Channels and select either GitHub Copilot or GitHub Copilot Chat from the list.
In the Output panel, view the logs for the selected extension.
To switch between output channels, select GitHub Copilot or GitHub Copilot Chat from the dropdown menu on the right side of the Output panel.
Collect network diagnostics
If you encounter problems connecting to GitHub Copilot, collect network connectivity diagnostics to identify firewall, proxy, or VPN issues.
Open the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)).
Run GitHub Copilot: Collect Diagnostics.
An editor tab opens with diagnostic information you can review and share when reporting issues.
For more information about network configuration, see Network and firewall configuration for Copilot.
Debug chat interactions
VS Code provides different tools to inspect what happens when you send a prompt to the AI.
/troubleshoot slash command:
Ask the AI to analyze debug logs for extension host chat sessions and Agent Host sessions. Use it to understand agent behavior, such as why custom instructions were ignored or why responses are slow. Type /troubleshoot followed by your question, such as /troubleshoot how many tokens did I use? or /troubleshoot list all paths you tried to load customizations in #session.
For extension host chat sessions, enable
github.copilot.chat.agentDebugLog.fileLogging.enabled
Open in VS Code
Open in VS Code Insiders
and reload the window before you use /troubleshoot. For Agent Host sessions, enable
chat.agentHost.agentDebugLog.enabled
Open in VS Code
Open in VS Code Insiders
before you start the session that you want to capture.
To diagnose an agent host session:
Open the Agents window.
In the chat input, type /troubleshoot #session.
Select the local or remote session that you want to troubleshoot.
Add a question or description of the issue, and then send the request.
Agent Debug Log panel (Preview):
Shows a chronological event log of agent interactions during a chat session, including tool call sequences, LLM requests, token usage, prompt file discovery, and errors. This is the primary tool for understanding and debugging chat interactions.
To open the Agent Debug Log panel:
Select the ellipsis (...) menu in the Chat view and select Show Agent Debug Logs.
From the Agent Debug Log panel, you can attach a snapshot of the agent debug events to a chat conversation to ask the AI questions about the session and troubleshoot a specific interaction.
Learn more about the Agent Debug Log panel.
Cache Explorer:
Compares consecutive model requests to show where the prompt cache breaks. Use it when responses are slow or a session consumes more tokens than expected to check whether a low cache hit rate is the cause.
Learn more about the Cache Explorer.
Chat Debug view:
Shows the raw details of each LLM request and response, including the full system prompt, user prompt, context, and tool invocation payloads. Use this view to inspect the exact data sent to and received from the language model for each interaction.
To open the Chat Debug view:
Select the overflow menu (...) in the Chat view.
Select Show Chat Debug View.
Learn more about the Chat Debug view.
Troubleshoot MCP servers
MCP servers extend chat capabilities by connecting to external services. If an MCP server isn't working correctly, you can view its logs and restart it.
To troubleshoot MCP servers:
Open the Command Palette and run MCP: List Servers.
Select a server to view its status and available actions.
Select Show Output to view the server's logs.
Select Restart Server to restart a misbehaving server.
Learn more about configuring and debugging MCP servers.
Provide feedback
If you encounter issues that you can't resolve, report them to help improve GitHub Copilot:
Ghost text suggestions: Hover over a ghost text suggestion in the editor and select Send Copilot Completion Feedback.
Next edit suggestions: Select the Feedback action in the next edit suggestions menu in the editor gutter.
General issues: Open Help > Report Issue, select VS Code Extension, and choose GitHub Copilot Chat.
When reporting issues, include relevant information from the Copilot logs to help diagnose the problem.
Related resources
Debug chat interactions
Diagnose prompt caching with the Cache Explorer
Custom instructions
MCP servers
GitHub Copilot FAQ
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

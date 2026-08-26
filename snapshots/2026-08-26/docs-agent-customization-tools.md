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
On this page there are 4 sectionsOn this page
Open the Tools section
Manage tool availability
Add tools from extensions
Related resources
Manage tools for the Copilot harness
The Tools section in the Agent Customizations editor controls which client-side tools Visual Studio Code makes available to sessions that use the Copilot harness. Use it to limit the tools that the agent can choose from across chats.
Disabled tools aren't advertised to the agent. This reduces the set of tools that the agent has to consider and prevents it from requesting tools that you don't want it to use.
Note
The Tools section is only available for the Copilot harness, which runs on Agent Host. For this harness, tool choices are profile-wide and persist across sessions. Other harnesses use the Configure Tools picker in the Chat view to select tools for individual requests.
Open the Tools section
To manage tools for the Copilot harness:
Select the Copilot harness from the agent picker in the chat input.
Open the Agent Customizations editor:
In the Chat view, select Configure Chat (gear icon), or run Chat: Open Customizations from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)).
In the Agents window, go to the Customizations panel.
Select Tools.
If the Tools section isn't visible, verify that the Copilot harness is selected.
Manage tool availability
Tools are organized into collapsible groups. For example, VS Code groups tools for editor operations, tasks, the integrated browser, and extensions that contribute language model tools.
All client-side tools are available by default. You can:
Enter text in the search box to filter tool groups and individual tools.
Select a tool group checkbox to enable or disable every tool in the group.
Expand a group and select individual tools. The group checkbox shows a mixed state when only some tools are enabled.
Review the enabled and total tool counts shown for each group.
The count beside Tools in the customization navigation includes enabled client-side tools and excludes the read-only Copilot tools.
Changes apply to Copilot harness sessions and persist in the active user profile.
The Copilot group lists the harness's built-in tools. These tools run in the Copilot runtime and are read-only in the Tools section. Other tools run in the VS Code client and are available to the agent only while the client is connected.
Tool availability is separate from tool approval. Enabling a tool makes it available to the agent, but doesn't bypass the configured approval and permission controls.
Add tools from extensions
In the main VS Code window, you can find extensions that contribute language model tools:
Open the Tools section and select Browse Marketplace.
Search for an extension and select it to view its details and contributed tools.
Install the extension. Its tools then appear in the tool list, where you can manage their availability.
The Agents window shows the tool availability list but doesn't include Marketplace browsing.
To remove an extension from the tool list, right-click its tool group and select Uninstall Extension.
Caution
Uninstalling a tool extension removes the entire extension, including contributions that aren't tools.
Related resources
Tools concepts
Use tools with agents
Add and manage MCP servers
Use agent harnesses
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

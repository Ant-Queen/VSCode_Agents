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
Why prompt caching matters
Open the Cache Explorer
Read the Cache Explorer
Improve your cache hit rate
Related content
Diagnose prompt caching with the Cache Explorer
When you send a prompt to the AI in Visual Studio Code, the language model provider can reuse the parts of your request that match a previous request. This is called prompt caching. The Cache Explorer view helps you diagnose prompt cache misses by comparing consecutive model requests in a chat session, which helps you reduce token cost and latency.
The Cache Explorer is one of the views in the Agent Debug Logs panel.
Why prompt caching matters
Prompt caching lets a model provider reuse the prefix of a request that matches a previous one. When the beginning of a request is identical to the previous request, the provider serves that portion from cache instead of processing it again. A higher cache hit rate reduces both latency and token cost.
The cache only applies to the matching prefix of a request. As soon as the content of two consecutive requests diverges, everything after that point is a cache miss. Small changes early in the prompt, such as a reordered tool definition or a modified instruction, break the cache for the rest of the request. The Cache Explorer pinpoints exactly where the prompt prefix diverges, which helps you understand and address a low cache hit rate.
Open the Cache Explorer
Open the Agent Debug panel by selecting the ellipsis (...) menu in the Chat view and selecting Show Agent Debug Logs.
Select the session description in the breadcrumb at the top to go to the Summary view.
Select Cache Explorer to open the Cache Explorer view for the selected session.
Read the Cache Explorer
The Cache Explorer has two panels:
The side panel lists all model turns in the session, grouped by user request. Each turn shows the cache hit percentage, duration, model name, and timestamp. Select a turn to compare it against the previous turn.
The main content shows a side-by-side prefix diff between the current request and the previous request.
The main content area includes the following information:
Cache performance: the cache hit percentage and the number of input tokens reused out of the total.
Prompt signature: a visual summary of each component in the request, such as system instructions, tool definitions, and messages, with color-coded status indicators. The first divergence point marks where the prompt cache breaks.
Components: expandable sections for system instructions, tool definitions, and individual messages that show the text-level diff between the two requests.
To find the cause of a cache miss, locate the first divergence point in the prompt signature, then expand the corresponding component to see the exact text that changed between the two requests.
Improve your cache hit rate
Prompt caching works best when the early parts of your requests stay stable across turns. Use the following practices to keep the prompt prefix consistent:
Lock in settings before you start: Switching the model, reasoning effort, context size, or the enabled tools and MCP servers during a session rebuilds the cache. Choose them upfront, or use auto model selection, which switches models only at cache boundaries.
Keep instructions stable: Changing instructions files or custom agent definitions mid-session breaks the cache. For more information, see the context engineering guide.
Add volatile context late: Place content that changes often, such as file attachments or terminal output, later in the conversation.
Isolate exploration in subagents: Run research in a subagent to keep the parent session prompt stable.
Start fresh after a break: Caches expire after inactivity. Start a new session or run /compact to rebuild from a short summary instead of the full history.
Related content
Debug chat interactions
Optimize your AI usage
Context engineering guide
OpenTelemetry monitoring for agents
Optimizing your AI usage to maximize efficiency and reduce cost
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

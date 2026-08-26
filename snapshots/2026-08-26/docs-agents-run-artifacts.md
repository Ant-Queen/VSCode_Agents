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
Artifact sources
Configure artifact extraction rules
Use artifacts
Ask the agent to create artifacts
Related resources
Related
Try artifacts in action
Launch a chat prompt that asks the agent to save a screenshot as an artifact.
Open in VS Code
Stable
Insiders
Agent artifacts (Preview)
The artifacts panel in Visual Studio Code surfaces important resources, such as screenshots, plans, and documents, alongside the chat conversation. Artifacts can come from multiple sources simultaneously and are displayed in a collapsible tree control, grouped by origin.
Note
The features on this page work in both the Chat view and the Agents window.
Note
The artifacts panel is currently in preview. To enable it, set
chat.artifacts.enabled
Open in VS Code
Open in VS Code Insiders
to true.
Artifact sources
Artifacts can appear in the panel from different sources, which are merged and grouped by origin:
Rules-based extraction: VS Code automatically extracts artifacts from conversation content based on configurable MIME type patterns, file path globs, or memory file paths. For example, the built-in rules surface screenshots and plan documents. See Configure artifact extraction rules for details.
Agent-set artifacts: the agent explicitly sets artifacts by using the #artifacts tool. Each update replaces the previous agent artifact list.
Subagent artifacts: when the agent delegates work to subagents, each subagent can set its own artifacts, shown in separate groups labeled with the subagent's name.
Configure artifact extraction rules
Rules-based extraction uses three settings, each mapping a pattern to a group configuration. The group configuration has a groupName (display label) and an optional onlyShowGroup flag (when true, only the group header is shown instead of individual items).
Setting
Description
Default
chat.artifacts.rules.byMimeType
Open in VS Code
Open in VS Code Insiders
Match tool results by MIME type pattern, such as "image/*".
{ "image/*": { "groupName": "Screenshots", "onlyShowGroup": true } }
chat.artifacts.rules.byFilePath
Open in VS Code
Open in VS Code Insiders
Match workspace files by glob pattern, such as "**/*plan*.md".
{ "**/*plan*.md": { "groupName": "Plans" } }
chat.artifacts.rules.byMemoryFilePath
Open in VS Code
Open in VS Code Insiders
Match memory tool writes by glob pattern, such as "**/*plan*.md".
{ "**/*plan*.md": { "groupName": "Plans" } }
For example, to add a rule that surfaces HTML files written by the agent as artifacts, add the following to your settings:
"chat.artifacts.rules.byFilePath": {
"**/*.html": { "groupName": "Web Pages" }
}
To disable rules-based extraction entirely, set all three rule settings to {}.
Use artifacts
When artifacts are available, the artifacts panel appears alongside the conversation. Artifacts are organized in groups based on their source.
Select an artifact to open the corresponding resource. For example, selecting an image artifact shows a preview, while selecting a document artifact opens the file in the editor.
Artifacts from the agent replace the previous agent list each time the agent updates them.
Each subagent's artifacts are shown in a separate group. You can clear a specific subagent's artifacts independently.
Rules-based artifacts update automatically as the conversation progresses. If you change the rule settings, the artifacts panel reflects the updated rules.
Ask the agent to create artifacts
You can ask the agent to store something as an artifact by describing what you want in your prompt. For example:
"Take a screenshot of my app and set it as an artifact"
"Write a project plan and set it as an artifact"
"Save these links as artifacts"
The agent then uses the #artifacts tool to add the resource to the artifacts panel. You don't need to reference the tool directly. Just describe what you want to keep, and the agent determines when to surface it as an artifact.
The agent can also use the #artifactRules tool to override the extraction rules for the current session. This replaces any settings-based rules for the duration of the session.
Related resources
Chat overview
Agent tools
AI settings reference
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

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
On this page there are 3 sectionsOn this page
How to plan a task
Customize planning
Related resources
Related
Plan a feature with agents
Use the Plan agent to create a structured implementation plan for a new feature.
Open in VS Code
Stable
Insiders
Planning with agents in VS Code
The plan agent enables you to create detailed implementation plans before starting the implementation to ensure all requirements are met. With todo lists, the agent can ensure it stays focused on the overall goals and tracks progress effectively.
For background on how the plan agent fits into the agent architecture, see Agents concepts.
This article explains how to use the plan agent and todo lists in VS Code.
How to plan a task
To plan a task, use the built-in Plan agent in the Chat view, describe your task, and iterate on the generated plan.
Open the Chat view by pressing ⌃⌘I (Windows, Linux Ctrl+Alt+I) and select Plan from the agents dropdown
Alternatively, type /plan followed by your task description to switch to the Plan agent and start planning in one step.
Enter a high-level task (feature, refactoring, bug, etc.) and submit it. For example:
Implement a user authentication system with OAuth2 and JWT
Use the /plan slash command to start planning directly from the chat input box:
/plan Add unit tests for all API endpoints
Answer any clarifying questions the agent asks after researching your task.
The Plan agent generates a high-level plan summary, implementation and verification steps. Review the plan draft and submit follow-up prompts to iterate on the plan until it meets your requirements.
When the plan is finalized, choose to start the implementation or open the planning prompt in the editor for further review.
To implement the plan, select Start Implementation and choose an available implementation agent. The plan and conversation context carry over to the implementation agent. Learn more about handing off a plan to implementation.
Tip
The Plan agent automatically saves its implementation plan to a session memory file (/memories/session/plan.md). To access this file, run the Chat: Show Memory Files command and select plan.md from the list. Session memory is cleared when the conversation ends, so the plan is not available in subsequent sessions.
Customize planning
You can tailor the planning process to fit your team's workflow:
Create a custom planning agent. Define a custom agent with specific instructions for your planning process, such as enforcing architectural guidelines or requiring specific planning deliverables.
Choose models for planning and implementation. Use the
chat.planAgent.defaultModel
Open in VS Code
Open in VS Code Insiders
setting to select a default model for the plan agent, and
github.copilot.chat.implementAgent.model
Open in VS Code
Open in VS Code Insiders
for the implementation step.
Add extra tools to the plan agent (experimental). Use the
github.copilot.chat.planAgent.additionalTools
Open in VS Code
Open in VS Code Insiders
setting to give the plan agent access to additional tools during the research and planning phases. For example, use an MCP server to connect to internal data sources or tools.
Related resources
Run deep research with the research agent
Memory in VS Code agents
Configure tools for agents
Context engineering user guide
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

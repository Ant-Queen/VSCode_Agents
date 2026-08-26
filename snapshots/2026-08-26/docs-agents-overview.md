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
What you can do with agents
How agentic coding works
Ways to work with agents
Where and how agents run
Stay in control
Get started
Related resources
Related
Get started with agents
Choose a short quickstart or a guided tutorial to complete your first coding task with an agent.
Start the agents quickstart
Follow the agents tutorial
Build with agents in VS Code
Agentic coding uses AI agents to complete software development tasks with varying levels of autonomy. Give an agent a high-level goal, and it can gather context, plan the work, edit files, run commands, and iterate on the result. You guide the agent, review its actions, and decide which changes to keep.
This article introduces the agentic coding capabilities in Visual Studio Code and the key components that work together. Follow the links to explore each concept in depth, or get hands-on with the agents quickstart or agents tutorial.
-->
What you can do with agents
Agents combine language-model reasoning with tools that act on your development environment. This makes them useful for tasks that involve multiple steps or files, such as:
Planning and implementing features across multiple files.
Exploring, refactoring, or migrating a codebase.
Diagnosing errors, running tests, and applying fixes.
Running and validating web apps with browser tools.
Working on independent tasks in parallel or in the background.
Agents are the most autonomous of several AI experiences in VS Code. For lighter-weight help, you can also use chat, inline chat, inline suggestions, and smart actions.
How agentic coding works
Agentic coding relies on three concepts:
Agent loop: the agent uses a language model to reason over context and call tools. It repeats this loop until it completes the task, needs your input, or you stop it.
Session: a session holds the conversation, workspace, changes, and execution state for a task so that you can pause, resume, and hand off the work.
Harness and execution environment: the agent harness coordinates the agent loop. The execution environment determines where tools run and where the agent changes code.
You can further shape the agent with customizations.
Ways to work with agents
Agent sessions are available through several interfaces in VS Code, the terminal, and the browser. Each interface presents the session in the environment where you are working.
Agents windowChat viewBrowserCopilot CLIGitHub Copilot App
The Agents window (Preview) is a dedicated, agent-first interface for assigning high-level tasks and managing multiple sessions across workspaces.
The Chat view is a code-first interface for working with an agent alongside the editors in your current workspace.
From GitHub, assign issues to cloud agents, track progress, and review the resulting pull requests. Use vscode.dev/agents to connect to agents on your development machine from a browser.
Use GitHub Copilot CLI to work with an agent from the integrated terminal or an external terminal.
Use the GitHub Copilot app to manage AI coding tasks in a dedicated desktop experience outside VS Code.
Access and continue sessions across interfaces and devices
Agent sessions aren't tied to a single interface. You can switch between the Agents window and the Chat view, or connect from a browser on another device through a dev tunnel.
You can also use the Agents window to start or manage sessions on another machine over SSH or a dev tunnel. Learn more about remote agent sessions.
VS Code can also discover supported sessions created by other interfaces and harnesses, including Copilot CLI, Claude Code, and Codex. Learn more about managing and handing off sessions.
Where and how agents run
The agent harness determines which provider-specific capabilities and tools are available. VS Code supports the built-in Local harness and provider-specific harnesses such as Copilot, Claude, and Codex. You can also choose from supported language models or bring your own model, including a model that runs locally.
The execution environment determines where the agent runs tools and changes code:
Your machine: work directly in a folder or use a Git worktree to isolate changes.
Cloud infrastructure: work on a GitHub repository in the background and return the result as a pull request.
A remote machine: run the agent next to code and tools on a remote host.
Choose a harness and execution environment when you start a session. You can hand off the session when another target is a better fit for the next part of the task. Learn more about agent harnesses and execution environments.
Stay in control
Agents can read and edit files, run terminal commands, and call external services. Set a permission level to control which tool calls require your approval. Use agent sandboxing when you need operating system-level file system and network restrictions. Review generated code and validate the result before you keep the changes. Learn more about trust and safety controls.
Organizations can centrally control which AI features, models, and tools are available. Administrators can restrict agent capabilities and enforce requirements for their teams. Learn more about enterprise AI policies.
Get started
AI features are built into VS Code. Sign in with your GitHub account to use your GitHub Copilot subscription or bring your own models, and then choose a learning path:
Complete the agents quickstart to build and validate a small app with an agent.
Follow the agents tutorial for a longer, guided introduction to the Agents window, the Chat view, source control, and browser tools.
Note
Make sure agents are enabled with
chat.agent.enabled
Open in VS Code
Open in VS Code Insiders
. If your organization has disabled agents, contact your GitHub organization administrator.
Related resources
Learn how agents work.
Review best practices for using AI.
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

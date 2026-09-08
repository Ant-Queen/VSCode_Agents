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
How the concepts fit together
Agent loop
Stay in control
Sessions
Agent harnesses and execution environments
Capabilities that extend agent work
Related resources
Related
Get started with agents
Complete a short quickstart to create and validate an app with an agent in VS Code.
Start the agents quickstart
Agents
An agent is an AI system that uses a language model and tools to complete a goal on your behalf. A language model generates responses based on the information in a prompt. An agent goes further by gathering context, taking actions in your development environment, evaluating the results, and repeating these steps as needed.
You choose the goal, control which actions require approval, and review the resulting changes. This article explains how the agent loop works and introduces the sessions, planning, subagents, memory, and customizations that support agentic work.
For an overview of what you can do with agents in VS Code and where to work with them, see Build with agents in VS Code.
How the concepts fit together
The core concepts work together each time you send a request:
Request: You describe a goal and provide any requirements or constraints.
Context and reasoning: VS Code assembles relevant context, such as files and conversation history. A language model reasons over that information and determines the next action.
Tool action: The agent uses tools to gather more information or act on your environment, such as reading a file, editing code, or running a command.
Validation: The result of the tool call returns to the model as context. The agent evaluates its progress and decides whether to take another action.
Review: When the task is complete, you review the response, code changes, and validation results.
The repeated reasoning, action, and validation steps form the agent loop. A session keeps the conversation and task state together. An agent harness coordinates the loop, while the execution environment determines where tools run and code changes are made.
Agent loop
The agent loop enables an agent to work through a task instead of producing a single response. At each step, the agent evaluates its progress and chooses the next action. The output of that action informs the next decision.
For example, when you ask an agent to add validation to a form, the loop typically includes these stages:
Understand: The agent finds the form, reads related code and tests, and identifies the project's existing validation patterns.
Act: The agent updates the form and adds or modifies tests.
Validate: The agent runs the relevant tests and checks for errors. If validation fails, it diagnoses the result, makes another change, and validates again.
Simple questions might require only a few file reads. Larger implementation tasks might repeat the loop many times as the agent edits code, runs tests, and fixes problems.
Stay in control
An agent can take actions, but you remain responsible for directing the task and deciding which changes to keep. During a session, you can:
Choose which tools are available and which tool calls require approval.
Review an approval request before an action runs.
Send another message to add context or redirect the work.
Stop the agent if it is taking the wrong approach.
Review changed files and validation results before you keep the changes.
Learn more about trust and safety controls.
Sessions
A session is the unit of work with an agent. It contains one conversation and the context, workspace, changes, and execution state associated with that task.
Sessions are independent, can run in parallel, and are shared across the Chat view and the Agents window. A session can run on your machine or a remote host, and you can hand it off to another agent. Learn more about sessions and handoff.
Agent harnesses and execution environments
An agent harness is the runtime that coordinates the agent loop. It manages the session, connects the language model to tools, and provides provider-specific capabilities. VS Code supports harnesses such as Copilot, Claude, and Codex.
The execution environment is where the harness runs tools and changes code. Depending on the harness and task, this can be your machine, cloud infrastructure, or a remote machine. Learn more about agent harnesses and execution environments.
Capabilities that extend agent work
Agents can use additional capabilities for complex tasks and recurring workflows. These capabilities are not required for every request.
Planning
Every agent decides which action to take next as part of the agent loop. For a complex task, use the built-in Plan agent to research the codebase, clarify requirements, and propose an implementation plan before code changes begin.
The Plan agent uses read-only tools while preparing the plan. After you review and approve the approach, you can hand off the plan to an implementation agent. Learn more about planning with agents.
Subagents
For complex tasks, the main agent can delegate focused work to subagents. A subagent performs a specific task, such as researching a topic or analyzing part of a codebase, and reports the result to the main agent.
Subagents are useful when independent research would add large amounts of intermediate information to the main agent's context window. Each subagent works in a separate context window and returns a focused result.
Key characteristics of subagents:
Context isolation: each subagent runs in its own context window and doesn't inherit the main agent's conversation history. It receives the task prompt, applicable instruction files, and the current agent configuration.
Parallel execution: VS Code can spawn multiple subagents in parallel for tasks like analyzing security, performance, and accessibility simultaneously.
Focused results: only the final result is returned to the main agent, keeping the main context focused and reducing token usage.
For example, the Plan agent can use subagents to research independent parts of a task before creating a plan.
Learn more about using subagents.
Memory
When the memory tool is available, an agent can store notes for use later in the same session or in future sessions. These notes can record preferences, lessons from previous tasks, or information about your codebase. Memory is separate from the conversation context that a session accumulates automatically.
The memory tool stores notes locally on your machine in three scopes:
User memory (/memories/): persists across all workspaces and conversations. The first 200 lines are automatically loaded into every session.
Repository memory (/memories/repo/): scoped to the current workspace and persists across conversations.
Session memory (/memories/session/): scoped to the current conversation and cleared when it ends.
Learn more about memory in VS Code agents.
Customization
You can customize the agent loop for a project or workflow:
A custom agent defines instructions, available tools, a language model, and optional handoffs for a specific workflow.
Agent skills give an agent instructions and resources for a specialized task.
Hooks run commands at specific points in the agent lifecycle.
Learn more about customization concepts.
Related resources
Tools
Agent harnesses and execution environments
Trust and safety
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

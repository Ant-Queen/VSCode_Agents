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
On this page there are 8 sectionsOn this page
How the concepts fit together
Agent loop
Agent harnesses
Subagents
Sessions
Memory
Planning
Related resources
Related
Get started with agents
Follow a hands-on tutorial to experience local, background, and cloud agents in VS Code.
Start agentic coding tutorial
Agents
An agent is an AI system that autonomously plans and executes coding tasks. You give the agent a high-level goal, and it breaks the goal down into steps, executes those steps with tools, and self-corrects when it hits errors. This article explains the core architecture of agents: the agent loop, subagents, memory, and planning. To learn where agents run and which harness powers them, see agent harnesses.
For an overview of what you can do with agents in VS Code and where to work with them, see Build with agents in VS Code.
How the concepts fit together
The core concepts combine each time you send a request. A language model does the reasoning. To respond usefully, it needs context: VS Code assembles the relevant files, conversation history, and other information and sends it to the model. To act on your environment instead of only answering, the model calls tools to read and edit files, run commands, or reach external services. The agent ties these together in the agent loop, calling tools and feeding the results back to the model until the task is complete.
Customization shapes how the agent behaves, and trust and safety controls keep you in command of what it can do. The agent runs on a harness that determines where it runs, and each conversation is a session that you can manage and hand off.
Agent loop
When you give an agent a task, it follows an agentic loop. This pattern is common across modern AI assistants. Within VS Code, an agent is the system that plans and takes actions, and the language model generates responses that inform those actions.
At each step, the agent evaluates its progress and picks the next action. It might open a file to understand an API, make an edit, then run a command to verify the change worked. The output of each action becomes input for the next decision.
The agent loop typically involves three high-level stages:
Understand. The agent reads files, searches the codebase, and looks up documentation to understand what needs to change.
Act. The agent modifies code, runs terminal commands, installs dependencies, or calls external services through tools.
Validate. The agent runs tests, checks for compiler errors, and reviews its own changes. If something is wrong, it continues iterating.
The agent uses the language model to reason about the best course of action. However, without the ability to interact with the environment, the model is limited to providing generic responses. With tools, the agent issues tool calls at each step to gather information and take actions like reading files, making code changes, running terminal commands, and reaching out to external services.
The agent chains these actions together as needed until it accomplishes the task. Answering a question about your codebase might involve only a few file reads. Implementing a new feature typically loops through editing, running tests, diagnosing failures, and editing again until the tests pass.
Behind the scenes, VS Code assembles the current context into a prompt and sends it to the language model. The model responds with text, a code edit, or a tool request. When a tool runs, its output is added to the context for the next iteration, and this cycle repeats until the task is complete.
You stay in control throughout the process. Send a new message to redirect the agent, add context, or suggest a different approach. For more on reviewing changes and managing agent behavior, see Trust and safety.
Customize the agent loop
The agent loop is not one-size-fits-all and might differ for each project. There are different options to personalize the agent's behavior:
A custom agent lets you define different personas, each with their own instructions, available tools, language model, and optionally hand off to another agent.
With agent skills, you can teach the agent new capabilities for a specific domain or task.
Hooks run custom commands at specific lifecycle points in the agent loop.
Learn more about Customization concepts.
Agent harnesses
Agents run in different environments depending on when you need results and how much oversight you want. The two key dimensions are where the agent runs, such as your machine or the cloud, and which harness powers it. VS Code supports running agents using different harnesses, such as Copilot, Claude, or Codex. Learn more about agent harnesses.
Subagents
When working on complex tasks, the main agent can delegate subtasks to subagents. A subagent is an independent AI agent that performs focused work, such as researching a topic or analyzing code, and reports the results back to the main agent.
The primary benefit of subagents is context optimization. Without subagents, every file read, search result, and intermediate step during research accumulates in the main agent's context window, potentially crowding out important information. Subagents perform their work in a separate context window and return only a summary, keeping the main conversation focused on the task at hand.
Key characteristics of subagents:
Context isolation: each subagent runs in its own context window and doesn't inherit the main agent's conversation history. It receives the task prompt, applicable instruction files, and the current agent configuration.
Synchronous execution: the main agent waits for subagent results before continuing, because subagent findings typically inform the next step.
Parallel execution: VS Code can spawn multiple subagents in parallel for tasks like analyzing security, performance, and accessibility simultaneously.
Focused results: only the final result is returned to the main agent, keeping the main context focused and reducing token usage.
For example, the built-in Plan agent uses subagents to perform research and analysis before creating an implementation plan. Each subagent works autonomously and returns only its findings.
Learn more about using subagents.
Sessions
A session is the unit of work with an agent: one conversation, along with the context it accumulates. Sessions are independent, can run in parallel, and are shared across the Chat view and the Agents window. They can run on your machine or on a remote host, and you can hand off a session from one agent to another. Learn more about sessions and handoff.
Memory
Agents use memory to retain context across conversations. Rather than starting from scratch each session, agents recall your preferences, apply lessons from previous tasks, and build up knowledge about your codebase over time.
VS Code supports two complementary memory systems:
Memory tool: a built-in tool that stores notes locally on your machine, organized in three scopes:
User memory (/memories/): persists across all workspaces and conversations. The first 200 lines are automatically loaded into every session.
Repository memory (/memories/repo/): scoped to the current workspace, persists across conversations.
Session memory (/memories/session/): scoped to the current conversation, cleared when it ends.
Copilot Memory: a GitHub-hosted memory system that captures repository-specific insights across Copilot surfaces (cloud agent, code review, CLI). Shared across GitHub Copilot beyond VS Code.
Learn more about memory in VS Code agents.
Planning
For complex tasks, jumping straight into code generation can lead to incomplete implementations or wrong architectural decisions. The built-in Plan agent collaborates with you to research the task and create a detailed implementation plan before any code changes are made. This ensures requirements are understood, edge cases are identified, and you agree on the approach before the agent starts writing code.
The plan agent uses a 4-phase iterative workflow:
Discovery: research the task using read-only tools and codebase analysis.
Alignment: ask clarifying questions to resolve ambiguities.
Design: draft a structured implementation plan.
Refinement: iterate on the plan based on your feedback.
The Plan agent does not make code changes until the plan is reviewed and approved. Once approved, you can hand off the plan to the default agent or save it for further refinement.
Learn more about planning with agents.
Related resources
Using agents in VS Code
Agent harnesses
Sessions and handoff
VS Code Agent Host architecture
Tools
Context
Trust and safety
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

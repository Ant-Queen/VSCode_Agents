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
On this page there are 6 sectionsOn this page
Why context matters
How VS Code assembles context
Workspace indexing
Implicit context
Working effectively with context
Related resources
Context
Context is everything the model can see when generating a response. It includes the conversation history, file contents from your workspace, tool outputs, custom instructions, and any references you add explicitly. The model can only reason about what it can see, so providing relevant context is one of the most effective ways to improve AI responses.
This article explains how VS Code assembles context, what types of context are available, and how to work effectively with context window limits.
Why context matters
A prompt with relevant files, clear instructions, and focused history produces better results than a vague prompt with no context. The model has no memory of previous sessions and no access to files it hasn't been given. Everything it knows about your task comes from the context assembled for the current request.
How VS Code assembles context
When you send a message, VS Code builds a language model prompt from multiple sources:
System instructions: built-in guidelines that define the agent's behavior.
Customizations: AI customizations you set up, including custom agents, skills, and custom instructions.
User message: the current message you're sending to the agent.
Conversation history: the messages exchanged so far in the current session.
Implicit context: the file you're editing, your current selection, visible errors, and git state.
Explicit references: files, editor context, web content, and other sources you reference with #-mentions.
Tool outputs: results from file reads, terminal commands, codebase search results, and other tool calls during agent sessions.
This assembled prompt is what the model sees. Everything outside of it is invisible to the model. This is why referencing specific files with #file produces better results than asking about code the model hasn't seen.
Workspace indexing
VS Code uses an index to quickly and accurately search your codebase for relevant code snippets. This index can either be maintained by GitHub or stored locally on your machine.
Remote index: if your code is hosted in a GitHub repository, you can build a remote index to search your codebase quickly, even for large codebases.
Local index: use an advanced semantic index stored on your local machine for fast and accurate search results.
Basic index: if local indexing is not available, simpler algorithms work locally for larger codebases.
Learn more about workspace indexing.
Implicit context
VS Code automatically provides context to the prompt based on your current activity:
The currently selected text in the active editor.
The file name or notebook name of the active editor.
If you're using the Ask agent, the active file is automatically included as context.
When using Agent, it decides autonomously if the active file needs to be added based on your prompt.
Working effectively with context
Start new sessions for new tasks. A session is an independent conversation with its own context window and history. Each session starts fresh, so don't reuse a single conversation for unrelated tasks.
Be selective with context. Adding your entire codebase isn't always helpful. Reference specific files that are relevant to the task.
Use custom instructions for persistent rules. Rules you add in custom instructions are included in every request, so you don't lose them when the conversation is summarized.
Examples
The following examples show how adding context improves results:
Vague prompt (no context):
How does authentication work?
The model has no way to know which project you mean and gives a generic answer about authentication patterns.
Prompt with explicit context:
How does authentication work for this project?
The model reads your actual authentication files and explains how your implementation works, referencing specific functions and configuration values.
Prompt with web context:
Migrate the auth module to the latest passport.js API #fetch https://www.passportjs.org/concepts/authentication/
The model uses the current documentation from the web to guide the migration, avoiding outdated API patterns from its training data.
Learn more about adding context to chat.
Related resources
Language models
Add context to chat
Context engineering guide
Diagnose prompt caching with the Cache Explorer
Workspace indexing
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

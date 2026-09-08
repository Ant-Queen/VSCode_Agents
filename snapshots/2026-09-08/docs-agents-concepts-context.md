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
On this page there are 8 sectionsOn this page
Why context matters
How VS Code assembles context
Workspace indexing
Implicit context
Explicit context
Context window and compaction
Working effectively with context
Related resources
Context
Context is the information available to an AI agent and its language model while they work on your request. It can include conversation history, files from your workspace, tool outputs, custom instructions, and references you add to your prompt.
The language model reasons over this information to decide what to say or do next. The agent can use tools to gather more context, take actions, and evaluate the results. This article explains how VS Code assembles and discovers context, and how to work within context window limits.
Why context matters
A prompt with relevant files, clear instructions, and focused history produces better results than a vague prompt with no context. The language model can only reason over information included in its current context.
You don't need to identify every relevant file before you start. During the agent loop, the agent can search your workspace, read files, run commands, and add the results to the context for its next step. Explicit references are useful when you already know which information the agent should consider.
Conversation history is scoped to its session and isn't automatically available in a different session. Information carries across sessions only through persistent sources, such as custom instructions or agent memory.
How VS Code assembles context
Each time the agent sends a request to the language model, VS Code assembles a prompt from multiple sources:
System instructions: built-in guidelines that define the agent's behavior.
Customizations: AI customizations you set up, including custom agents, skills, and custom instructions.
User message: the current request or follow-up message you send to the agent.
Conversation history: the messages exchanged so far in the current session.
Implicit context: the file you're editing, your current selection, visible errors, and git state.
Explicit references: files, editor context, web content, and other sources you reference with #-mentions.
Tool outputs: results from file reads, terminal commands, codebase search results, and other tool calls during agent sessions.
The context changes as the agent works. For example, the output of a code search can lead the agent to read a file, and that file can then inform the next model request. Information that isn't included in a request is unavailable to the model, but the agent can use tools to discover and add more information.
Workspace indexing
VS Code uses a semantic index to find code by meaning rather than only by exact keywords. The index helps the agent locate relevant snippets quickly, especially in a large codebase. It doesn't add your entire workspace to every model request.
VS Code builds and maintains the index automatically. If a semantic index isn't available yet, the agent can still find context by using text search, file search, and language intelligence.
Learn more about workspace indexing.
Implicit context
VS Code uses your current activity to provide context to the prompt or suggest context you might add:
The currently selected text in the active editor.
The file name or notebook name of the active editor.
When you use the Ask agent, the contents of the active file.
When you use Agent, the active file as a suggested attachment that you can add to the context.
Implicit context reduces how much information you need to specify. If a particular source is important to the task, add it explicitly instead of relying on the agent to infer that it is relevant.
Explicit context
Add explicit context when you want to ensure that the agent considers a specific file, folder, symbol, image, web page, or other source. Type # in the chat input to choose a context item, or select Add Context (+ icon) in the chat input field.
Explicit context guides the agent toward relevant information but still counts toward the context window. Add only the sources that help the agent complete the current task. Learn more about adding context to chat.
Tip
Providing focused context up front might reduce the searches and file reads the agent needs, which can lower AI credit use. Avoid adding unrelated or large sources because they also consume context window tokens. Learn more about optimizing AI credit usage.
Context window and compaction
The context window is the maximum amount of information a language model can process in one request. The user message, conversation history, instructions, referenced files, and tool outputs all use space in this window.
When a conversation approaches the limit, VS Code automatically compacts older parts of the conversation into a summary. Compaction makes room for new information, but details from earlier messages might be summarized or omitted. You can also enter /compact in the chat input to compact the conversation manually.
Start a new session when you switch to an unrelated task. If an instruction should apply across requests or sessions, store it in custom instructions instead of relying on conversation history. Learn more about managing conversation context.
Working effectively with context
Describe the goal and constraints. Explain the outcome you want and any requirements the agent should follow.
Let the agent discover context. The agent can search your workspace and read related files as it works. You don't need to attach the entire codebase.
Reference important sources. Explicitly add files, symbols, errors, or documentation that the agent must consider.
Keep each session focused. Use a separate session for an unrelated task so that its history doesn't compete for context.
How context improves a response
Consider asking an agent to explain how authentication works in your project.
Without relevant workspace context:
How does authentication work?
The model has no way to know which project you mean and gives a generic answer about authentication patterns.
After attaching src/auth.ts to the request as context:
Explain the authentication flow and identify where tokens are validated.
The referenced file gives the agent a starting point. The agent can then search for related code and explain the implementation with specific functions and configuration values.
Related resources
Language models
Prompt examples
Context engineering guide
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

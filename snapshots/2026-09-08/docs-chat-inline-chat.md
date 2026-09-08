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
On this page there are 5 sectionsOn this page
Use editor inline chat
Use terminal inline chat
Change the model for inline chat
Use Quick Chat
Related resources
Inline chat and Quick Chat
Inline chat and Quick Chat provide lightweight ways to interact with AI without opening the full Chat view. Use inline chat to generate code or make edits directly in the editor, or to get help with shell commands in the integrated terminal. Use Quick Chat for short questions and interactions.
Use inline chat when you want to make quick, targeted edits within the visible code context. For multi-step tasks, multi-file changes, or broader codebase exploration, use the Chat view instead.
Use editor inline chat
When you use editor inline chat, your prompt is scoped to the code in the active editor. Inline chat might use the content from other files in your workspace as context for your prompt.
To use editor inline chat:
Open a file in the editor.
Open editor inline chat by using the ⌘I (Windows, Linux Ctrl+I) keyboard shortcut or by selecting Open Inline Chat from the Chat menu in the title bar.
Type your prompt in the chat input field and press Enter.
Tip
Select a block of code in the editor to scope the prompt to that code.
VS Code shows a diff with the code suggestion inline in the editor. Use Keep or Undo to accept or reject the changes.
Inline chat in active editing sessions
When a file belongs to an active chat editing session, pressing ⌘I (Windows, Linux Ctrl+I) opens "Ask in Chat" in the Chat view instead of regular inline chat. This routes your prompt into the existing session so it can use the full conversation context. The editor context menu also shows Ask in Chat instead of Open Inline Chat for these files.
To always use regular inline chat, even for files that belong to a chat session, set
inlineChat.askInChat
Open in VS Code
Open in VS Code Insiders
to false.
On files that don't belong to any chat session, ⌘I (Windows, Linux Ctrl+I) always opens regular inline chat, regardless of this setting.
Show a visual hint on text selection (Experimental)
When you select text in the editor, VS Code can display a visual hint to help you start inline chat for the selected code. Use the
inlineChat.affordance
Open in VS Code
Open in VS Code Insiders
setting to control how this hint appears:
off: no hint is shown when you select text
gutter: the hint appears in the line number area next to your selection
editor: the hint appears at the cursor position within your selection, integrated with the lightbulb for code actions
The hint displays an inline chat input box and actions for adding the selection to chat, explaining the code, and starting a code review of the selection.
Note
This feature is experimental and works with the
inlineChat.renderMode
Open in VS Code
Open in VS Code Insiders
setting set to hover.
Use terminal inline chat
You can bring up terminal inline chat in the integrated terminal to get help with shell commands or ask terminal-related questions.
To use terminal inline chat:
Open the terminal in VS Code by selecting the View > Terminal menu item or using the ⌃` (Windows, Linux Ctrl+`) keyboard shortcut.
Start terminal inline chat by using the ⌘I (Windows, Linux Ctrl+I) keyboard shortcut or running the Terminal Inline Chat command in the Command Palette.
Type your prompt in the chat input field and press Enter.
Review the response and select the Run (⌘Enter (Windows, Linux Ctrl+Enter)) to run the command in the terminal
Alternatively, select Insert (⌥Enter (Windows, Linux Alt+Enter)) to insert the command into the terminal and modify it before running.
Change the model for inline chat
You can change the language model that is used for editor inline chat. To configure the default model for inline chat, use the
inlineChat.defaultModel
Open in VS Code
Open in VS Code Insiders
setting. The setting lists all available models from the model picker.
If you change the model during an inline chat session, the selection persists for the remainder of the session. After you reload VS Code, the model resets to the value specified in the
inlineChat.defaultModel
Open in VS Code
Open in VS Code Insiders
setting.
Learn more about choosing the right model for your task.
Use Quick Chat
Quick Chat provides a lightweight chat panel that opens at the top of the editor. Use it for quick questions and short interactions without opening the full Chat view or leaving your current workflow.
Note
Quick Chat in the editor window differs from quick chats in the Agents window, which are workspace-free conversations that appear in the sessions list.
To open Quick Chat, press ⇧⌥⌘L (Windows, Linux Ctrl+Shift+Alt+L) or select Quick Chat from the Chat menu in the title bar.
Type your prompt and press Enter to get a response. Quick Chat supports the same #-mentions and @-mentions as the Chat view for adding context. Select the Open in Chat view button to continue the conversation in the full Chat view.
Related resources
Use chat in VS Code
Add context to your chat prompt
Review AI-generated code edits
AI language models in VS Code
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

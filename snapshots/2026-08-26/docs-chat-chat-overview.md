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
On this page there are 15 sectionsOn this page
Ways to chat in VS Code
Send a chat request
Run terminal commands from chat
Send messages while a request is running
Add context to your prompts
Image carousel (Experimental)
Review and manage changes
Get notified about chat responses
Show request and completion timestamps
Find text in a chat session
Navigate between prompts in a chat session
Get better responses
Troubleshoot chat interactions
Support
Related resources
Related
Get started with agents
Follow a hands-on tutorial to build an app with AI agents in VS Code.
Start agentic coding tutorial
Use chat in VS Code
Chat in Visual Studio Code lets you use natural language for interacting with AI agents. Ask questions about your code, get help understanding complex logic, generate new features, fix bugs, and more, all through a conversational interface.
This article describes the mechanics of how to interact with chat: how to send a request, add context, choose a language model, write effective prompts, and review AI-generated changes. These mechanics apply to all chat surfaces in VS Code. For an overview of what agents can do and how to configure a session, see Build with agents in VS Code.
Ways to chat in VS Code
VS Code gives you two main surfaces for working with agents, plus lightweight options for quick interactions. You can choose the experience that best fits your current task and workflow, and switch between them as needed.
Name
Description
How to open
Agents window
A dedicated, agent-first window for orchestrating tasks across multiple projects. Focus on high-level tasks and outcomes.
Select Open in Agents in the VS Code title bar
Use the Chat: Open Agents Window command
Run code --agents
Chat view
A code-first experience running in the editor sidebar, to assist you with coding tasks in your workspace.
Select the chat icon in the VS Code title bar
Use the Chat: Open Chat command
Press ⌃⌘I (Windows, Linux Ctrl+Alt+I)
Inline chat
Quick, in-place code edits or terminal suggestions.
Press ⌘I (Windows, Linux Ctrl+I)
Quick Chat
A lightweight chat panel at the top of the editor.
Press ⇧⌥⌘L (Windows, Linux Ctrl+Shift+Alt+L)
Send a chat request
Type your message in the chat input box and press Enter or select the Send button. The agent analyzes your code, makes the changes, and responds with a summary. You can then continue the conversation with follow-up messages. For example, you might start with a request like:
Add input validation to the signup form
To give extra project-specific context, you can add context to your prompt by referencing files, symbols, or other information with #-mentions.
For common tasks, you can use slash commands as shortcuts for frequently used prompts or to invoke agent skills. Type / in the chat input to see all available commands.
You can run multiple sessions in parallel and switch between them without losing context. Learn more in Manage agent sessions.
Each session has configuration options that shape how the agent responds, such as the agent harness, agent role, permission level, and language model. Learn how to choose an agent harness.
Tip
To get the best results, be specific about what you want, provide relevant context, and write clear instructions. For more information, see Get better responses.
Run terminal commands from chat
Start a message with ! to run a terminal command directly from the Chat view or Agents window. The ! must be the first character and must be followed by a command.
For example, enter the following message to run your tests:
!npm test
The command runs immediately in the session's default shell, without sending the message to the agent or asking for approval. It uses the session folder or worktree as the working directory. The command output and exit status appear in the chat transcript.
Note
The ! command is only available in Agent Host sessions.
Send messages while a request is running
You don't have to wait for a response to finish before sending your next message. While a request is in progress, the Send button changes to a dropdown that gives you three options for how to handle the new message.
Add to Queue: your message waits and sends automatically after the current response completes. The current response finishes uninterrupted.
Steer with Message: signals the current request to yield after finishing the current tool execution. The current response stops and your new message processes immediately. Use this to redirect the agent when it's heading in the wrong direction.
Stop and Send: cancels the current request entirely and sends your new message right away.
The default action for the Send button is configurable. Use
chat.requestQueuing.defaultAction
Open in VS Code
Open in VS Code Insiders
to set it to steer (default) or queue.
Reorder pending messages
When you have multiple pending messages (queued or steering), you can drag and drop them to change the order in which they are processed. A drag handle appears on hover when more than one message of the same type is pending.
Add context to your prompts
Providing the right context helps the AI generate more relevant and accurate responses.
Implicit context: VS Code automatically includes the active file, your current selection, and the file name as context. When you use agents, the agent decides autonomously if additional context is needed.
#-mentions: type # in the chat input to explicitly reference files (#file), folders, symbols, your codebase (#codebase), terminal output (#terminalSelection), or tools like #fetch.
Vision: attach images, such as screenshots or UI mockups, as context for your prompt.
Browser elements: select elements from the integrated browser to add HTML, CSS, and screenshot context to your prompt.
Learn more about managing context for AI.
Image carousel (Experimental)
When
imageCarousel.chat.enabled
Open in VS Code
Open in VS Code Insiders
is enabled, you can select images or videos in chat responses to open a dedicated carousel view. Media files from tool results (such as the integrated browser, Playwright, or other MCP servers) and inlined in assistant messages are all accessible from the carousel.
Review and manage changes
After the AI changes your files, review and validate the result before you commit or integrate it.
Review diffs: select a changed file in the agent's response or use the Changes panel in the Agents window. To show a changed-files summary after each request in the Chat view, set
chat.checkpoints.showFileChanges
Open in VS Code
Open in VS Code Insiders
to true.
Request revisions: send a follow-up prompt, leave feedback in the Agents window diff editor, or edit the files directly.
Use checkpoints: restore an earlier snapshot to revert a request and all later file changes. For more information, see checkpoints and editing requests.
Integrate the result: commit folder changes with Source Control, or apply or merge changes from an isolated worktree.
For more information, see reviewing AI-generated code edits.
Get notified about chat responses
When you're working in another window or application, VS Code can send you OS notifications to let you know about important chat events, so you don't have to keep checking back.
Use
chat.notifyWindowOnResponseReceived
Open in VS Code
Open in VS Code Insiders
to configure when you receive an OS notification when a chat response is received. The notification includes a preview of the response, and selecting it brings focus to the chat session.
Use
chat.notifyWindowOnConfirmation
Open in VS Code
Open in VS Code Insiders
to configure when you receive an OS notification when the agent needs your input or confirmation to continue.
Both settings have three possible values:
off: never show notifications
windowNotFocused (default): show notifications only when the VS Code window is not focused
always: show notifications even when the VS Code window is in focus
Tip
Set the value to always if you want to stay aware of chat activity while working in other parts of VS Code, such as when running long agent tasks in the background.
Show request and completion timestamps
Chat can show timestamps for when you send a request and when a response completes. Hover over a completion timestamp to see elapsed response time.
Use
chat.verbose
Open in VS Code
Open in VS Code Insiders
to enable or disable these timestamps.
Find text in a chat session
Press ⌘F (Windows, Linux Ctrl+F) to search the entire conversation. Find is available in the Chat view, chat editor tabs, and the Agents window. It searches prompts and responses, including off-screen content and code blocks.
Use Enter and ⇧Enter (Windows, Linux Shift+Enter) to navigate between matches. When a match is inside a collapsed Completed N steps section, navigating to the match expands the section. Use the Match Case, Whole Word, and Regular Expression options to refine the results.
Note
Find is not available in Quick Chat or inline chat. It does not search text inside tool pills or collapsed reasoning.
Navigate between prompts in a chat session
Use the following keyboard shortcuts to navigate between prompts in a chat session:
⌥⌘↑ (Windows, Linux Ctrl+Alt+Up): Go to the previous prompt in the chat session.
⌥⌘↓ (Windows, Linux Ctrl+Alt+Down): Go to the next prompt in the chat session.
⌥⌘PageUp (Windows, Linux Ctrl+Alt+PageUp): Go to the previous code block in the chat session.
⌥⌘PageDown (Windows, Linux Ctrl+Alt+PageDown): Go to the next code block in the chat session.
Get better responses
Chat provides several ways to improve the quality and relevance of AI responses:
Write effective prompts: be specific about what you want, reference relevant files and symbols, and use / commands for common tasks. Get inspired by prompt examples or review the full prompt engineering guide.
Customize the AI: tailor the AI's behavior to your project by adding custom instructions, creating reusable prompt files, or building custom agents for specialized workflows. For example, create a "Code Reviewer" agent that provides feedback on code quality and adherence to your team's coding standards.
Extend with tools: connect MCP servers or install extensions that contribute tools to give the agent access to external services, databases, or APIs.
For more information, see Customize agent behavior in VS Code.
Troubleshoot chat interactions
Use Agent Logs and the Chat Debug view to inspect what happens when you send a prompt. Agent Logs shows a chronological event log of tool calls, LLM requests, and prompt file discovery. The Chat Debug view shows the raw system prompt, user prompt, context, and tool payloads for each interaction. These tools are useful for understanding why the AI responded in a certain way or for troubleshooting unexpected results.
Support
Support for GitHub Copilot Chat is provided by GitHub and can be reached at https://support.github.com.
To learn more about Copilot's security, privacy, compliance, and transparency, see the GitHub Copilot Trust Center FAQ.
Related resources
Create and manage agent sessions
Choose agents and configure permissions
Prompt examples
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

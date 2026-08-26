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
Select tools for a request
Use tools in your prompts
Use built-in browser tools
Edit tool parameters
Run terminal commands
Frequently asked questions
Related resources
Related
Try tools in action
Launch a chat prompt that uses the web tool to summarize the latest VS Code updates.
Open in VS Code
Stable
Insiders
Use tools with agents
Tools extend agents in Visual Studio Code with specialized functionality for accomplishing specific tasks like searching code, running commands, fetching web content, or invoking APIs. VS Code supports three types of tools: built-in tools, Model Context Protocol (MCP) tools, and extension tools.
For background on tool types and how tools work in the agent loop, see Tools concepts.
This article describes how to use tools in your prompts and manage tool invocations. To control how the agent requests approval for tool calls and how much autonomy it has, see Manage approvals and permissions.
Select tools for a request
Use the tools picker in the Chat view to select which tools are available for a request. Add more tools by installing MCP servers or extensions that contribute tools.
Note
The tools picker applies to the local agent. For the Copilot harness, manage tool availability with the profile-wide Tools customization page instead.
Tip
Select only the tools that are relevant for your prompt to improve your results.
To access the tools picker:
Open the Chat view and select Agent from the agent picker.
Select the Configure Tools button in the chat input field.
Select or deselect tools to control which ones are available for the current request.
Use the search box to filter the list of tools.
When you customize chat with prompt files or custom agents, you can specify which tools are available for a given prompt or mode. Learn more about the tool list priority order.
Use tools in your prompts
When using agents, the agent automatically determines which tools to use from the enabled tools based on your prompt and the context of your request. The agent autonomously chooses and invokes relevant tools as needed to accomplish the task.
You can also explicitly reference tools in your prompts by typing # followed by the tool name. This is useful when you want to ensure a specific tool is used. Type # in the chat input field to see a list of available tools, including built-in tools, MCP tools from installed servers, extension tools, and tool sets.
Examples of explicit tool references:
"What is the latest version of Node.js #web"
"How does routing work in Next.js? #web"
"Fix the issues in #problems"
"Explain the authentication flow #codebase"
Tip
By default, tool call details are collapsed in the chat conversation. You can expand them by selecting the tool summary line in chat, or change grouping behavior with
chat.agent.thinking.collapsedTools
Open in VS Code
Open in VS Code Insiders
(experimental): use off to keep tool calls separate, withThinking to group with thinking when available, or always to always group. When
chat.agent.thinkingStyle
Open in VS Code
Open in VS Code Insiders
is collapsed, reasoning and grouped tool calls can appear in separate collapsible sections.
To group related tools and reuse them across prompts, prompt files, and custom agents, create a tool set.
Use built-in browser tools
Browser tools give agents an interactive way to validate web applications. Instead of inspecting only the source code, an agent can run your app, open it in the integrated browser, exercise a user flow, inspect page content and console errors, and fix problems it discovers.
Browser tools are built into VS Code and don't require an external MCP server. Use them when a task has an observable result in a web interface, such as verifying a form, reproducing a visual bug, checking responsive behavior, or testing a complete user journey.
Start the app, open it in the browser, and test the password reset flow.
Fix any issues you find and repeat the flow to verify the fix.
Learn how to use browser tools with agents, including browser sessions, page sharing, privacy controls, and effective prompting patterns.
Edit tool parameters
You can review and edit the input parameters before a tool runs:
When the tool confirmation dialog appears, select the chevron next to the tool name to expand its details.
Edit any tool input parameters as needed.
Select Allow to run the tool with the modified parameters.
Run terminal commands
Of all the built-in tools, the terminal tool is one of the most frequently used. The agent uses it to run commands as part of its workflow, for example to install dependencies, run a build, or execute tests. Because terminal commands can change your environment, VS Code provides additional controls for reviewing, running, and monitoring them, building on the approval behavior described earlier.
When the agent decides to run a command, it uses the built-in terminal tool to execute it in an integrated terminal within VS Code.
In the chat conversation, the agent displays the commands it ran. You can view the output of the command inline in chat by selecting Show Output (>) next to the command. You can also view the full output in the integrated terminal by selecting Show Terminal.
Use the experimental
chat.tools.terminal.outputLocation
Open in VS Code
Open in VS Code Insiders
setting to configure where terminal command output appears: inline in chat, or directly in the integrated terminal.
Continue terminal commands in background
When the agent runs a long-running terminal command, such as starting a development server or running a build in watch mode, you can push the command to the background. This allows the agent to continue with other tasks without waiting for the command to finish.
While a command is running, a Continue in Background button appears next to the terminal command in the chat conversation. Select this button to move the command to the background. The command continues running, and the agent can check its output later or use the terminal for other tasks.
The agent can also specify a timeout when running terminal commands. When the timeout is reached, the agent stops waiting for the command and returns the output collected so far. Use the
chat.tools.terminal.enforceTimeoutFromModel
Open in VS Code
Open in VS Code Insiders
setting to control whether to enforce the timeout value that the agent specifies.
The agent can also choose to run commands directly in the background, without user interaction. Background terminals that you have not revealed are automatically cleaned up when their command finishes, which prevents stale terminals from accumulating over a long session. To reveal a background terminal and keep it open after the command completes, select the Show link in the chat tool invocation header. The terminal output remains visible in the chat conversation even after a terminal is cleaned up.
Tip
To automatically approve terminal commands or restrict file system and network access for agent commands, see Manage approvals and permissions.
Frequently asked questions
How do I know which tools are available?
Type # in the chat input field to see a list of all available tools. You can also use the tools picker in chat to view and manage the list of active tools.
I'm getting an error that says "Cannot have more than 128 tools per request."
A chat request can have a maximum of 128 tools enabled at a time. If you see an error about exceeding 128 tools per request:
Open the tools picker in the Chat view and deselect some tools or entire MCP servers to reduce the count.
Alternatively, enable virtual tools with the
github.copilot.chat.virtualTools.threshold
Open in VS Code
Open in VS Code Insiders
setting to automatically manage large tool sets.
Why isn't the agent using my configured terminal shell?
The agent uses the shell you have configured as the default for the terminal, except for cmd (Command Prompt) on Windows and sh on macOS/Linux. This is because shell integration is not supported with these shells, which means the agent has very limited visibility into what's going on inside the terminal. Instead of getting direct signals for when commands are being run or have finished running, the agent needs to rely on timeouts and watching for the terminal to idle to continue. This leads to a slow and flaky experience.
You can still configure the agent to use these shells with the terminal profile settings, however this will result in an inferior experience compared to using PowerShell on Windows or bash/zsh on macOS/Linux.
chat.tools.terminal.terminalProfile.windows
Open in VS Code
Open in VS Code Insiders
- Override the shell on Windows
chat.tools.terminal.terminalProfile.osx
Open in VS Code
Open in VS Code Insiders
- Override the shell on macOS
chat.tools.terminal.terminalProfile.linux
Open in VS Code
Open in VS Code Insiders
- Override the shell on Linux
Can I create my own tools?
Yes. You can create tools in two ways:
Develop a VS Code extension that contributes tools using the Language Model Tools API
Create an MCP server that provides tools. See the MCP developer guide
Related resources
Chat tools reference
Create and use tool sets
Manage tools for the Copilot harness
Agent hooks - Execute custom commands at tool lifecycle events
Security considerations for using AI in VS Code
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

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
Compare agent harnesses
Select an agent harness
Choose code isolation
Configure an agent harness
Hand off a session
Related resources
Choose and use an agent harness
Visual Studio Code supports multiple agent harnesses: Local, GitHub Copilot, Anthropic Claude, OpenAI Codex, and Cloud. An agent harness coordinates an agent session, including tool calls, context, and code changes. Use the Session Target control to choose a harness and where it runs. This article helps you compare, configure, and switch between harnesses.
For the relationship between harnesses, language models, agent roles, and execution environments, see Agent harnesses.
Compare agent harnesses
Most harnesses share the same chat and session-management experience in VS Code. Your choice primarily affects where the agent runs, which tools and models it can use, and how it applies code changes.
Agent harness
Where it runs
Code access
Choose it for
Local
In the VS Code extension host on your machine
Current workspace
Interactive work that needs VS Code tools, extension tools, or any model configured in VS Code
Copilot
On the Agent Host on your machine
Current folder or an isolated Git worktree
General coding tasks with the Copilot SDK and Copilot-specific capabilities
Claude
On your machine
Current folder or an isolated Git worktree
Anthropic's agent capabilities, slash commands, and permission modes
Codex
On your machine
Current folder or an isolated Git worktree
OpenAI's Codex capabilities for interactive or background work
Cloud
On the provider's remote infrastructure
A GitHub repository and pull request
Well-scoped tasks that can run independently and benefit from team review
Select an agent harness
You can select an agent harness when you start a new session in the Chat view or the Agents window. When you change the agent harness for an ongoing session, VS Code considers this a handoff and carries the conversation history and context to the new harness.
The Session Target control only lists harnesses that are available in the current window. If your preferred harness is not listed, review its prerequisites in Configure an agent harness.
To select an agent harness:
Open the Chat view (⌃⌘I (Windows, Linux Ctrl+Alt+I)) or Agents window
Select New Chat (+)
Open the Session Target control and choose from the available agent harnesses.
Depending on the selected harness, other options for language model, isolation mode, or custom agents are available.
Learn more about creating and managing sessions.
Choose code isolation
Note
The code isolation option (worktree/folder) is only available in Agents window.
AI agents can apply code changes to your workspace. To isolate code changes and avoid conflicts with your active workspace, you can choose to run sessions in a new Git worktree. When you choose the local agent harness, changes are always applied in the active workspace.
Choice
Choose it for
Considerations
New Worktree
Parallel tasks that should not modify your active workspace
Starts from committed Git state and requires you to integrate the result
Folder
Small, interactive tasks that should use your current files and uncommitted changes
Agent edits appear immediately in your active workspace
When you start a session in the Agents window, select New Worktree and choose the base branch to isolate the session. If you leave New Worktree unselected, the agent works directly on the code in the workspace. Sessions that you start in the Chat view always use the current workspace.
Worktree isolation requires a Git repository with at least one commit. A new worktree contains the committed files from the selected base branch. It does not automatically contain uncommitted tracked changes or untracked files from your primary worktree. Commit changes that the agent needs, or use folder isolation when the task depends on your current uncommitted state.
Git-ignored files, such as .env files and installed dependencies, are also absent by default. Use
git.worktreeIncludeFiles
Open in VS Code
Open in VS Code Insiders
to specify ignored files and folders that VS Code should copy into new worktrees. Learn more about including files in a worktree.
Worktree sessions use Bypass Approvals because their code changes are separate from your active workspace. Folder sessions offer the permission levels supported by the selected harness. Worktree isolation does not restrict commands, network access, or access outside the worktree. For those protections, configure agent sandboxing.
Configure an agent harness
Expand a harness to review its setup and capabilities.
Local
The Local harness runs interactively in the VS Code extension host and works directly in your active workspace. It can use VS Code built-in tools, extension-provided tools, MCP servers, and the models configured in VS Code, including bring your own key models.
Choose Local for interactive tasks that need immediate feedback or access to editor context, such as diagnostics, test results, terminal output, or selections.
Choose a built-in agent role
Local sessions provide these built-in agent roles:
Ask: asks questions and provides guidance without making changes to the code.
Agent: autonomously plans and performs complex coding tasks, edits files, runs commands, and iterates on results.
Plan: researches a task and creates a structured implementation plan before code changes. Learn more about planning with agents.
You can switch roles during a session from the agent picker.
Copilot
The Copilot harness is powered by the Copilot SDK and runs locally on your machine in the Agent Host. The Agent Host owns the session independently of the window that displays it, letting you pick up your session from the sessions list in another window or even in the browser.
Setup and authentication
Copilot sessions use the same GitHub authentication context as chat in VS Code. If you use a GitHub Enterprise account for Copilot, the session uses that account. For managed user accounts on GHE.com, complete the setup in Using GitHub Copilot with an account on GHE.com.
Permissions and approvals
The available permission levels depend on the isolation mode:
Worktree: the permission level is Bypass Approvals and can't be changed.
Folder: select Default Approvals or Bypass Approvals from the permissions picker. To also use Assisted permissions, turn on
chat.assistedPermissions.enabled
Open in VS Code
Open in VS Code Insiders
.
Because Copilot sessions run on the Agent Host, Autopilot is an agent mode rather than a permission level.
Provider-specific capabilities
Slash commands: enter / in the chat input to view the slash commands available in a Copilot session. For example, use /compact to reduce conversation context or /yolo and /autoApprove to control automatic tool approval.
Remote control: enter "/remote on" to monitor and steer a running Copilot session from GitHub.com or the GitHub Mobile app. Session history, tool activity, status, approvals, and questions stay synchronized. Remote control requires GitHub authentication and a workspace that maps to a GitHub repository. Enter "/remote off" to stop sharing the session.
Research agent (Preview): in VS Code Insiders, enter /research <topic> to produce a detailed Markdown report with citations from your codebase, relevant GitHub repositories, and the web. For research that feeds into an implementation plan, use the Plan agent. For focused research that returns results to the current conversation, use subagents.
Terminal integration: open the GitHub Copilot CLI terminal profile, run Chat: New Copilot CLI Session from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)), or enter copilot in an integrated terminal. VS Code adds the session to the sessions list. To continue an existing Copilot session from the terminal, right-click it and select Resume in Terminal.
Limitations
Copilot sessions don't have access to every VS Code built-in or extension-provided tool. Enabled client-side tools are available to the agent only while VS Code is connected to the session, and you manage which tools are enabled from Manage tools for the Copilot harness. Copilot sessions can currently access only local MCP servers that don't require authentication.
Claude
Claude sessions use Anthropic's Claude Agent SDK and can run autonomously on your workspace. VS Code integrates the harness through its SDK while keeping session management, chat, and code review in VS Code.
Setup and authentication
Claude support is enabled by default. Turn it on or off with
github.copilot.chat.claudeAgent.enabled
Open in VS Code
Open in VS Code Insiders
.
Claude supports two authentication and billing options:
GitHub Copilot subscription: sign in to GitHub to use Copilot-routed models. Usage is billed through your Copilot subscription.
Anthropic credentials: use an Anthropic API key or Claude Code OAuth token. Usage is billed by Anthropic.
When both authentication methods are available, the model picker groups models by Anthropic and Copilot. The model you select determines the provider and billing method for the next turn. You can switch between Anthropic-native and Copilot-routed models in an existing Claude session.
To use Claude without signing in to GitHub (Experimental), set ANTHROPIC_API_KEY in your environment or in the env object in ~/.claude/settings.json. Alternatively, set CLAUDE_CODE_OAUTH_TOKEN to a token created with claude setup-token. Learn more about Claude Code authentication.
Enable
chat.agentHost.allowSignedOutWhenUsable
Open in VS Code
Open in VS Code Insiders
to open the Agents window while signed out of GitHub. The model picker only shows Anthropic-native models until you sign in. After you sign in to GitHub, Copilot-routed models are also available.
Permissions and approvals
Claude supports these permission modes:
Edit automatically: apply changes without asking for approval.
Request approval: ask before applying changes.
Plan: outline the approach before implementation.
Caution
The
github.copilot.chat.claudeAgent.allowDangerouslySkipPermissions
Open in VS Code
Open in VS Code Insiders
setting bypasses all permission checks. Use it only in an isolated sandbox environment without internet access.
Provider-specific capabilities
Enter / in the chat input to view commands for managing Claude-native agents, hooks, memory files, and code review. Learn more about Claude subagents and Claude hooks.
Codex
The Codex harness uses OpenAI Codex for interactive and background coding tasks. It runs through the OpenAI Codex extension or, experimentally, on the Agent Host. VS Code provides session management, chat, and code review for both integrations.
Setup and authentication
Codex is not listed by default. Complete one of these options before you select it. You don't need both:
Use the OpenAI Codex extension in the Chat view: install and enable the OpenAI Codex extension.
Use Codex on Agent Host in the Agents window (Experimental): enable
chat.agentHost.codexAgent.enabled
Open in VS Code
Open in VS Code Insiders
.
To use the Agent Host implementation in the Chat view, also enable
chat.editor.codex.preferAgentHost
Open in VS Code
Open in VS Code Insiders
.
On the Agent Host, Codex supports two authentication and subscription options:
GitHub Copilot subscription: sign in to GitHub to use Copilot-backed models. This option requires Copilot Pro+.
ChatGPT subscription: open the account menu and select Sign in to ChatGPT. A free ChatGPT account is sufficient.
When both accounts are signed in, the model picker groups models by Copilot and ChatGPT. Your selection determines which subscription is used, and VS Code saves that provider with the session.
To use Codex without signing in to GitHub (Experimental), sign in to ChatGPT and enable
chat.agentHost.allowSignedOutWhenUsable
Open in VS Code
Open in VS Code Insiders
. The desktop Agents window then shows ChatGPT-backed models while signed out. Copilot-backed models prompt you to sign in to GitHub, and the browser-based Agents window still requires GitHub sign-in.
Permissions and approvals
On the Agent Host, Codex provides these approval presets:
Default Permissions: read and edit workspace files and run routine local commands. Codex asks before using the internet or accessing resources outside the workspace.
Auto-Review: use the same workspace access as Default Permissions, but send approval requests to an automatic reviewer instead of prompting you.
Full Access: edit files outside the workspace and use the internet without asking.
Caution
Full Access gives Codex unrestricted disk and network access. Use it only when you intend to give the agent full access to your machine.
Cloud
The Cloud harness runs on remote infrastructure and works with a GitHub repository. The agent implements the task on a branch and opens a pull request for review. Choose Cloud for well-scoped tasks that can run without access to your local editor context, terminal output, or extension-provided tools.
VS Code supports:
Copilot cloud agent for implementing features, addressing review feedback, and creating pull requests.
Claude and Codex cloud agents for provider-specific capabilities. Third-party cloud agents are currently in preview.
To use Claude or Codex in the cloud, turn on support in your Copilot account settings. See Managing policies for third-party cloud agents. You don't need the provider's VS Code extension for a cloud session.
Start a cloud session
Open the Chat view and select New Chat.
Select Cloud from the Session Target control.
Choose the cloud provider and, when available, a custom agent and model.
Enter a prompt and submit it.
The session runs remotely and appears in the sessions list. Sessions that you create by assigning an issue or pull request to a cloud agent on GitHub.com also appear in VS Code.
You can also select a GitHub repository when you start a session in the Agents window, or hand off an existing session to the Cloud harness. In a Copilot session, enter /delegate to continue the task in the cloud.
Cloud sessions use the tools, MCP servers, and models configured by the cloud service. They can't access VS Code built-in tools or local runtime context.
Hand off a session
Handoff changes the harness or execution environment for an ongoing session and carries the conversation history and context with it. Use handoff when another harness or execution environment is a better fit for the next part of the task.
For example, continue a Copilot session with Claude or Codex to use provider-specific capabilities, send a well-scoped task to the Cloud harness for a pull request workflow, or move from the Plan agent to an implementation agent.
To hand off an ongoing session:
Open the session.
In the chat input, open the Session Target dropdown.
Select the target harness that should continue the work, such as Copilot, Claude, Codex, or Cloud.
VS Code carries the conversation history and context to the selected harness. The tools, permissions, and models might change because each harness or execution environment provides different capabilities.
Tip
In Copilot CLI, enter /delegate to continue the work with a cloud agent.
Handoff compared to related actions
Action
What it does
Hand off
Changes the harness or execution environment and carries the conversation history and context with it.
Fork a session
Creates an independent session from a point in the conversation. Learn more about forking sessions.
Switch surfaces
Opens the same session in the Chat view or Agents window without changing its harness or context.
For background on how handoff works, see Sessions and handoff.
Related resources
Agent harness concepts
Manage agent sessions
Approvals and permissions
Agent Host architecture
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

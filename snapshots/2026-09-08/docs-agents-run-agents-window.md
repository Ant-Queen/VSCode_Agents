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
On this page there are 12 sectionsOn this page
Why use the Agents window?
Prerequisites
Open the Agents window
Agents window interface overview
Understand the active session
Start an agent session
Start a quick chat
Review and finish an agent session
Work with multiple sessions
Customize and configure the Agents window
Limitations
Next steps
Related
Get started with agents
Follow a hands-on tutorial to build an app with AI agents in VS Code.
Start agentic coding tutorial
Use the Agents window (Preview)
The Agents window is a dedicated Visual Studio Code window focused on chat as the primary interface. It works across all your workspaces from one window, so you can assign high-level tasks, evaluate the outcomes, and run and track multiple agents in parallel. The Agents window is optimized for agent-first workflows.
In this article, you learn how to open the Agents window and start, monitor, review, and finish agent sessions across your projects.
-->
Note
The Agents window is currently in preview. Share feedback by filing an issue on GitHub, or browse existing Agents window issues.
Why use the Agents window?
Orchestrate work across projects from one place: manage sessions for all your workspaces without opening each one in a separate window, so you can assign and track work across projects at the same time.
Work agent-first, not code-first: describe the outcome you want in high-level requirements and let the agent figure out the implementation, rather than framing prompts around specific code changes.
Switch freely between surfaces: move to the Chat view whenever you want to get closer to the code. Both surfaces share the same sessions, settings, and keybindings, so you never lose context.
For help choosing between the Agents window and the Chat view, see Choose how you work with agents. For chat mechanics that apply to both surfaces, see Use chat in VS Code and Review AI-generated code edits.
Prerequisites
Visual Studio Code installed. Download VS Code.
One of the following authentication options:
Access to GitHub Copilot. Follow the steps in Set up GitHub Copilot in VS Code to sign in and activate your subscription.
An existing Claude configuration for the experimental signed-out experience.
An existing ChatGPT sign-in for Codex for the experimental signed-out experience.
Open the Agents window
The Agents window opens as a dedicated VS Code window alongside your main editor window. To open the Agents window, use one of the following methods:
Select the Open in Agents button in the VS Code title bar
Run the Chat: Open Agents window command from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P))
Select Try out the new Agents window link from the VS Code welcome page
Run code --agents from the command line.
Open https://insiders.vscode.dev/agents in a browser to use the Agents window from any device. See remote agent sessions for setup instructions.
By default, the Agents window requires GitHub authentication to access your Copilot subscription and sessions. If you're already signed in to GitHub in VS Code, you'll also be signed in when the Agents window opens.
Note
You can hide the Open in Agents button by right-clicking it in the title bar and selecting Hide 'Open in Agents'. You can still open the Agents window at any time from the Command Palette or command line.
Open without GitHub sign-in (Experimental)
On desktop, you can open the Agents window without signing in to GitHub if Claude is configured with Anthropic credentials or Codex is signed in to ChatGPT. Enable
chat.agentHost.allowSignedOutWhenUsable
Open in VS Code
Open in VS Code Insiders
before you open the window. This setting is off by default, but it might be enabled by an experiment.
To use a ChatGPT subscription, enable
chat.agentHost.codexAgent.enabled
Open in VS Code
Open in VS Code Insiders
, open the account menu in the Agents window, and select Sign in to ChatGPT. After you sign in, you can sign out of GitHub and continue to use ChatGPT-backed Codex models.
While you're signed out of GitHub, the model picker only shows models from providers with available credentials. Sign in to GitHub from the account menu to add Copilot-backed models. If both Copilot and ChatGPT provide a model with the same name, the model picker identifies the provider.
When VS Code discovers an existing Claude configuration, a notification indicates that Claude is available without GitHub sign-in. Dismiss the notification with X to hide it for the current window. Select Don't Show Again to hide it for future windows on the same machine.
If VS Code doesn't find a provider that can run with its own credentials, the Agents window shows the existing GitHub sign-in experience. Providers, models, and operations that require GitHub authentication prompt you to sign in when you select them. The browser-based Agents window always requires GitHub sign-in.
Agents window interface overview
The Agents window has the following main areas:
Sessions list: view and manage sessions across workspaces. By default, sessions are grouped by workspace. Select a session to make it active.
Customizations panel: access agent customizations for your workflow and preferences
Chat area: view and interact with the active agent chat conversation
Changes panel: review changes for the active session
Files panel: browse the workspace associated with the active session
By default, the Changes and Files views appear in a separate side panel. Files and diffs open in an editor beside the chat or in a modal window.
Understand the active session
The Agents window picks up your agent sessions across your workspaces. The active session is the session that currently has focus. Its conversation and project context determine what you see and which workspace your actions apply to.
Select a session in the sessions list to open it and make it active. When you open multiple sessions side by side, select anywhere in a session view to make that session active. The active session is highlighted in the sessions list.
The following parts of the window update when the active session changes:
Area
What it shows for the active session
Chat
The conversation history and prompt input.
Files
The files in the session's workspace folder or worktree. This view includes all workspace files, not only files changed by the agent.
Changes
The changes and Git actions for the session. Use the dropdown to choose the branch changes, uncommitted changes, all changes, or changes from the last agent turn.
Terminal and Tasks
Commands and tasks that run in the session's workspace folder or worktree.
Browser
Browser tabs and page state that belong to the session.
Quick chats aren't associated with a workspace. When a quick chat is active, the workspace-specific Files and Changes views aren't shown.
Start an agent session
The Agents window lets you start a new session for any of your workspaces, including local folders, GitHub repositories, and remote workspaces. Before you send your first prompt, you can attach other folders, repositories, issues, and pull requests as context. You can also start a quick chat that isn't associated with a workspace to ask a question or run a task that doesn't belong to a specific project.
To start a new agent session in the Agents window:
Select New at the top of the sidebar or press ⌘N (Windows, Linux Ctrl+N).
To directly start a session for a specific workspace, hover over that workspace in the sessions list and select + (New Session).
Select Folder or Repository to choose the primary execution workspace for the session. The first folder or repository you select determines where the agent runs and changes files.
To connect to a workspace through SSH or a dev tunnel, select Remote Setup.
If the folder or repository isn't trusted, VS Code prompts you to trust it before starting the session. The Agents window and main VS Code window share the same trust state. Learn more about Workspace Trust.
Optionally, attach more context to the request:
Select Folder or Repository again to attach more projects. These items provide context for the request and don't become additional workspace roots.
Select Issue/PR to attach issues or pull requests from the GitHub repository associated with the primary workspace. This control appears after you select a workspace associated with a GitHub repository. You can select an item from the picker or paste a GitHub issue or pull request URL.
You can attach multiple items. Select an issue or pull request attachment to open it in the browser, or use its remove control to detach it. Attachments are preserved if you reload a draft and are included when you send the first request.
Choose an available agent harness from the dropdown, such as Copilot, Claude, or Codex.
The available harnesses depend on whether you selected a folder or repository. Learn how to choose a harness and code isolation.
Optionally, configure the agent, language model, permission level, and isolation mode.
Type a prompt that describes what you want to accomplish, and press Enter to submit it to the agent.
The agent starts working on your request and responds in the chat area. The Files and Changes views update as the agent makes changes in the session's workspace.
Tip
To start a session in the background without leaving the current session, press Alt+Enter or hold Alt and select Send. The new session appears in the sessions list after you send the prompt.
After you start a session, its row in the sessions list shows its status and change statistics. You can make another session active while the agent works, then select the session again to check its progress or respond to a request for input.
The session is also available in the main VS Code window. Learn more about creating and managing sessions.
Start a session from a pull request
For a local GitHub-backed workspace, start a session from an existing pull request to ask questions about the proposed changes or continue working on the pull request. The session includes the pull request details, changes, and comments as context. It uses an isolated Git worktree that tracks the pull request branch.
To start a session from a pull request:
In the sessions list, group sessions by workspace.
Hover over the workspace for the pull request, expand the + (New Session) action, and select New Session from Pull Request.
Select a pull request from the list.
The new session opens with the pull request title. Use the chat to ask questions about the pull request or enter a prompt to make more changes. The Changes view shows the pull request changes.
Review and validate the changes, then select Commit Changes and Sync Changes in the title bar.
Sync Changes updates the pull request branch on GitHub, so the existing pull request includes your commits.
Note
Pull requests from forks are not supported and don't appear in the pull request picker.
Start a quick chat
Quick chats are lightweight chats that aren't scoped to a workspace. Use a quick chat to ask a question or start a task that doesn't belong to a specific project. Quick chats appear in the Chats section at the top of the sessions list, separate from your workspace-scoped sessions.
To start a new quick chat in the Agents window:
Select + on the Chats section header (⌘K ⌘N (Windows, Linux Ctrl+K Ctrl+N)) or run New Quick Chat from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)).
Choose the agent harness from the dropdown.
Enter a prompt in the input box to submit it to the agent. The agent responds in the chat area.
By default, the Chats group stays visible in the sessions list even when it's empty. To hide empty default groups, set
sessions.list.showEmptyDefaultGroups
Open in VS Code
Open in VS Code Insiders
to false.
Review and finish an agent session
When the agent finishes a task, select the session active to inspect, validate, or commit its changes.
Inspect workspace files and changes
Select the session in the sessions list to make it active.
Select Files to browse the session's workspace folder or worktree and open a file.
Select Changes to see the files that changed in the active session.
Use the dropdown in the Changes view to choose the branch changes, uncommitted changes, all changes, or changes from the last agent turn.
Select a changed file to review its diff. Select a block of text in the diff to leave range-based feedback for the agent. Learn more about reviewing AI-generated code edits.
Validate changes locally
In addition to reviewing individual code changes, validate the agent's work in the active session before you commit or merge it.
Use the integrated browser
If your application involves browser-based behavior, use the integrated browser in the Agents window. Select a localhost link from the chat or terminal to open it in the integrated browser. You can also right-click a file in the Files view and select Open in Integrated Browser.
Browser tabs belong to the session in which you open them. Each session keeps its own tabs and page state when you switch sessions. If an agent opens a tab while its session isn't active, select the tab label in the chat tool call to open it.
You can also run Open Integrated Browser from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)). Use the browser layout controls to show it as a modal window or embed it alongside other views.
Create and run tasks
The Agents window supports running tasks and commands in the context of the active session. For example, run a build or tests to ensure that the agent's changes don't break your project, or start a development server to verify the changes in a running application.
To configure a task in the Agents window:
Select the session in the sessions list to make it active.
Select the Tasks dropdown in the title bar, and then select Add Task.
Provide the task details:
Name: a descriptive name for the task.
Command: the command to run when the task is executed, such as npm run build or pytest.
Run Options: automatically run the task when the session worktree is created.
Save In: save the task configuration in the workspace or your user profile.
Select Add Task.
After you configure the task, select it from the Tasks dropdown to run it in the context of the active session.
To run terminal commands, select the Open Terminal icon in the title bar. The terminal opens with its current working directory set to the active session's folder or worktree.
Commit changes
If the active session has uncommitted changes, select Commit Changes in the Changes view. VS Code generates a commit message based on the changes and commits all current changes. Depending on the session type, you might also have a Commit and Sync Changes action.
Finish a pull request with Agent Merge
Preview
Agent Merge is in preview and might change before it becomes generally available.
Agent Merge monitors the pull request associated with an agent session and asks the agent to address blockers until the pull request is ready to merge. Depending on how you configure it, Agent Merge can:
Address unresolved review threads, changes-requested reviews, and new comments from repository maintainers or the Copilot pull request reviewer.
Fix failed required CI checks.
Update a branch that is behind its base branch and resolve merge conflicts.
Merge the pull request or add it to the merge queue after the selected maintenance work is complete.
To use Agent Merge:
Enable
chat.agentMerge.enabled
Open in VS Code
Open in VS Code Insiders
.
Open a session that is associated with a pull request. To create one, follow the steps in Start a session from a pull request.
Select Agent Merge in the title bar, and then select Enable Agent Merge.
From the Agent Merge menu, configure which blockers the agent should address and whether to merge the pull request when it is ready.
You can also run Configure Agent Merge for Active Session from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)). For a complete list of options, see the Agent Merge settings.
Caution
Agent Merge starts agent turns, changes and syncs the pull request branch, and consumes model requests. Enabling it changes the session to Autopilot with Assisted permissions. Review the Agent Merge options before you enable automatic merging.
Agent Merge waits while required checks are pending and checks that the pull request is ready immediately before it merges or adds it to the merge queue. If the session starts tracking a different branch or pull request, Agent Merge turns off and requires you to enable it again.
To stop monitoring the pull request, select Agent Merge in the title bar, and then select Disable Agent Merge.
Work with multiple sessions
The sessions list shows sessions across all your workspaces. You can group sessions by workspace or time, create custom groups, pin sessions, and rearrange items with drag and drop. Learn how to organize and manage sessions.
Open multiple sessions side by side
Open multiple sessions at the same time to compare results or review work in parallel. To open a session next to the active one:
Right-click a session in the sessions list and select Open to the Side.
Drag a session from the sessions list into the view area.
Hold Alt and select a session in the sessions list.
Only one session view is active at a time. Select anywhere in a session view to make it active. The Files, Changes, Terminal, Tasks, and browser actions then apply to that session.
By default, selecting a session in the sessions list replaces the active view. Pin a session view from its toolbar to prevent it from being replaced.
When multiple sessions are open, use keyboard shortcuts to move between and manage them:
Press ⌘1 (Windows, Linux Ctrl+1) through ⌘9 (Windows, Linux Ctrl+9) to focus a session by its position in the grid, from left to right.
Press ⌘K ⌘W (Windows, Linux Ctrl+K Ctrl+W) to close all open sessions and return to the new-session view. This shortcut applies when a session has focus.
These commands are also available in the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)).
Work with multiple chats in a session
Supported agent host sessions can contain multiple independent chats that share the same workspace and worktree. Arrange peer chats, side chats, and read-only subagent chats in horizontal or vertical groups to work with multiple conversations at the same time. Learn how to run multiple chats and ask side questions and follow subagents.
Customize and configure the Agents window
The Agents window shares your GitHub account, VS Code settings, and default profile with the main VS Code window. Configure the following options when you want to adjust the agent-first experience.
Personalize chat
Add a decorative chat background, enable the interactive VS Code pet, or adjust how chat content appears. Learn how to personalize chat.
Customize agents for your project and workflow
Select a customization type in the Customizations panel below the sessions list to open the Agent Customizations editor. From there, manage agents, skills, instructions, hooks, MCP servers, and plugins for your workspace or user profile. Learn how to customize agents in VS Code.
Adjust the window layout
Use the single-pane editor panel (Experimental)
The experimental single-pane layout replaces the separate editor and side panel with one docked pane. A shared tab bar spans the editor and the Changes or Files detail view. Files and diffs open in the docked editor next to the chat instead of in a modal window.
To use the single-pane layout, enable
sessions.layout.singlePaneDetailPanel
Open in VS Code
Open in VS Code Insiders
and reload the window. The setting is read when the Agents window starts.
In the shared tab bar, select New Tab (+) to open Changes, Files, Browser, or Search. Use Hide Editor, Toggle Details, and Maximize Editor Area or Restore Editor Area to adjust the layout. Toggle Details is available only for tabs that support a detail panel.
Each session restores its side-pane width, open editors, active editor, and per-file collapsed state when you switch sessions or reload the window.
Automatically collapse the sessions sidebar (Experimental)
When you enable
sessions.layout.autoCollapseSessionsSidebar
Open in VS Code
Open in VS Code Insiders
, the Agents window hides the sessions sidebar on narrow windows when both the editor area and side panel are open. The sidebar appears again when there is room. The Agents window preserves a sidebar that you closed manually and suspends auto-collapse while multiple sessions are open side by side.
View and edit Markdown files
The Agents window supports rendered Markdown preview and an experimental Markdown editor for .md files. Which editor opens by default depends on
workbench.editor.markdownDefaultEditorInAgentsWindow
Open in VS Code
Open in VS Code Insiders
.
When enabled, .md files open with Markdown Editor (Experimental).
When disabled, .md files open with Markdown Preview.
In Markdown Editor (Experimental), switch between Editing and Locked modes while keeping the rendered Markdown context. In Editing mode, edit content directly. In Locked mode, the document remains rendered and read-only.
When you edit a Markdown file, the editor shows Git change markers in the margin. Green indicates added content, blue indicates modified content, and red indicates deleted content. The markers reflect the current Git changes and disappear when you undo or revert the corresponding changes.
Switch to another GitHub account
To use a different GitHub account in the Agents window, select the account icon in the top right corner of the window and choose Sign out. After signing out, select Sign in to authenticate with a different GitHub account.
Configure settings for the Agents window
The Agents window shares all of your VS Code settings, so the configuration you've already invested in carries over automatically. When you want different behavior in the Agents window than in the editor window, you can override specific settings just for the Agents window without affecting your main VS Code setup.
To override a setting for the Agents window only, edit your settings file and scope the value under the Agents window section. Open the Settings editor (⌘, (Windows, Linux Ctrl+,)) from the Agents window to see which scope a setting applies to.
Use VS Code extensions in the Agents window
The Agents window can run VS Code extensions. Extensions that contribute only static content, such as themes, grammars, languages, and keybindings, activate automatically.
For other extensions, you can opt them in by ID with the
extensions.supportAgentsWindow
Open in VS Code
Open in VS Code Insiders
setting:
"extensions.supportAgentsWindow": {
"myextension.id": true
}
Keep the following in mind when enabling extensions:
Any extension you enable this way must be installed in your default VS Code profile.
Extension support is still evolving. If an extension doesn't behave as expected, file an issue.
Limitations
The Agents window supports Copilot, cloud, Claude, and Codex sessions that run on the Agent Host. Use the Local harness and Codex sessions that run through the OpenAI extension from the main VS Code window.
Copilot Cloud sessions are only supported for GitHub-backed repositories. For non-GitHub projects, you can still use Copilot in the Agents window.
The agents dropdown currently doesn't have the plan agent. You can use the /plan command in a Copilot or Claude agent session. In Copilot sessions, the plan agent is also automatically invoked when you ask it to create a plan.
Running multiple chats in a single session is currently supported for Copilot and Claude sessions.
Multi-root sessions are not yet supported in the Agents window. You can ask the agent to work across projects in a single session.
Next steps
Chat overview - add context, write effective prompts, and review changes.
Manage agent sessions - organize, fork, archive, and export sessions.
Review AI-generated code edits - inspect, revise, and integrate agent changes.
Remote agent sessions - SSH, dev tunnels, and browser-based access.
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

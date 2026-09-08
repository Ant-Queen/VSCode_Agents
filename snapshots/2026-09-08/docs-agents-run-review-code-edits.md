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
On this page there are 6 sectionsOn this page
Review agent changes
Integrate worktree changes
Edit requests and restore checkpoints
Edit sensitive files
Review changes from the sessions list
Related resources
Related
Get started with agents
Follow a hands-on tutorial to build an app with AI agents in VS Code.
Start agentic coding tutorial
Review and revert agent changes
When you work with an agent in Visual Studio Code, it can change multiple files in your project. This article explains how to inspect, revise, integrate, or discard these AI-generated changes.
Note
You can review AI-generated changes in both the Chat view and the Agents window. The review experience follows the same concepts, but the user interface differs between the two surfaces.
Review agent changes
The agent applies and saves edits directly in the session's folder or isolated Git worktree. These edits don't have a pending approval state, so you don't need to keep or undo each edit before you continue.
Review the changes as you would other workspace or branch changes through the diff view, Source Control, or pull request workflow.
Chat viewAgents window
Select a changed file in the agent's response to open its diff or select it from the Source Control view.
To see a summary after each completed request, set
chat.checkpoints.showFileChanges
Open in VS Code
Open in VS Code Insiders
to true. Expand the changed-files summary to see the files and diff statistics, or select View All File Changes to open a multi-file diff.
If you want to make further changes, send a follow-up prompt or edit the files directly. To revert a request and all later changes, restore a checkpoint.
Run tests and use the debugger or other editor tools to validate the result.
When you're satisfied with the changes:
For folder-isolated sessions, stage and commit the changes with Source Control.
For worktree-isolated sessions, apply or merge the worktree changes into your main workspace.
For cloud sessions, review the pull request or check out its branch locally.
By default, the Agents window shows these views in a side panel:
Files: a file explorer for the session workspace.
Changes: files that the agent changed, added, or deleted. Use the Branch Changes dropdown to choose which changeset to review.
The Changes view groups edits outside the workspace under Other Files. These files, such as plans in the session-state folder, aren't committed with workspace changes. The list includes files changed through file-edit tools, but not files that the agent only reads or changes through terminal commands.
To review and integrate the changes:
Select a file in the Changes view to open a diff view of the agent's edits.
By default, selecting a file opens a multi-file diff editor with all the session changes. To open a focused single-file diff, enable
sessions.changes.openSingleFileDiff
Open in VS Code
Open in VS Code Insiders
.
Use the diff toolbar to show the editor side by side with chat or in a modal window.
Select a range of code in a changed file, select Add Feedback, and enter a comment that describes the change you want. Add more comments on other selections or files, and then select Submit Feedback to send them to the agent.
Markdown files follow the same feedback flow. Open a workspace file from the Changes tab and use Locked mode in the Markdown editor to add range-based feedback. Feedback stays in sync if you reopen the file in the text editor.
The agent reads your comments, makes the requested edits, and resolves each comment. Resolved comments disappear from the diff view.
Select Mark as Reviewed in a file's toolbar to track files you've reviewed in the Branch Changes changeset. The reviewed state clears if you or the agent changes the file again.
Use the Commit, Merge, Checkout, or Discard actions to act on the edits.
When you create a session, use the sync button in the Files panel to pull upstream changes from the base branch before the agent starts. Starting from the latest branch state reduces merge conflicts when you integrate the result.
Review changes in the single-pane layout (Experimental)
When you enable the experimental single-pane editor panel, the Changes view and diff editor share one docked pane.
Use Show Side by Side Diff or Show Inline Diff to change the diff layout. Use Expand All Diffs or Collapse All Diffs to control all files at once. A keybinding for  also works in the Agents window.
The Changes editor restores each file's expanded or collapsed state when you switch sessions or reload the window. The editor tab title shows the next integration action, such as Create Pull Request, and switches to an icon when space is limited.
Integrate worktree changes
A worktree session keeps the agent's branch and working files separate from your primary worktree. After you review and validate the result, choose how to continue:
Apply or migrate the changes: transfer the worktree changes into your current workspace for further editing and commit them with your existing work.
Commit or merge the branch: preserve the work on the session branch and merge it into the destination branch.
Check out the branch: open the session branch in an editor window to continue working on it manually.
Discard the changes: remove changes that you don't want to keep.
Before you apply or merge changes:
Confirm the session's base branch and the destination branch in your primary workspace.
Commit or stash unrelated changes in the destination workspace.
Review all changed files, including untracked files, and run the relevant tests.
Select the integration action and resolve any merge conflicts.
Test the integrated result before you archive or delete the session.
The available actions and labels depend on the session harness and whether you use the Chat view or Agents window. Keep the session until you verify that the changes are present on the intended destination branch.
Edit requests and restore checkpoints
Use request editing and checkpoints to revise or undo a batch of changes:
Edit a previous request: modify a prompt you already sent. VS Code reverts changes made by that request and all subsequent requests, then resends the edited prompt.
Restore a checkpoint: roll back all file changes to a specific point in the conversation without changing the prompt.
Edit a previous chat request
Each request in your conversation history is editable. When you edit a previous request, VS Code reverts file changes made by the original request and subsequent requests, and then sends the updated request to the language model.
Select the request in the conversation, modify it, and resend it. Configure or turn off request editing with
chat.editRequests
Open in VS Code
Open in VS Code Insiders
.
Restore a checkpoint
When checkpoints are enabled, VS Code creates a snapshot of affected files before processing each request. Set
chat.checkpoints.enabled
Open in VS Code
Open in VS Code Insiders
to control checkpoints.
To restore your workspace to an earlier checkpoint:
Navigate to a previous request in the conversation.
Hover over the request and select Restore Checkpoint.
Confirm that you want to restore the checkpoint.
VS Code removes subsequent requests from the conversation history and restores the workspace files to their state at the checkpoint.
Redo after restoring
After restoring a checkpoint, select Redo to recover the changes that were undone.
View file changes in checkpoints
Set
chat.checkpoints.showFileChanges
Open in VS Code
Open in VS Code Insiders
to show the files changed by each request and the number of lines added or removed. Use this summary to understand the effect of a request before restoring its checkpoint.
Fork from a checkpoint
Hover over a request and select Fork Conversation to create an independent session that includes the conversation up to that checkpoint. Learn more about forking agent sessions.
Note
Checkpoints are temporary and don't replace Git version control. Use Git for permanent version history and collaboration.
Review extension-host changes
If agent host is not enabled or you are working with an older session, the agent uses the extension host to make edits, which has a different workflow for reviewing changes.
After the agent edits and saves a file, VS Code marks the edits as pending. Files with pending edits have a squared-dot indicator in the Explorer view and editor tabs. The pending state is restored when you reopen VS Code.
To review pending edits:
Open a file from the changed-files list in the Chat view or from the Explorer view.
Use the Up and Down controls in the editor overlay to navigate between edits.
For each edit, choose one of the following actions:
Select Keep to accept the edit.
Select Undo to reject the edit and revert the change.
Hover over an inline change to accept or reject that specific change without affecting other edits in the file.
You can also accept or reject all pending edits from the Chat view. When you resolve an edit, the editor automatically opens the next file with pending edits. To stay in the current file, set
chat.editing.revealNextChangeOnResolve
Open in VS Code
Open in VS Code Insiders
to false.
Source Control integration
If you stage your changes in the Source Control view, any pending edits are automatically accepted. If you discard your changes, any pending edits are also discarded.
Auto-accept edits
Use
chat.editing.autoAcceptDelay
Open in VS Code
Open in VS Code Insiders
to automatically accept pending edits after a configurable delay. Hover over the editor overlay controls to stop the countdown.
Important
If you automatically accept all edits, review the changes before you commit them in source control. Learn more about the security considerations of using AI in VS Code.
Edit sensitive files
Sensitive-file approval is separate from reviewing changes after the agent makes them. To prevent inadvertent edits to files such as workspace configuration or environment settings, VS Code can show a diff and ask you to approve or reject the edit before it is applied.
Use the
chat.tools.edits.autoApprove
Open in VS Code
Open in VS Code Insiders
setting to configure which files require approval. The setting uses glob patterns to match file paths in your workspace.
The following example configuration automatically allows edits to all files except for JSON files in the .vscode folder and files named .env, which you are prompted to approve:
"chat.tools.edits.autoApprove": {
"**/*": true,
"**/.vscode/*.json": false,
"**/.env": false
}
Review changes from the sessions list
When a session completes and makes code changes to your project, the sessions list shows the file change statistics for that session. To review the changes, select the session from the list to open the session details.
Depending on the agent harness and isolation mode, you can apply or merge changes into your local workspace, or check out the branch from a cloud session.
Related resources
Use chat in VS Code
Agent sessions
Security considerations for using AI in VS Code
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

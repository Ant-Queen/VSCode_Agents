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
On this page there are 10 sectionsOn this page
Opt out of session sync
Exclude repositories from sync
Enterprise policy
Share a session
Session sync status
Privacy and data control
Delete synced sessions
Query session history with Chronicle
Settings reference
Related content
Related
Try it
Launch a chat prompt that summarizes your recent coding sessions into a standup report.
Open in VS Code
Stable
Insiders
Sync and query session history
VS Code maintains a searchable history of your Copilot sessions. By default, it syncs local agent sessions to your GitHub account so you can access them across devices, share selected sessions, and query work from VS Code, Copilot CLI, cloud agent, code review, and the GitHub Copilot Desktop app.
Synced sessions are private unless you explicitly share them.
Opt out of session sync
To keep session data local only, set
chat.sessionSync.enabled
Open in VS Code
Open in VS Code Insiders
to false. When you opt out, session data stays on your machine and you can only query it locally.
Exclude repositories from sync
Use
chat.sessionSync.excludeRepositories
Open in VS Code
Open in VS Code Insiders
to prevent sessions in specific repositories from syncing to the cloud. The setting accepts exact owner/repo names or glob patterns:
"chat.sessionSync.excludeRepositories": [
"my-org/private-repo",
"my-org/secret-*"
]
Sessions from matching repositories are stored locally only.
Enterprise policy
For Copilot Business and Copilot Enterprise users, two policies control session sync:
GitHub.com enterprise policy ("Store local sessions in the Cloud"): enterprise and organization owners configure this on GitHub.com to enable or disable cloud sync for their users.
VS Code group policy (CopilotSessionSync): when disabled, the
chat.sessionSync.enabled
Open in VS Code
Open in VS Code Insiders
setting is forced to false and sessions stay local only.
Important
Enabling the policy does not give administrators access to your session data. Synced sessions are tied to your personal account and are accessible only to you by default.
When disabled by policy, the session sync status shows Disabled by policy and users cannot override the setting.
Share a session
Sessions are not shared by default. On GitHub.com, you can share a synced session for view-only access to anyone who has access to the repository:
Open the Agents tab on GitHub.com.
Select a session and open Sharing settings from the ... menu.
Enable sharing to give repository collaborators view-only access.
Recipients can view the session's prompts, responses, and file changes, but cannot steer or modify the session. Shared sessions are not indexed for other users' session queries.
Session sync status
The session sync status appears in the Copilot status bar in the Chat view. It shows the current state of cloud sync:
State
Description
Not enabled
Session sync is off. Data stays local to this device.
Enabled
Sessions are syncing to your GitHub account.
N sessions synced
Shows how many sessions have been uploaded. Select to view sessions on GitHub.com.
Syncing N sessions
Upload is in progress.
Disabled by policy
Your organization's policy prevents session sync.
Sync error
Something went wrong during the last sync. Try again later.
Privacy and data control
Sessions are private to you by default. Synced sessions are tied to your personal GitHub account and are accessible only to you unless you explicitly share them.
Secrets such as tokens, API keys, and credentials are automatically stripped before data leaves your machine.
You can opt out at any time by setting
chat.sessionSync.enabled
Open in VS Code
Open in VS Code Insiders
to false. Existing synced sessions remain on GitHub.com until you delete them.
Delete synced sessions
To delete synced session data, run the Delete Session Sync Data command (github.copilot.sessionSync.deleteSessions) from the Command Palette. The command shows a picker where you select which sessions to remove. After selecting sessions, you choose the deletion scope:
Delete from local and cloud: removes session data from your machine and from GitHub.com. This action cannot be undone.
Delete from cloud only: removes session data from GitHub.com but keeps local data intact.
You can also hide or delete individual synced sessions from the Agents tab on GitHub.com. Hiding a session removes it from your session index so it no longer appears in query results.
Query session history with Chronicle
Use Chronicle commands or natural-language questions to search past sessions, generate standup reports, and get personalized usage tips.
Chronicle commands
Enter these commands in the chat input:
Command
Description
/chronicle:standup
Summarize recent coding sessions into a standup report, grouped by branch and repository. Covers the last 24 hours by default.
/chronicle:tips
Analyze recent session history and suggest ways to use Copilot more effectively.
/chronicle:cost-tips
Identify opportunities to reduce token usage and Copilot cost.
/chronicle:search <query>
Search sessions by keyword, file path, or pull request or issue reference.
/chronicle:reindex
Rebuild the local session index and sync session data to your account.
Ask questions about session history
Ask free-form questions such as "What files did I edit yesterday?" or "Have I worked on anything related to the payments API?" Copilot uses semantic understanding to find relevant sessions. Use /chronicle:search when you want a direct content search.
What gets tracked
The local session store records:
Session metadata: repository, branch, working directory, timestamps, and the agent or participant.
Conversation turns: user messages and assistant responses.
Files touched: file paths from tool calls.
External references: pull request numbers, issue numbers, and commit SHAs.
Data is stored in a local SQLite database. Secrets such as tokens, API keys, passwords, and connection strings are filtered before data is synced.
Reindex the session store
If sessions are missing or the database becomes corrupted, rebuild the index:
/chronicle:reindex
You can also run Reindex Sessions (github.copilot.chronicle.reindex) from the Command Palette.
Reindex after restoring session files from a backup, an unexpected crash, manually deleting session directories, or opting back into session sync.
Settings reference
Setting
Default
Description
github.copilot.chat.localIndex.enabled
Open in VS Code
Open in VS Code Insiders
true
Enable local session tracking (prerequisite for sync)
chat.sessionSync.enabled
Open in VS Code
Open in VS Code Insiders
true
Sync sessions to your GitHub account
chat.sessionSync.excludeRepositories
Open in VS Code
Open in VS Code Insiders
[]
Repository patterns to exclude from sync
Related content
Manage agent sessions - Create and organize agent sessions
Security - Copilot security and privacy
Diagnose prompt caching with the Cache Explorer - Find where sessions waste tokens
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

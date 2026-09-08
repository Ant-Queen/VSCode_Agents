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
On this page there are 7 sectionsOn this page
Agent Customizations editor
Create a customization
Migrate user customizations
Evaluate and improve customization files (Preview)
Use customizations in a monorepo
Troubleshoot customization issues
Related resources
Related
Core concepts
Learn about the different customization types and when to use each one.
Customization concepts
Tutorial
Follow a hands-on walkthrough to customize AI for your project.
Customize AI for your project
Create and manage agent customizations
Agent customizations adapt agents to your coding standards, workflows, and development systems. This article explains how to create, manage, evaluate, and troubleshoot customizations in Visual Studio Code. To compare the customization types and understand how they work together, see Agent customization concepts.
Agent Customizations editor
The Agent Customizations editor provides a central place to discover, create, and manage customizations. It organizes customization types into separate tabs and includes an editor with syntax highlighting and validation.
When you open the Customizations editor, the customizations are scoped to the selected agent harness. Select the harness from the dropdown in the chat input before you open the editor to ensure the customizations apply to the correct context.
Follow these steps to open the Agent Customizations editor:
Agents windowChat view
In the left sidebar, select a customization type in the Customizations panel.
In the Chat view, select the Configure Chat (gear icon) or run Chat: Open Customizations from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)).
Create a customization
You can create customization files manually or use AI to generate them, after which you can further edit them.
Create a customization with AI
You can create a customization file with AI assistance. To do this, open the Agent Customizations editor and
enter a prompt in the Overview tab that describes what you want to create. The agent asks for any missing details and generates the customization in the appropriate format.
For example, to create a code reviewer skill, you can enter the following prompt:
Code reviewer skill that checks for code style, best practices, and potential bugs in Python and JavaScript files.
Create a customization manually
You can manually create a customization file by using the Chat: New <customization-type> command from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)). This creates the corresponding file in the appropriate location for the selected customization type. You can then edit the file in the inline editor or in a separate editor tab.
Alternatively, you can use the Agent Customizations editor to create a customization file. Follow these steps:
Open the Agent Customizations editor and select a customization type
Choose between creating a user or workspace customization from the New dropdown
Enter a name and choose a storage location when prompted
An inline editor opens where you can further edit the customization file. The editor provides syntax highlighting and validation for the customization type.
For MCP servers and agent plugins, browse the corresponding marketplace from the editor, install an item, and manage the installation from the same tab.
See the guide for each customization type for its file format and configuration options.
Choose a customization scope
Store a customization at the narrowest scope that matches how you want to use and share it:
User: use the customization across your workspaces. User customizations are specific to you and are not committed to the project.
Workspace: share the customization with project contributors through source control.
Some customization types support other scopes, such as organization-level instructions. Not every customization type supports every scope. See the individual guide for its supported locations.
Note
For sessions that run on Agent Host, the agent reads user-level customizations from harness-agnostic folders like ~/.copilot (Copilot) and ~/.claude (Claude), rather than from your VS Code profile user data. See instructions, custom agents, and prompt files for the recommended user-level locations.
Migrate user customizations
Experimental
User customization migration is experimental and might change or be removed.
Agents that run through an agent host don't read custom agents and instructions stored in your VS Code profile user data. The migration flow moves these customizations to the user folders for the active agent host without changing their names, types, or contents.
The migrated files don't roam across devices through Settings Sync. If you keep the original files in your profile user data, the original and migrated copies don't stay synchronized.
To migrate user customizations:
Enable the
chat.customizations.userDataMigration.enabled
Open in VS Code
Open in VS Code Insiders
setting.
In the Chat view, select the agent host that should use the customizations.
Select Configure Chat (gear icon) to open the Agent Customizations editor.
On the Overview tab, find Migrate User Data Customizations and select Migrate....
Select the agents and instructions to migrate. You can open a file to review it before migration.
Select Migrate.
In the confirmation dialog, choose whether to delete the original files from your profile user data, and then select Migrate.
The migration card appears only when an agent host is active, the setting is enabled, and VS Code finds user-profile agents or instructions to migrate.
Evaluate and improve customization files (Preview)
As your collection of customization files grows, it can be hard to tell whether they actually guide the AI the way you intend. Vague wording, contradictory rules, or overly complex instructions can degrade results. The Chat Customizations Evaluations extension helps you catch these problems before you rely on a customization, by analyzing your files and suggesting concrete improvements.
Note
The Chat Customizations Evaluations extension is currently in preview and is published separately from VS Code. Install it from the Visual Studio Marketplace.
The extension works with skill files (SKILL.md), custom agent files (*.agent.md), instructions files (*.instructions.md), and prompt files (*.prompt.md).
Open a customization file and run the Chat Customizations Evaluations: Analyze command from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)).
The extension uses GitHub Copilot to detect issues such as:
Logical, behavioral, and format contradictions
Ambiguous wording, with suggested rewrites
Conflicting persona traits and tone drift
Excessive cognitive load from deeply nested conditions
Gaps in intent handling and missing error paths
Conflicts between a file and other customization files it links to
Diagnostics appear in the Problems panel (⇧⌘M (Windows, Linux Ctrl+Shift+M)) with line and column locations. After the analysis completes, select Implement Suggestions to apply the suggested improvements.
Tip
You can also start an analysis from chat with the /analyze-prompt slash command, which summarizes the diagnostics for the active customization file directly in the Chat view.
For skill files, the extension integrates with the Waza evaluation framework to measure how well a skill performs against a set of test cases. Run Chat Customizations Evaluations: Download Waza Binary to install Waza, Chat Customizations Evaluations: Create Waza Eval Scaffold to generate evaluation files for the active skill, and Chat Customizations Evaluations: Run Waza Evaluation to run the suite. For step-by-step guidance, run Chat Customizations Evaluations: Open Analysis and Fix User Guide.
Use customizations in a monorepo
In monorepo setups, you might open a subfolder of a repository in VS Code rather than the repo root. By default, VS Code only discovers customization files within your open workspace folder(s). Enable the
chat.useCustomizationsInParentRepositories
Open in VS Code
Open in VS Code Insiders
setting to also discover customizations from the parent repository.
When this setting is enabled, VS Code walks up the folder hierarchy from each workspace folder until it finds a .git folder. If found, it collects customizations from all folders between the workspace folder and the repository root (inclusive). This applies to all customization types: always-on instructions (copilot-instructions.md, AGENTS.md, CLAUDE.md), file-based instructions, prompt files, custom agents, agent skills, and hooks.
For example, consider the following monorepo structure:
my-monorepo/              # repo root (has .git folder)
├── .github/
│   ├── copilot-instructions.md
│   ├── instructions/
│   │   └── style.instructions.md
│   ├── prompts/
│   │   └── review.prompt.md
│   └── agents/
│       └── reviewer.agent.md
├── packages/
│   └── frontend/          # opened as workspace folder
│       └── src/
If you open only packages/frontend/ in VS Code and enable the setting, VS Code discovers the customization files at the repo root, such as copilot-instructions.md, style.instructions.md, review.prompt.md, and reviewer.agent.md.
Conditions for parent repository discovery:
The workspace folder does not contain a .git folder (it is not itself a repository root).
A parent folder contains a .git folder.
The parent repository folder is trusted. VS Code prompts you to trust the parent folder when the workspace is opened.
Note
The
chat.useCustomizationsInParentRepositories
Open in VS Code
Open in VS Code Insiders
setting is disabled by default.
Troubleshoot customization issues
If your customizations aren't being applied or cause unexpected behavior, open the Agent Debug Logs panel to troubleshoot agent issues. Run Developer: Open Agent Debug Panel from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)), or in the Chat view select the ellipsis (...) menu and select Show Agent Debug Logs.
Related resources
Customization concepts
Customize AI for your project guide
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

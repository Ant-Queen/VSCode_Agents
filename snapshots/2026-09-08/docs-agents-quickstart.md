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
Prerequisites
Create a project folder
Build the app
Review and validate the result
Continue in the other surface
Clean up resources
Next steps
Related
Build a complete app with agents
Follow a hands-on tutorial to build and refine an app with agents in VS Code.
Start agents tutorial
Quickstart: Complete your first task with an agent
In this quickstart, you use an AI agent in Visual Studio Code to build a small web app from a natural-language prompt. You can work in the Agents window for an agent-first experience or use the Chat view alongside your code. You then review the generated code and use browser tools to let the agent validate the app.
Prerequisites
Download and install Visual Studio Code.
Set up AI in VS Code.
Create a project folder
You will create a project folder for the quickstart app on your computer. You will open this folder in VS Code to work with the agent.
Run the following command in your terminal to create the folder:
mkdir agent-quickstart
Build the app
Depending on your workstyle, you can choose to work with agents in the Agents window or the Chat view. Both options create the same app and give you access to the same session.
Agents windowChat view
The Agents window (Preview) is a dedicated window for assigning (high-level) tasks to agents across all your projects.
In VS Code, select Open in Agents in the title bar.
You can also run Chat: Open Agents window from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)).
Select New at the top of the left sidebar.
Select Folder, and then select the agent-quickstart folder you just created. This folder becomes the primary execution workspace for the session.
If VS Code asks whether you trust the folder, select Trust.
Select the Copilot agent harness and the Agent role. Keep Manual Permissions selected so that VS Code asks before the agent runs actions that require approval.
Enter the following prompt and press Enter:
Create a task list web app in a single index.html file with embedded CSS and JavaScript. Let me add, complete, and delete tasks. Save the tasks in local storage so they persist after a page reload. Use no external libraries.
Follow the agent's progress and review any approval requests before you accept them.
The agent will create the index.html file and update it as it progresses through the task list web app creation. To perform specific actions, the agent requests your approval.
The Chat view lets you work with agents alongside your editor within a specific project. This approach is useful for coding tasks where agents assist you in real-time while you develop your code.
In VS Code, select File > Open Folder from the menu, and then open the agent-quickstart folder.
If VS Code asks whether you trust the folder, select Manage from the notification, and then select Trust.
Open the Chat view with ⌃⌘I (Windows, Linux Ctrl+Alt+I), and then select New Chat (+).
Select the Copilot agent harness and the Agent role. Keep Manual Permissions selected so that VS Code asks before the agent runs actions that require approval.
Enter the following prompt and press Enter:
Create a task list web app in a single index.html file with embedded CSS and JavaScript. Let me add, complete, and delete tasks. Save the tasks in local storage so they persist after a page reload. Use no external libraries.
Follow the agent's progress and review any approval requests before you accept them.
The agent will create the index.html file and update it as it progresses through the task list web app creation. To perform specific actions, the agent requests your approval.
Review and validate the result
It's important to review the generated code and outcome carefully. You can let the agent validate key scenarios and edge cases for you by running the app in the integrated browser and observing its behavior.
Notice that the agent might have launched the integrated browser to validate that the app runs correctly as part of creating the task list web app in the previous steps.
In the following steps you'll ask the agent to validate the basic functionality of the task list web app.
Agents windowChat view
Open the Changes panel in the right sidebar (⌃⇧G (Windows, Linux Ctrl+Shift+G)) and select index.html to review the generated code.
If you're not happy with a specific part of the, select it in the diff view and enter feedback to send it to the agent.
Now, enter the following prompt to have the agent open the app in the integrated browser and validate its functionality.
Open index.html in the integrated browser and validate the app.
Add a task, mark it complete, and delete it. Then add another task,
reload the page, and verify that the task persists. If any step fails,
fix the issue and repeat the complete flow.
Notice how the agent interacts with the integrated browser and validates the user scenarios.
Select index.html in the agent response to review the generated code and its diff.
Now, enter the following prompt to have the agent open the app in the integrated browser and validate its functionality.
Open index.html in the integrated browser and validate the app.
Add a task, mark it complete, and delete it. Then add another task,
reload the page, and verify that the task persists. If any step fails,
fix the issue and repeat the complete flow.
Notice how the agent interacts with the integrated browser and validates the user scenarios.
You have completed your first task with an agent. The agent interpreted your goal, created the code, exercised the app in the browser, and fixed any issues it found. You stayed in control through approvals, code review, and final validation.
Continue in the other surface
The Agents window and Chat view share the same agent sessions, so you can switch between them without losing the conversation.
From the Agents window, select Open in Editor in the title bar. VS Code opens the project in an editor window with the session available in the Chat view.
From the Chat view, select Open in Agents in the title bar. The Agents window opens with the same session selected.
Clean up resources
When you no longer need the app, run these steps to clean up your local resources:
Close the agent-quickstart folder in VS Code.
Delete the agent-quickstart folder from your computer.
Next steps
Build a complete app with agents.
Learn how agents use browser tools.
Learn more about agents in VS Code.
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

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
On this page there are 4 sectionsOn this page
Connect via SSH
Connect via dev tunnel
Use the Agents window in the browser
Related resources
Remote agent sessions
The Agents window lets you connect to remote machines to start agent sessions or check in on existing ones. You can connect over SSH, through a dev tunnel, or use the Agents window directly in a browser from any device.
This is useful when you want to take advantage of a remote machine's resources, work from a mobile device, or check in on your agent's progress when you're away from your main development machine.
The Agents window connects to the remote machine by using the Agent Host Protocol (AHP) over SSH or a dev tunnel. When you connect, the Agents window automatically installs and starts the VS Code CLI on the remote machine. The remote machine must be powered on and accessible over the network.
Connect via SSH
Prerequisite: the remote machine must be accessible over SSH. No extra agent installation is needed on the remote machine.
To start a session on a remote machine via SSH:
Select New or press ⌘N (Windows, Linux Ctrl+N) to start a new agent session.
In the workspace dropdown, select the Remote tab, and then select SSH. If you've already set up SSH connections, they appear as options in the dropdown.
Enter the SSH connection string for the remote machine (for example, user@hostname).
Select the folder on the remote machine to use for the session.
Type a prompt and press Enter to start the session.
Connect via dev tunnel
Prerequisite: a dev tunnel is already running on the remote machine. See Developing with Remote Tunnels for setup instructions.
To start a session on a remote machine via dev tunnel:
Select New or press ⌘N (Windows, Linux Ctrl+N) to start a new agent session.
In the workspace dropdown, select the Remote tab, and then select Tunnels and choose your account type.
Choose the active dev tunnel from the list.
Select the folder on the remote machine to use for the session.
Type a prompt and press Enter to start the session.
Important
Ensure your dev tunnel requires authentication (GitHub or Microsoft account). If the tunnel allows anonymous access, anyone who discovers the URL can reach your machine and start agent sessions. This is especially dangerous when auto-approval modes are active, because unauthorized users can trigger AI-assisted command execution with your credentials. For more information, see Security.
Use the Agents window in the browser
The Agents window is also available as a web client at https://insiders.vscode.dev/agents, so you can manage agent sessions from any device with a browser. This is useful when you're away from your main development machine, working from a mobile device, or want to check in on sessions running on a remote host without installing Visual Studio Code locally.
The browser-based Agents window connects to your development machine through a dev tunnel. Agent sessions run on the remote host, and the browser acts as a lightweight client for chatting, reviewing changes, and managing sessions.
Set up a dev tunnel
Before you can use the Agents window in the browser, start a dev tunnel on the machine you want to connect to:
On your remote host, run the following command to start a dev tunnel:
code-insiders tunnel
If you're using the stable release, run code tunnel instead.
The first time you run this command, you're prompted to authenticate with your GitHub or Microsoft account. The tunnel requires authentication by default for security.
After the tunnel is running, open https://insiders.vscode.dev/agents in a browser on any device.
Sign in with Continue with GitHub when prompted. If you're already authenticated, the Agents window loads directly.
Your tunnel host appears in the hosts bar at the top of the window. Select it to connect.
Choose a folder on the remote machine, select an agent, and start a session.
Host management
The hosts bar in the browser-based Agents window shows your available tunnel hosts. Each host displays its connection status:
Online: the host is reachable and you can start or continue sessions on it.
Offline: the tunnel on the host is not running. Start the tunnel on the host to bring it back online.
You can connect and disconnect from hosts directly through the hosts bar. If a host goes offline while you have an active session, the session shows a disconnected state. When the host comes back online, the session reconnects automatically.
Related resources
Use the Agents window - agent-first workflows across multiple projects.
Choose an agent harness - compare harnesses, execution environments, and isolation options.
Developing with Remote Tunnels - set up and manage dev tunnels.
Security - trust boundaries and security considerations.
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

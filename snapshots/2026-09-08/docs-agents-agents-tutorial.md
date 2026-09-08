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
Prerequisites
Create a project folder
Build features with the Agents window
Continue working with agents in the editor
Next steps
Related
Explore the Agents window
Use the Agents window to run and monitor agent sessions across your projects from a single place in VS Code.
Learn about the Agents window
Explore the Chat view
You can use the Chat view alongside your editor to let agents assist you with coding tasks in your active workspace.
Learn about the Chat view
Tailor the agent experience
Configure custom agents, skills, and instructions to tailor the agent experience to your coding standards and workflows.
Start customization tutorial
Tutorial: Agentic coding in VS Code
In this tutorial, you learn how to build with AI agents in Visual Studio Code. Agents can plan a solution, create and edit multiple files, run commands, and fix their own errors, all from a single natural-language prompt. You describe what you want, and the agent does the work.
You start in the Agents window, a dedicated surface for an agent-first workflow. Then you switch to the Chat view, where an agent assists you while you work in the editor. Along the way, you pick up the VS Code basics you need, like opening a workspace, using the integrated browser, and committing your changes with source control.
You build a simple personal portfolio page with HTML, CSS, and JavaScript. The page is fully static, so you don't need to install any runtimes or build tools to follow along.
Learn VS Code editor features
Get familiar with the VS Code user interface, editing features, and key productivity tools.
Start the VS Code editing tutorial
Prerequisites
Download and install Visual Studio Code
Enable AI features in VS Code
Install Git
Tip
If you don't have a Copilot subscription yet, you can use Copilot for free by signing up for the Copilot Free plan and get a monthly allowance of inline suggestions and AI credits.
Create a project folder
Agents work in the context of a folder, also known as a workspace. You start by creating a folder for your project. You don't need to open the folder in VS Code yet. In the next step, you open it in the Agents window, which lets you work across multiple workspaces without opening a separate window for each one.
On your computer, create a new folder named myportfolio.
Put the folder under Git version control to track changes. Open a terminal and run the following commands:
cd myportfolio
git init
Tip
You can also initialize a repository from the Source Control view in VS Code.
Build features with the Agents window
The Agents window (preview) is a dedicated window in VS Code that is optimized for working with agents across all your projects without needing to open a separate VS Code window for each one.
In this part, you open your folder in the Agents window and task an agent to build your portfolio page.
Open the Agents window
In VS Code, select the Open in Agents button in the VS Code title bar.
You can also open the Agents window from the VS Code welcome page, or run the Chat: Open Agents window command from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)).
If you're prompted to sign in, select a sign-in method and continue.
The Agents window needs access to your GitHub Copilot subscription to run agent sessions. If you're already signed in to GitHub in VS Code, you're signed in here too.
Start an agent session
Select New at the top of the left sidebar to start a new session.
The sidebar shows your list of active agent sessions, grouped by workspace. You can use the sessions list to switch between sessions. In the bottom left, you can configure customizations to modify the agent's behavior to match your coding practices.
Select Folder, and then select the myportfolio folder on your machine. This folder becomes the primary execution workspace for the session.
If you're prompted to trust the folder, select Yes, I trust the authors.
Important
Workspace Trust lets you decide whether code in your project folder can be executed. When you download code from the internet, you should first review it to make sure it's safe to run. Get more info about Workspace Trust.
Select the Copilot agent harness to run your agent session locally on your machine using the GitHub Copilot SDK.
VS Code supports multiple agent harnesses, such as Claude and Codex. The agent harness is what connects the language model to the development environment.
Review the other session configuration options:
Agent: the generic agent role for performing the task. For specialized tasks, you can create a custom agent, such as a code review or testing agent.
Language model: depending on your setup, you can choose from multiple language models and configure additional settings.
Default Approvals: the permission level that uses the default approval rules for tools, terminal commands, and more. VS Code prompts you when an action requires approval.
Enter the following prompt in the chat input and press Enter:
Create a personal portfolio page with HTML, CSS, and JavaScript in separate files. Include a header with my name and a short bio, a section for projects with cards, and a contact section. Use modern styling and add some sample content.
The agent analyzes your request, plans the work, and then starts creating and editing files. If it encounters errors, it self-corrects or asks for clarification and approval.
Preview and iterate on the design
The Agents window is great for workflows where you hand off tasks to the agent and then validate the outcome, rather than the specific code changes. With the integrated browser, you can preview the agent's work without having to leave VS Code.
To preview the generated portfolio in the integrated browser:
Select the Files tab in the left sidebar, right-click the index.html file and select Open in Integrated Browser.
The Files tab shows all files in the workspace, similar to the Explorer view in the editor.
The integrated browser opens in a new tab in the Agents window, and you can interact with the page as you would in a normal browser.
Let's make a design change to the page. In the integrated browser, select the Add Element to Chat button to enter selection mode.
Hover over the page and select an element you want to change, for example select the main title.
The agent adds the selected element to your prompt as context, including its HTML, CSS, and a screenshot.
In the chat input, enter a prompt that describes the change you want, and press Enter. For example:
Use a gradient color for the text and use cursive.
The agent applies the change to the element you selected. Refresh the page in the integrated browser to see the updates.
Review and commit the changes
Before you commit the agent's work, you might want to review the code changes that the agent applied. The Changes panel shows diffs for every file the agent created or modified during its session. To review and commit the file changes:
Select the Changes panel to see the diffs of the files the agent added or modified. Each item also shows change stats and an add/delete/update indicator.
Open the diff from the index.html file and select a block of text to open the inline feedback flow. Enter your feedback and then select Submit.
Notice that your feedback is added to the chat conversation, and the agent processes it and applies the change to the file. You can continue to provide feedback on other changes in the diff view.
From the changes dropdown, select Uncommitted Changes to see the changes that have not yet been committed to your Git repository.
Use the changes dropdown to switch between branch changes, uncommitted changes, all changes from the session, and changes made during the last agent turn.
Now select Commit Changes in the Changes panel to save the agent's changes to your Git repository.
VS Code automatically creates a commit message based on the agent's prompt and the changes it made.
After committing the changes, the branch changes and uncommitted changes are now empty because there are no pending changes. The change stats are also cleared from the session entry in the session list.
Continue working with agents in the editor
For some changes, you might prefer a code-first approach, where your focus is on writing code and Copilot assists you in the process. For example, you might want to add a theme switcher and fine-tune the styles as you go. For this approach, continue the same Copilot session in the Chat view.
Open the editor for your workspace
In the Agents window, select the Open in Editor button in the title bar to open the active workspace in the editor.
This opens a new VS Code window with your workspace. The Chat view is still open in the right sidebar, so you can interact with agents while you work in the editor.
Notice that the left sidebar shows the Explorer view, which displays the files in your workspace. Select a file to open it in an editor tab in the main area.
The Chat view in the right sidebar shows the ongoing agent session you created previously in the Agents window.
Continue the session from the Chat view
The Chat view is located in the Secondary Side Bar, alongside your editor tabs. The same Copilot session remains active when you move between the Agents window and the editor.
Enter the following prompt in the chat input and press Enter:
Add an accessible theme switcher button that toggles between light and dark color themes. Persist the selected theme across page reloads, update the button label to describe the theme it applies, and keep the layout responsive on narrow screens.
Copilot applies and saves the changes directly to your project files.
Open the Source Control view to review the files that Copilot changed. Select a file to inspect its diff.
You can also select a changed file in the Chat view to open its diff.
Select the index.html file and select the Open in Integrated Browser (globe) button in the title bar.
In the integrated browser, validate the changes:
Select the theme switcher and verify that the page colors and button label change.
Resize the browser to a narrow width and verify that the content remains readable and the project cards adapt to the available space.
Use Tab to focus the theme switcher, and then use Enter or Space to toggle the theme.
If a check fails, describe what you observed to Copilot in the Chat view. For example:
The selected theme resets after I refresh the page. Persist the theme selection and verify that it is restored when the page loads.
Review the final changes in the Source Control view and commit them to your Git repository.
Congratulations! You built a portfolio page with Copilot by using both an agent-first and code-first approach. You continued the same session across the Agents window and the Chat view, and used the integrated browser to preview and validate the result.
Next steps
To go deeper with agentic coding in Visual Studio Code, get more info about how to:
Learn more about agents in VS Code
Learn more about the Agents window
Learn more about the Chat view
9/2/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

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
Set up your testing framework
Write tests with Copilot
Fix failing tests
Personalize test generation
Tips for better test generation
Next steps
Test with GitHub Copilot
Writing and maintaining tests is a crucial but often time-consuming part of software development. GitHub Copilot streamlines this process by helping you write, debug, and fix tests more efficiently in Visual Studio Code. This article shows you how to leverage Copilot's testing capabilities to improve your testing workflow and increase test coverage in your projects.
Copilot can help with the following testing tasks:
Set up testing frameworks: get help configuring the right testing framework and VS Code extensions for your project and language.
Generate test code: create unit tests, integration tests, and end-to-end tests that cover your application code.
Handle edge cases: generate comprehensive test suites to cover edge cases and error conditions.
Fix failing tests: receive suggestions for fixing test failures.
Maintain consistency: personalize Copilot to generate tests that follow your project's coding practices.
Tip
If you don't yet have a Copilot subscription, you can use Copilot for free by signing up for the Copilot Free plan and get a monthly allowance of inline suggestions and AI credits.
Set up your testing framework
To accelerate your testing workflow, Copilot can help set up the testing framework and VS Code extensions for your project. Copilot suggests appropriate testing frameworks based on your project type.
Open the Chat view (⌃⌘I (Windows, Linux Ctrl+Alt+I)).
Enter the /setupTests command in the chat input field.
Follow Copilot's guidance to configure your project.
Write tests with Copilot
Copilot can help you write tests for your application code by generating test code that covers your codebase. This includes unit tests, end-to-end tests, and tests for edge cases.
Use chat prompts
Open your application code file.
Open one of these views:
Chat view (⌃⌘I (Windows, Linux Ctrl+Alt+I))
Inline Chat (⌘I (Windows, Linux Ctrl+I))
Enter a prompt like:
"Generate tests for this code"
"Write unit tests including edge cases"
"Create integration tests for this module"
Get more guidance about using GitHub Copilot for writing tests in the GitHub documentation.
Use editor smart actions
To generate tests for your application code without writing a prompt, you can use the editor smart actions.
Open your application code file.
Optionally, select the code you want to test.
Right-click and select Generate Code > Generate Tests.
Copilot generates test code in an existing test file, or creates a new test file if one doesn't exist.
Optionally, refine the generated tests by providing additional context in the Inline Chat prompt.
Fix failing tests
Copilot integrates with the Test Explorer in VS Code and can help with fixing failing tests.
In the Test Explorer, hover over a failing test
Select the Fix Test Failure button (sparkle icon)
Review and apply Copilot's suggested fix
Alternatively, you can:
Open the Chat view
Enter the /fixTestFailure command
Follow Copilot's suggestions to fix the test
Tip
When using agents, the agent monitors the test output when running tests, and automatically attempts to fix and rerun failing tests.
Personalize test generation
If your organization has specific testing requirements, you can customize how Copilot generates tests to ensure they meet your standards. You can personalize how Copilot generates tests by providing custom instructions. For example:
Specify preferred testing frameworks
Define naming conventions for tests
Set code structure preferences
Request specific test patterns or methodologies
Get more information about personalizing Copilot for generating tests.
Tips for better test generation
To get the best results when generating tests with Copilot, follow these tips:
Provide context in your prompts about the testing framework you prefer
Specify if you want particular types of tests (unit, integration, end-to-end)
Ask for specific test cases or edge cases
Request tests that follow your project's coding standards
Next steps
Try testing web apps with browser agent tools.
Learn more about Copilot in VS Code.
Explore general testing features in VS Code.
Check out example prompts for generating unit tests
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

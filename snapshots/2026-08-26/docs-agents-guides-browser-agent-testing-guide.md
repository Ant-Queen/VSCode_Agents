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
On this page there are 9 sectionsOn this page
Prerequisites
What the agent validates
Step 1: Verify browser tools
Step 2: Ask the agent to build a calculator
Step 3: Let the agent test the calculator
Step 4: Watch the agent debug and fix issues
Step 5: Share a browser page with the agent (optional)
Try these scenarios
Related resources
Build and validate a web app with browser tools
Browser tools give agents a closed development loop for web applications. The agent can create an app, open it in the integrated browser, interact with it against acceptance criteria, identify issues, fix them, and repeat the checks.
This guide walks you through that loop by building and validating a calculator app. For browser tool capabilities, session types, privacy controls, and prompting patterns, see Use browser tools with agents.
Prerequisites
To complete this guide, you need:
Visual Studio Code installed on your computer
A GitHub Copilot subscription
The
workbench.browser.enableChatTools
Open in VS Code
Open in VS Code Insiders
setting turned on, which is the default
What the agent validates
Before you ask the agent to test the calculator, define observable acceptance criteria:
Each digit button enters the correct value.
Addition, subtraction, multiplication, and division return the expected result.
Clear resets the calculator.
Dividing by zero shows an error instead of an invalid numeric result.
These criteria give the agent a clear definition of success and make its final verification report easier to review.
Step 1: Verify browser tools
Browser tools are generally available by default. Verify that they are selected for the request:
Open the Chat view (⌃⌘I (Windows, Linux Ctrl+Alt+I)) and select Agent from the Agents dropdown.
Select Open Customizations (gear icon) > Tools and verify that Integrated Browser is selected.
The agent can now use these tools to interact with web pages. If the tools are missing, verify that
workbench.browser.enableChatTools
Open in VS Code
Open in VS Code Insiders
is turned on. An organization policy can also turn off browser tools.
Step 2: Ask the agent to build a calculator
With browser tools enabled, ask the agent to create a simple calculator application.
Create a new project folder and open it in VS Code.
In the Chat view, enter the following prompt:
Create a calculator with buttons for digits 0-9, operations (add, subtract, multiply, divide), clear, and equals. Use HTML, CSS, and JavaScript. Style it with a clean, modern design.
Review the generated files as the agent creates index.html, styles.css, and script.js.
Select Keep to save the files to your workspace.
The agent has built the basic structure of the calculator application.
Step 3: Let the agent test the calculator
Now ask the agent to open the calculator in the integrated browser and verify it works correctly.
In the Chat view, enter the following prompt:
Open the calculator in the browser and validate it against these criteria:
each digit button enters the correct value; addition, subtraction,
multiplication, and division return the expected result; Clear resets
the calculator; and division by zero shows an error. Report the result
for each criterion. If any criterion fails, fix the issue and repeat
the complete validation.
Watch as the agent opens index.html in the integrated browser, parses the page content to understand the structure, and systematically tests each button and operation by simulating clicks and checking the results.
The agent reports which operations work correctly and identifies any issues it discovers.
Step 4: Watch the agent debug and fix issues
If the agent discovers bugs during testing, it automatically analyzes the problem and implements a fix.
Let's introduce a bug by removing the division by zero check:
function calculate() {
if (!operator || shouldReset) return;
const a = parseFloat(previous);
const b = parseFloat(current);
let result;
switch (operator) {
case '+': result = a + b; break;
case '-': result = a - b; break;
case '*': result = a * b; break;
case '/': result = a / b; break;
}
Ask the agent to reproduce the issue, fix it, and verify the acceptance criterion again:
Test division by zero. If it produces an invalid numeric result instead
of an error, fix the issue. Then repeat the test and report the result.
Watch as the agent encounters an error when dividing by zero, then analyzes and fixes the code, and finally validates the bug fix.
The agent has completed a full development cycle: build, validate, debug, fix, and revalidate by using browser tools.
Step 5: Share a browser page with the agent (optional)
You can also manually open web pages and explicitly share them with the agent for analysis or interaction. By default, the agent can only interact with web pages it opened itself.
Open the integrated browser by running the Browser: Open Integrated Browser command from the Command Palette (⇧⌘P (Windows, Linux Ctrl+Shift+P)).
Navigate to a web page you want the agent to analyze or interact with.
Select the Share with Agent button in the browser toolbar.
A visual indicator on the browser tab shows that the page is actively shared with the agent.
Ask the agent to perform actions on the shared page:
What is the main heading on this page? Click the first link and tell me where it goes.
The agent can now access the shared page and perform interactions on your behalf. When you're done, select the Share with Agent button again to revoke access.
Tip
Shared pages use your existing browser session, including cookies and login state. Pages opened by the agent use isolated ephemeral sessions, so they don't share cookies or storage with your other browser tabs.
Try these scenarios
Now that you understand how browser tools work, try these scenarios to explore different use cases:
Form validation testing: have the agent verify validation rules, error messages, and successful submission by building and testing a contact form
Responsive layout verification: ask the agent to screenshot a page at different viewport sizes and verify responsive behavior (for example, a landing page with navigation menus)
Authentication flow testing: let the agent test credential validation, error handling, and successful redirects in a login page
Interactive functionality testing: have the agent verify user interactions and state management
Accessibility audits: ask the agent to check any web page for missing alt text, heading hierarchy, keyboard navigation, and color contrast issues
Related resources
Use browser tools with agents
Integrated browser
Core concepts of AI in VS Code
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

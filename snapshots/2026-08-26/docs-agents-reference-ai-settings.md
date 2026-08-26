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
On this page there are 21 sectionsOn this page
General settings
Code editing settings
Chat settings
Agent settings
Memory settings
Agent sessions
Inline chat settings
Code review settings
Source control settings
Custom instructions settings
Reusable prompt files settings
Custom agents settings
Agent skills settings
Observability settings
Agent plugins settings
Debugging settings
Testing settings
Notebook settings
Dictation settings
Accessibility settings
Related resources
AI settings reference
This article lists the configuration settings for the AI features and agents in Visual Studio Code. For general information about working with settings in VS Code, refer to User and workspace settings.
The team is continuously working on improving the AI features in VS Code and adding new functionality. Some features are still experimental. Try them out and share your feedback in our issues. Get more info about the feature lifecycle in VS Code.
Tip
If you don't yet have a Copilot subscription, you can use Copilot for free by signing up for the Copilot Free plan and get a monthly allowance of inline suggestions and AI credits.
General settings
Setting and Description
Default
chat.commandCenter.enabled
Open in VS Code
Open in VS Code Insiders
Controls whether to show the Chat menu in the VS Code title bar.
true
workbench.settings.showAISearchToggle
Open in VS Code
Open in VS Code Insiders
Enable searching settings with AI in the Settings editor.
true
workbench.commandPalette.experimental.askChatLocation
Open in VS Code
Open in VS Code Insiders
(Experimental)
Controls where the Command Palette should ask chat questions.
"chatView"
search.searchView.semanticSearchBehavior
Open in VS Code
Open in VS Code Insiders
(Preview)
Configure when to run semantic search in the Search view: manually (default), when no text search results are found, or always.
"manual"
search.searchView.keywordSuggestions
Open in VS Code
Open in VS Code Insiders
(Preview)
Controls whether to show keyword suggestions in the Search view.
false
chat.disableAIFeatures
Open in VS Code
Open in VS Code Insiders
Disable and hide built-in AI features in VS Code, such as chat and inline suggestions, and disable the Copilot extensions.
false
Code editing settings
Setting and Description
Default
github.copilot.editor.enableCodeActions
Open in VS Code
Open in VS Code Insiders
Controls if AI commands are shown as Code Actions when available.
true
github.copilot.renameSuggestions.triggerAutomatically
Open in VS Code
Open in VS Code Insiders
Generate symbol renaming suggestions.
true
github.copilot.enable
Open in VS Code
Open in VS Code Insiders
Enable or disable inline suggestions for specified languages.
{ "*": true, "plaintext": false, "markdown": false, "scminput": false }
github.copilot.nextEditSuggestions.enabled
Open in VS Code
Open in VS Code Insiders
Enables next edit suggestions (NES).
true
editor.inlineSuggest.edits.allowCodeShifting
Open in VS Code
Open in VS Code Insiders
Configure if NES is able to shift your code to show a suggestion.
"always"
editor.inlineSuggest.edits.renderSideBySide
Open in VS Code
Open in VS Code Insiders
Configure if NES can show larger suggestions side-by-side if possible, or if NES should always show larger suggestions below the relevant code.
"auto"
github.copilot.nextEditSuggestions.fixes
Open in VS Code
Open in VS Code Insiders
Enable next edit suggestions based on diagnostics (squiggles). For example, missing imports.
true
editor.inlineSuggest.edits.showCollapsed
Open in VS Code
Open in VS Code Insiders
Show NES code changes in the editor only when you press Tab to navigate to the suggestion or hover over the gutter arrow.
false
editor.inlineSuggest.fontFamily
Open in VS Code
Open in VS Code Insiders
Configure the font family for inline completions.
"default"
editor.inlineSuggest.showToolbar
Open in VS Code
Open in VS Code Insiders
Enable or disable the toolbar that appears for inline completions.
"onHover"
editor.inlineSuggest.minShowDelay
Open in VS Code
Open in VS Code Insiders
Time in milliseconds to wait before showing inline suggestions.
0
Chat settings
Setting and Description
Default
github.copilot.chat.localeOverride
Open in VS Code
Open in VS Code Insiders
Specify a locale for chat responses, such as en or fr.
"auto"
github.copilot.chat.useProjectTemplates
Open in VS Code
Open in VS Code Insiders
Use relevant GitHub projects as starter projects when using /new.
true
github.copilot.chat.scopeSelection
Open in VS Code
Open in VS Code Insiders
Whether to prompt for a specific symbol scope if you use /explain and the active editor has no selection.
false
github.copilot.chat.terminalChatLocation
Open in VS Code
Open in VS Code Insiders
Controls where chat queries from the terminal should be opened.
"chatView"
chat.detectParticipant.enabled
Open in VS Code
Open in VS Code Insiders
Enable chat participant detection in the Chat view.
true
chat.stickyScroll.enabled
Open in VS Code
Open in VS Code Insiders
Controls whether the current prompt is pinned to the top of the chat transcript while scrolling.
true
chat.artifacts.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enable or disable the artifacts panel in the chat (preview).
false
chat.artifacts.rules.byMimeType
Open in VS Code
Open in VS Code Insiders
(Experimental)
Rules for extracting artifacts from tool results by MIME type pattern. Maps MIME type patterns (such as "image/*") to a group configuration.
{ "image/*": { "groupName": "Screenshots", "onlyShowGroup": true } }
chat.artifacts.rules.byFilePath
Open in VS Code
Open in VS Code Insiders
(Experimental)
Rules for extracting artifacts from written files by file path glob pattern. Maps glob patterns (such as "**/*plan*.md") to a group configuration.
{ "**/*plan*.md": { "groupName": "Plans" } }
chat.artifacts.rules.byMemoryFilePath
Open in VS Code
Open in VS Code Insiders
(Experimental)
Rules for extracting artifacts from memory tool writes by memory file path glob pattern. Maps glob patterns to a group configuration.
{ "**/*plan*.md": { "groupName": "Plans" } }
chat.checkpoints.enabled
Open in VS Code
Open in VS Code Insiders
Enable or disable checkpoints in the chat.
true
chat.checkpoints.showFileChanges
Open in VS Code
Open in VS Code Insiders
Show a summary of file changes at the end of each chat request.
false
chat.editRequests
Open in VS Code
Open in VS Code Insiders
Enable or disable editing previous chat requests.
"inline"
chat.editor.fontFamily
Open in VS Code
Open in VS Code Insiders
Font family in chat codeblocks.
"default"
chat.editor.fontSize
Open in VS Code
Open in VS Code Insiders
Font size in pixels in chat codeblocks.
14
chat.editor.fontWeight
Open in VS Code
Open in VS Code Insiders
Font weight in chat codeblocks.
"default"
chat.editor.lineHeight
Open in VS Code
Open in VS Code Insiders
Line height in pixels in chat codeblocks.
0
chat.editor.wordWrap
Open in VS Code
Open in VS Code Insiders
Toggle line wrapping in chat codeblocks.
"off"
chat.editing.confirmEditRequestRemoval
Open in VS Code
Open in VS Code Insiders
Ask for confirmation before undoing an edit.
true
chat.editing.confirmEditRequestRetry
Open in VS Code
Open in VS Code Insiders
Ask for confirmation before performing a redo of the last edit.
true
chat.editing.autoAcceptDelay
Open in VS Code
Open in VS Code Insiders
Configure a delay after which suggested edits are automatically accepted, use zero to disable auto-accept.
0
chat.editing.revealNextChangeOnResolve
Open in VS Code
Open in VS Code Insiders
Controls whether the editor automatically reveals the next change after keeping or undoing a chat edit.
true
chat.fontFamily
Open in VS Code
Open in VS Code Insiders
Font family for Markdown content in chat.
"default"
chat.fontSize
Open in VS Code
Open in VS Code Insiders
Font size in pixels for Markdown content in chat.
13
chat.verbose
Open in VS Code
Open in VS Code Insiders
Show request and completion timestamps in chat. Hover over a completion timestamp to show elapsed response time.
true
chat.notifyWindowOnConfirmation
Open in VS Code
Open in VS Code Insiders
Configure when to show an OS notification when user input is needed in a chat session: off to never show notifications, windowNotFocused (default) to show notifications only when the VS Code window is not focused, always to always show notifications.
"windowNotFocused"
chat.notifyWindowOnResponseReceived
Open in VS Code
Open in VS Code Insiders
Configure when to show an OS notification when a chat response is received: off to never show notifications, windowNotFocused (default) to show notifications only when the VS Code window is not focused, always to always show notifications.
"windowNotFocused"
chat.requestQueuing.defaultAction
Open in VS Code
Open in VS Code Insiders
Configure the default action for the Send button while a request is in progress: queue adds the message to the queue, steer signals the current request to yield.
"queue"
chat.tools.terminal.autoReplyToPrompts
Open in VS Code
Open in VS Code Insiders
Automatically reply to terminal prompts with a default answer.
false
setting(chat.tools.terminal.terminalProfile.&lt;platform&gt;)
Configure which terminal profile to use for chat terminal commands on each platform.
""
chat.hookFilesLocations
Open in VS Code
Open in VS Code Insiders
(Preview)
Configure additional hook file locations. Specify paths to folders (loads all *.json files) or direct paths to .json files. Only relative paths and tilde paths are supported.
{}
chat.useCustomAgentHooks
Open in VS Code
Open in VS Code Insiders
(Preview)
Enable agent-scoped hooks defined in custom agent frontmatter. When enabled, hooks in .agent.md files run only when that agent is active.
false
chat.useAgentsMdFile
Open in VS Code
Open in VS Code Insiders
Enable or disable using AGENTS.md files as context for chat requests.
true
chat.math.enabled
Open in VS Code
Open in VS Code Insiders
Enable or disable math rendering with KaTeX in chat.
false
chat.subagents.allowInvocationsFromSubagents
Open in VS Code
Open in VS Code Insiders
Enable subagents to invoke other subagents, up to a maximum nesting depth of five.
false
chat.subagents.useRichRendering
Open in VS Code
Open in VS Code Insiders
Open each subagent in its own editor instead of showing its full activity inline in the parent chat.
true
chat.viewTitle.enabled
Open in VS Code
Open in VS Code Insiders
(Preview)
Show the title of the current chat session in the chat header.
true
github.copilot.chat.codesearch.enabled
Open in VS Code
Open in VS Code Insiders
(Preview)
When using #codebase in the prompt, the agent automatically discovers relevant files to be edited.
false
chat.emptyState.history.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Show recent chat history in the empty state of the Chat view.
false
imageCarousel.chat.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enable the image carousel for browsing images from chat responses. Select image pills in tool results or assistant messages to open a carousel view.
false
chat.sendElementsToChat.enabled
Open in VS Code
Open in VS Code Insiders
Enable sending elements from the integrated browser to the chat view as context.
true
chat.sendElementsToChat.attachCSS
Open in VS Code
Open in VS Code Insiders
Include CSS styles when adding elements from the integrated browser to chat context.
true
chat.sendElementsToChat.attachImages
Open in VS Code
Open in VS Code Insiders
Include images when adding elements from the integrated browser to chat context.
true
workbench.browser.enableChatTools
Open in VS Code
Open in VS Code Insiders
Enable browser tools that let agents interact with pages in the integrated browser.
true
chat.useClaudeMdFile
Open in VS Code
Open in VS Code Insiders
Enable or disable using CLAUDE.md files as always-on custom instructions.
true
chat.useNestedAgentsMdFiles
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enable or disable using AGENTS.md files in subfolders of your workspace as context for chat requests.
false
github.copilot.chat.customOAIModels
Open in VS Code
Open in VS Code Insiders
(Deprecated)
Configure custom OpenAI-compatible models for chat. Deprecated in favor of the Custom Endpoint provider, which supports Chat Completions, Responses, and Messages APIs.
[]
chat.utilityModel
Open in VS Code
Open in VS Code Insiders
Override the language model used for built-in utility flows, such as generating titles, summaries, and fallback responses.
"Default"
chat.utilitySmallModel
Open in VS Code
Open in VS Code Insiders
Override the language model used for fast, lightweight utility flows, such as commit messages, rename suggestions, and intent detection. A fast, inexpensive model is recommended.
"Default"
chat.byokUtilityModelDefault
Open in VS Code
Open in VS Code Insiders
Control which model built-in utility flows use when the main agent model is a BYOK model. Choose the main agent model, GitHub Copilot utility models, or no default utility model. Has no effect when the main agent model is provided by GitHub Copilot.
"GitHub Copilot"
github.copilot.chat.edits.suggestRelatedFilesFromGitHistory
Open in VS Code
Open in VS Code Insiders
(Experimental)
Suggest related files from git history in chat context.
true
github.copilot.chat.localIndex.enabled
Open in VS Code
Open in VS Code Insiders
Enable local session tracking for session insights and /chronicle commands.
true
chat.sessionSync.enabled
Open in VS Code
Open in VS Code Insiders
Enable session sync to GitHub.com. When enabled, Copilot session data syncs to your GitHub account for cross-device access. Requires
github.copilot.chat.localIndex.enabled
Open in VS Code
Open in VS Code Insiders
to also be enabled.
true
chat.sessionSync.excludeRepositories
Open in VS Code
Open in VS Code Insiders
Repository patterns to exclude from session sync. Use exact owner/repo names or glob patterns like my-org/*. Sessions from matching repositories are stored locally only.
[]
Agent settings
Setting and Description
Default
chat.agent.enabled
Open in VS Code
Open in VS Code Insiders
Enable or disable using agents (requires VS Code 1.99 or later).
true
chat.agent.maxRequests
Open in VS Code
Open in VS Code Insiders
Maximum number of requests that the agent can make.
25
github.copilot.chat.agent.autoFix
Open in VS Code
Open in VS Code Insiders
Automatically diagnose and fix issues in the generated code changes.
true
chat.mcp.access
Open in VS Code
Open in VS Code Insiders
Manage which Model Context Protocol (MCP) servers can be used in VS Code.
true
chat.mcp.discovery.enabled
Open in VS Code
Open in VS Code Insiders
Configure automatic discovery of MCP server configuration from other applications.
false
chat.mcp.serverSampling
Open in VS Code
Open in VS Code Insiders
Configure which models are exposed to MCP servers for sampling.
{}
chat.mcp.apps.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enable or disable MCP Apps, which are rich user interfaces provided by MCP servers.
true
chat.tools.compressOutput.enabled
Open in VS Code
Open in VS Code Insiders
(Preview)
Compress large terminal output before sending it to the model to reduce context window usage. Collapses unchanged diff hunks, drops lockfile diffs, and strips install progress.
false
chat.tools.riskAssessment.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Show an AI-generated risk badge on terminal command confirmations, indicating whether a command is safe, requires caution, or should be reviewed carefully.
true
chat.tools.terminal.autoApprove
Open in VS Code
Open in VS Code Insiders
Control which terminal commands are auto-approved when using agents. Commands can be set to true (auto-approve) or false (require approval). Regular expressions can be used by wrapping patterns in / characters.
{ "rm": false, "rmdir": false, "del": false, "kill": false, "curl": false, "wget": false, "eval": false, "chmod": false, "chown": false, "/^Remove-Item\\b/i": false }
chat.tools.terminal.enableAutoApprove
Open in VS Code
Open in VS Code Insiders
Enable or disable automatic approval of terminal commands.
true
chat.tools.edits.autoApprove
Open in VS Code
Open in VS Code Insiders
Configure which files require approval before edits are applied. Uses glob patterns to match file paths in your workspace.
{}
chat.tools.terminal.outputLocation
Open in VS Code
Open in VS Code Insiders
(Experimental)
Configure where terminal command output appears: inline in chat or in the integrated terminal.
"chat"
chat.tools.terminal.enforceTimeoutFromModel
Open in VS Code
Open in VS Code Insiders
(Experimental)
Control whether to enforce the timeout value that the agent specifies for terminal commands. When enabled, the agent stops tracking the command after the specified duration and returns the output collected so far.
true
chat.tools.terminal.ignoreDefaultAutoApproveRules
Open in VS Code
Open in VS Code Insiders
Ignore the default auto-approve rules for terminal commands.
false
chat.tools.global.autoApprove
Open in VS Code
Open in VS Code Insiders
Automatically approve all tools - this setting disables critical security protections.
false
chat.assistedPermissions.enabled
Open in VS Code
Open in VS Code Insiders
Show Assisted permissions in the permissions picker for agents that run on the Agent Host. An LLM judge evaluates the risk of each tool call and asks for your approval when it does not approve a call.
true (Insiders)
false (Stable)
chat.permissions.default
Open in VS Code
Open in VS Code Insiders
(Experimental)
Set the default permission level for new chat sessions. Options: default (Default Approvals), autoApprove (Bypass Approvals), autopilot (Autopilot). You can still change the permission level per session. On the Agent Host, Autopilot is selected as an agent mode instead. If enterprise policy disables auto-approval, new sessions use Default Approvals.
"default"
chat.autopilot.advanced.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enable Advanced Autopilot, where a separate model evaluates whether your request is complete after each Autopilot turn and guides the next turn, instead of relying on the agent to signal completion.
false
chat.tools.urls.autoApprove
Open in VS Code
Open in VS Code Insiders
Control which URL requests and responses are auto-approved.
[]
chat.agent.thinking.collapsedTools
Open in VS Code
Open in VS Code Insiders
(Experimental)
Configure how tool calls are grouped with thinking content: off keeps tool calls separate, withThinking groups them only when thinking is present, and always always groups tool calls in collapsible sections.
always
chat.agent.thinkingStyle
Open in VS Code
Open in VS Code Insiders
(Experimental)
Configure how thinking is rendered in chat: collapsed collapses thinking by default and can separate reasoning from grouped tool calls, collapsedPreview starts expanded and collapses after non-thinking content appears, and fixedScrolling shows thinking in a fixed-height auto-scrolling panel that you can expand.
fixedScrolling
chat.mcp.autostart
Open in VS Code
Open in VS Code Insiders
(Experimental)
Automatically start MCP servers when MCP configuration changes are detected.
newAndOutdated
chat.tools.eligibleForAutoApproval
Open in VS Code
Open in VS Code Insiders
(Experimental)
Configure which tools require manual approval before they can be used by agents.
[]
chat.tools.terminal.blockDetectedFileWrites
Open in VS Code
Open in VS Code Insiders
(Experimental)
Require user approval for terminal commands that perform file writes outside the workspace. Writes to the OS temporary folder (/tmp on macOS and Linux, %TEMP% on Windows) are exempt when session-level command approval is active.
outsideWorkspace
chat.agent.sandbox.enabled
Open in VS Code
Open in VS Code Insiders
(Preview)
Enable sandboxing for agent commands executed by the agent (macOS and Linux only). Possible values: off (disabled), on (full file system and network isolation), allowNetwork (file system isolation only, all outbound network traffic is allowed). When enabled, commands are auto-approved and have restricted access.
off
chat.agent.sandbox.fileSystem.linux
Open in VS Code
Open in VS Code Insiders
(Preview)
Configure file system access rules for sandboxed agent commands on Linux. Supports allowRead, allowWrite, denyRead, and denyWrite properties.
{}
chat.agent.sandbox.fileSystem.mac
Open in VS Code
Open in VS Code Insiders
(Preview)
Configure file system access rules for sandboxed agent commands on macOS. Supports allowRead, allowWrite, denyRead, and denyWrite properties.
{}
chat.agent.networkFilter
Open in VS Code
Open in VS Code Insiders
Enable network domain filtering for agent tools (fetch tool, integrated browser). When enabled, network access is restricted according to
chat.agent.allowedNetworkDomains
Open in VS Code
Open in VS Code Insiders
and
chat.agent.deniedNetworkDomains
Open in VS Code
Open in VS Code Insiders
. When disabled, no filtering is applied.
false
chat.agent.allowedNetworkDomains
Open in VS Code
Open in VS Code Insiders
Configure allowed domains for network access by agent tools. Only takes effect when
chat.agent.networkFilter
Open in VS Code
Open in VS Code Insiders
is enabled. When sandboxing is also enabled, these rules additionally apply to terminal commands. When both allowed and denied lists are empty, all domains are blocked. Supports wildcards like *.example.com.
[]
chat.agent.deniedNetworkDomains
Open in VS Code
Open in VS Code Insiders
Configure denied domains for network access by agent tools. Only takes effect when
chat.agent.networkFilter
Open in VS Code
Open in VS Code Insiders
is enabled. Denied domains take precedence over allowed domains. Supports wildcards like *.example.com.
[]
github.copilot.chat.newWorkspaceCreation.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enable the tool for scaffolding a new workspace in chat.
true
chat.planWidget.inlineEditor.enabled
Open in VS Code
Open in VS Code Insiders
Use an inline editor inside the plan control to edit plans, instead of opening a separate editor tab.
true
chat.planAgent.defaultModel
Open in VS Code
Open in VS Code Insiders
Select a default language model for the plan agent.
"Auto (Vendor Default)"
github.copilot.chat.implementAgent.model
Open in VS Code
Open in VS Code Insiders
(Experimental)
Select the language model used for the implementation step after planning.
``
github.copilot.chat.planAgent.additionalTools
Open in VS Code
Open in VS Code Insiders
(Experimental)
Give the plan agent access to additional tools during research and planning phases.
[]
github.copilot.chat.additionalReadAccessFolders
Open in VS Code
Open in VS Code Insiders
Grant read-only access to additional folders outside the current workspace for built-in agent tools.
[]
github.copilot.chat.claudeAgent.enabled
Open in VS Code
Open in VS Code Insiders
Enable or disable support for Claude agent sessions powered by Anthropic's Claude Agent SDK.
true
github.copilot.chat.claudeAgent.allowDangerouslySkipPermissions
Open in VS Code
Open in VS Code Insiders
Bypass all permission checks for the Claude agent. Only enable this in isolated sandbox environments.
false
github.copilot.chat.agent.thinkingTool
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enable the thinking tool when using agents.
false
github.copilot.chat.summarizeAgentConversationHistory.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Automatically summarize the agent conversation history when the context window is full.
true
github.copilot.chat.virtualTools.threshold
Open in VS Code
Open in VS Code Insiders
(Experimental)
Tool count over which virtual tools should be used. Virtual tools group similar sets of tools together and enable the model to activate them on-demand. Enables you to go beyond the limit of 128 tools for a chat request.
128
Memory settings
Setting and Description
Default
chat.tools.memory.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enable the memory tool so agents can save and recall notes across conversations.
true
chat.copilotMemory.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Store repository memory in Copilot Memory instead of local files, so it's shared across Copilot surfaces. Requires Copilot Memory to be enabled for the repository in your GitHub settings. User and session memory always remain local.
false
Agent sessions
The Agents view provides a centralized location for managing both local chat conversations and remote coding agent sessions. This view enables you to work with multiple AI sessions simultaneously, track their progress, and manage long-running tasks efficiently.
Setting and Description
Default
workbench.startupEditor
Open in VS Code
Open in VS Code Insiders
Configure the VS Code welcome page to act as your agent sessions entry point. Set to agentSessionsWelcomePage to show the VS Code welcome page with recent sessions, embedded chat, and quick actions.
N/A
chat.viewSessions.enabled
Open in VS Code
Open in VS Code Insiders
Show the agent sessions list in the Chat view.
true
chat.viewSessions.orientation
Open in VS Code
Open in VS Code Insiders
Control the layout orientation of the sessions list in the Chat view.
"sideBySide"
chat.agentSessions.showExternal
Open in VS Code
Open in VS Code Insiders
Control which sessions from supported external applications appear in the session lists. Values are none, recent (the two most recent from the last seven days), last24Hours, last7Days, and all.
"none"
chat.editMode.hidden
Open in VS Code
Open in VS Code Insiders
Restore the deprecated Edit mode for multi-file code edits.
true
chat.agentsControl.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enable the session status indicator in the command center. Shows unread and in-progress session badges.
true
chat.agentsControl.clickBehavior
Open in VS Code
Open in VS Code Insiders
(Experimental)
Configure the behavior when selecting the chat icon in the agent status indicator.
"cycle" (Insiders)
"default" (Stable)
chat.unifiedAgentsBar.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Replace the command center search box with a unified chat and search control.
false
sessions.layout.singlePaneDetailPanel
Open in VS Code
Open in VS Code Insiders
(Experimental)
Dock the Agents window detail panel inside the editor with a shared tab bar. Requires a window reload to take effect.
false
github.copilot.chat.cli.remote.enabled
Open in VS Code
Open in VS Code Insiders
Enable remote control support for Copilot sessions from github.com or the GitHub Mobile app.
true
chat.agentHost.allowSignedOutWhenUsable
Open in VS Code
Open in VS Code Insiders
(Experimental)
Open the Agents window without GitHub authentication when at least one registered session type can run with its own provider credentials. Providers, models, and operations that require GitHub authentication prompt you to sign in when needed.
false
chat.agentHost.byokModels.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Wire up the BYOK language model bridge so extension-provided BYOK models can run in agent host sessions. The agent host process must be restarted to take effect.
false
chat.agentHost.claudeAgent.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Register the Claude provider in the Agent Host process, so Claude sessions run on the Agent Host. The agent host process must be restarted to take effect.
true
chat.agentHost.codexAgent.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Register the Codex provider in the Agent Host process. The agent host process must be restarted to take effect.
false
chat.agents.claude.preferAgentHost
Open in VS Code
Open in VS Code Insiders
(Experimental)
Run Claude sessions opened from the Agents window on the Agent Host instead of the GitHub Copilot Chat extension.
true
chat.editor.codex.preferAgentHost
Open in VS Code
Open in VS Code Insiders
(Experimental)
Run Codex sessions opened from the sidebar chat on the Agent Host instead of the OpenAI extension. Requires
chat.agentHost.codexAgent.enabled
Open in VS Code
Open in VS Code Insiders
.
false
Inline chat settings
Setting and Description
Default
inlineChat.defaultModel
Open in VS Code
Open in VS Code Insiders
Configure the default language model for editor inline chat. The model you select persists during the session, but resets to this configured default after VS Code reloads.
N/A
inlineChat.askInChat
Open in VS Code
Open in VS Code Insiders
When a file belongs to an active chat editing session, use "Ask in Chat" in the Chat view instead of opening regular inline chat when you press ⌘I (Windows, Linux Ctrl+I). When disabled, always opens regular inline chat.
true
inlineChat.renderMode
Open in VS Code
Open in VS Code Insiders
(Experimental)
Configure how inline chat is displayed. hover: shows inline chat in a floating overlay, zone: shows inline chat in a dedicated zone in the editor.
"hover"
inlineChat.finishOnType
Open in VS Code
Open in VS Code Insiders
Finish an editor inline chat session when typing outside of changed regions.
false
inlineChat.holdToSpeech
Open in VS Code
Open in VS Code Insiders
Holding the editor inline chat keyboard shortcut (⌘I (Windows, Linux Ctrl+I)) automatically enables speech recognition.
true
editor.inlineSuggest.syntaxHighlightingEnabled
Open in VS Code
Open in VS Code Insiders
Show syntax highlighting for inline suggestions.
true
inlineChat.affordance
Open in VS Code
Open in VS Code Insiders
(Experimental)
Show a visual hint when you select text to help start inline chat. off: no hint, gutter: shows in line number area, editor: shows at cursor position with lightbulb.
"off"
inlineChat.lineEmptyHint
Open in VS Code
Open in VS Code Insiders
(Experimental)
Show a hint for editor inline chat on an empty line.
false
inlineChat.lineNaturalLanguageHint
Open in VS Code
Open in VS Code Insiders
(Experimental)
Trigger editor inline chat as soon as a line mostly consists of words.
true
github.copilot.chat.editor.temporalContext.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Include recently viewed and edited files in the context for editor inline chat.
false
Code review settings
Setting and Description
Default
github.copilot.chat.reviewSelection.enabled
Open in VS Code
Open in VS Code Insiders
(Preview)
Enable code review with AI for an editor text selection.
true
github.copilot.chat.reviewSelection.instructions
Open in VS Code
Open in VS Code Insiders
(Preview)
Custom instructions that are added to requests for reviewing the current editor selection with AI.
[]
Source control settings
Setting and Description
Default
git.addAICoAuthor
Open in VS Code
Open in VS Code Insiders
Append a Co-authored-by: Git trailer to commit messages for AI-generated changes. Options: off (no trailer), chatAndAgent (trailer for Copilot Chat or agent mode changes), all (trailer for all AI-generated code, including inline completions). See AI co-author attribution.
"chatAndAgent"
Custom instructions settings
Setting and Description
Default
chat.instructionsFilesLocations
Open in VS Code
Open in VS Code Insiders
Locations to search for custom instructions files. Each folder is searched recursively, including subdirectories. Relative paths are resolved from the root folder(s) of your workspace. Supports glob patterns for file paths.
{ ".github/instructions": true, "~/.claude/rules": false" }
chat.includeApplyingInstructions
Open in VS Code
Open in VS Code Insiders
Automatically add instruction files with a matching applyTo pattern to chat requests.
true
chat.includeReferencedInstructions
Open in VS Code
Open in VS Code Insiders
Automatically add instruction files referenced via Markdown links to chat requests.
false
github.copilot.chat.codeGeneration.useInstructionFiles
Open in VS Code
Open in VS Code Insiders
Automatically add custom instructions from .github/copilot-instructions.md to chat requests.
true
github.copilot.chat.commitMessageGeneration.instructions
Open in VS Code
Open in VS Code Insiders
(Experimental)
Custom instructions for generating commit messages with AI.
[]
github.copilot.chat.pullRequestDescriptionGeneration.instructions
Open in VS Code
Open in VS Code Insiders
(Experimental)
Custom instructions for generating pull request titles and descriptions with AI.
[]
github.copilot.chat.organizationInstructions.enabled
Open in VS Code
Open in VS Code Insiders
Enable discovery of custom instructions defined at the GitHub organization level.
true
chat.useCustomizationsInParentRepositories
Open in VS Code
Open in VS Code Insiders
Enable discovery of agent customizations (instructions, prompts, agents, skills, hooks) in parent repository folders. Useful for monorepo setups where you open a subfolder rather than the repository root.
false
Reusable prompt files settings
Setting and Description
Default
chat.promptFilesLocations
Open in VS Code
Open in VS Code Insiders
Locations to search for prompt files. Relative paths are resolved from the root folder(s) of your workspace. Supports glob patterns for file paths.
{ ".github/prompts": true }
chat.promptFilesRecommendations
Open in VS Code
Open in VS Code Insiders
Enable or disable prompt file recommendations when opening a new chat session. List of key-value pairs of prompt file name and boolean or when clause.
[]
chat.customizations.promptMigration.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Show the one-time affordance in the Agent Customizations editor to convert prompt files to agent skills for Agent Host harnesses, which don't use prompt files.
false
Custom agents settings
Setting and Description
Default
chat.agentFilesLocations
Open in VS Code
Open in VS Code Insiders
Locations to search for custom agent files. Relative paths are resolved from the root folder(s) of your workspace. Supports home directory expansion (~) for user-specific paths.
{ ".github/agents": true }
github.copilot.chat.cli.customAgents.enabled
Open in VS Code
Open in VS Code Insiders
Enable using custom agents in Copilot sessions.
false
github.copilot.chat.organizationCustomAgents.enabled
Open in VS Code
Open in VS Code Insiders
Enable discovery of custom agents defined at the GitHub organization level.
true
Agent skills settings
Setting and Description
Default
chat.useAgentSkills
Open in VS Code
Open in VS Code Insiders
Enable support for agent skills in VS Code.
true
chat.agentSkillsLocations
Open in VS Code
Open in VS Code Insiders
Locations to search for agent skills. Relative paths are resolved from the root folder(s) of your workspace. Supports home directory expansion (~) for user-specific paths.
"chat.agentSkillsLocations": { ".github/skills": true,".claude/skills": true,"~/.copilot/skills": true,"~/.claude/skills": true}
github.copilot.chat.skillTool.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enable the dedicated skill tool for invoking agent skills. Required to run skills with context: fork in a separate subagent context.
false
Observability settings
Setting and Description
Default
github.copilot.chat.otel.enabled
Open in VS Code
Open in VS Code Insiders
Enable OpenTelemetry emission for Copilot Chat agent interactions.
false
github.copilot.chat.otel.exporterType
Open in VS Code
Open in VS Code Insiders
OTel exporter type: otlp-http, otlp-grpc, console, or file.
"otlp-http"
github.copilot.chat.otel.otlpEndpoint
Open in VS Code
Open in VS Code Insiders
OTLP collector endpoint URL.
"http://localhost:4318"
github.copilot.chat.otel.outfile
Open in VS Code
Open in VS Code Insiders
File path for JSON-lines output when using the file exporter type.
""
github.copilot.chat.otel.captureContent
Open in VS Code
Open in VS Code Insiders
Capture full prompt and response content in OTel spans. May include sensitive information.
false
Agent plugins settings
Setting and Description
Default
chat.plugins.enabled
Open in VS Code
Open in VS Code Insiders
Enable or disable support for agent plugins.
false
chat.plugins.marketplaces
Open in VS Code
Open in VS Code Insiders
(Experimental)
Configure additional plugin marketplace Git repositories for discovering agent plugins.
["github/copilot-plugins", "github/awesome-copilot"]
chat.plugins.enabledPlugins
Open in VS Code
Open in VS Code Insiders
Allowlist of plugin IDs to enable or disable. Can be centrally managed through enterprise policy.
{}
chat.plugins.strictMarketplaces
Open in VS Code
Open in VS Code Insiders
(Experimental)
Trust only marketplaces supplied by enterprise policy.
false
chat.pluginLocations
Open in VS Code
Open in VS Code Insiders
(Experimental)
Register locally cloned or downloaded agent plugins by mapping directory paths to an enabled or disabled state.
{}
Debugging settings
Setting and Description
Default
github.copilot.chat.agentDebugLog.enabled
Open in VS Code
Open in VS Code Insiders
Enable the agent debug logs and the /troubleshoot slash command for inspecting chat sessions.
false
github.copilot.chat.agentDebugLog.fileLogging.enabled
Open in VS Code
Open in VS Code Insiders
Enable file logging for agent debug logs, which writes debug events to a file on disk.
false
github.copilot.chat.startDebugging.enabled
Open in VS Code
Open in VS Code Insiders
(Preview)
Enables the experimental /startDebugging intent in the Chat view to generate debugging configuration.
true
github.copilot.chat.copilotDebugCommand.enabled
Open in VS Code
Open in VS Code Insiders
(Preview)
Enables the copilot-debug terminal command.
true
Testing settings
Setting and Description
Default
github.copilot.chat.generateTests.codeLens
Open in VS Code
Open in VS Code Insiders
(Experimental)
Show Generate tests code lens for symbols that are not covered by current test coverage information.
false
github.copilot.chat.setupTests.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enables the experimental /setupTests intent and prompting in /tests generation.
true
Notebook settings
Setting and Description
Default
notebook.experimental.generate
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enable the Generate action to create code cells with notebook inline chat.
true
github.copilot.chat.edits.newNotebook.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Enable the notebook tool in Edit mode (deprecated) to create a new notebook file.
true
github.copilot.chat.notebook.followCellExecution.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Show the currently executing cell in the editor.
false
Dictation settings
Setting and Description
Default
dictation.enabled
Open in VS Code
Open in VS Code Insiders
(Experimental)
Controls whether built-in dictation is available in chat, the Agents window, editors, and terminals.
true
dictation.model
Open in VS Code
Open in VS Code Insiders
(Experimental)
Selects the speech recognition model for dictation.
"nemotron-3.5-asr-streaming-0.6b"
dictation.showTranscript
Open in VS Code
Open in VS Code Insiders
(Experimental)
Shows interim transcription while you speak. Final text is still inserted when this setting is off.
true
dictation.experimental.llmCleanup
Open in VS Code
Open in VS Code Insiders
(Experimental)
Uses a language model to improve punctuation, capitalization, paragraphs, lists, and number formatting in the final transcript.
true
agents.voice.language
Open in VS Code
Open in VS Code Insiders
Provides a language hint for dictation and Voice Mode. Use auto to use the system language.
"auto"
Accessibility settings
Setting and Description
Default
inlineChat.accessibleDiffView
Open in VS Code
Open in VS Code Insiders
Whether the Inline Chat also renders an accessible diff viewer for its changes.
"auto"
accessibility.signals.chatRequestSent
Open in VS Code
Open in VS Code Insiders
Plays a signal - sound (audio cue) and/or announcement (alert) - when a chat request is made.
{ "sound": "auto", "announcement": "auto" }
accessibility.signals.chatResponseReceived
Open in VS Code
Open in VS Code Insiders
Plays a sound / audio cue when the response has been received.
{ "sound": "auto" }
accessibility.signals.chatEditModifiedFile
Open in VS Code
Open in VS Code Insiders
Plays a sound / audio cue when the file has been modified by chat edits.
{ "sound": "auto" }
accessibility.signals.chatUserActionRequired
Open in VS Code
Open in VS Code Insiders
Plays a sound / audio cue when the user needs to take an action in chat.
{ "sound": "auto", "announcement": "auto" }
accessibility.signals.lineHasInlineSuggestion
Open in VS Code
Open in VS Code Insiders
Plays a sound / audio cue when the cursor is on a line that has an inline suggestion.
{ "sound": "auto" }
accessibility.signals.nextEditSuggestion
Open in VS Code
Open in VS Code Insiders
Plays a sound / audio cue when a next edit suggestion is available.
{ "sound": "auto", "announcement": "auto" }
accessibility.verboseChatProgressUpdates
Open in VS Code
Open in VS Code Insiders
Provide verbose updates about chat activity.
true
accessibility.verbosity.inlineChat
Open in VS Code
Open in VS Code Insiders
Provide information about how to access the inline editor chat accessibility help menu and alert with hints that describe how to use the feature when the input is focused.
true
accessibility.verbosity.inlineCompletions
Open in VS Code
Open in VS Code Insiders
Provide information about how to access the inline suggestions hover and Accessible View.
true
accessibility.verbosity.panelChat
Open in VS Code
Open in VS Code Insiders
Provide information about how to access the chat help menu when the chat input is focused.
true
accessibility.voice.keywordActivation
Open in VS Code
Open in VS Code Insiders
Controls whether the keyword phrase 'Hey Code' is recognized to start a voice chat session.
"off"
accessibility.voice.autoSynthesize
Open in VS Code
Open in VS Code Insiders
Controls whether a textual response should automatically be read out aloud when speech was used as input.
"off"
accessibility.voice.speechTimeout
Open in VS Code
Open in VS Code Insiders
Stops terminal dictation after the specified number of milliseconds of silence. Set to 0 to keep listening.
0
Related resources
Get a quick overview of the AI features in VS Code
8/19/2026
Support
Privacy
Manage Cookies
Terms of Use
License
Your Privacy Choices
Consumer Health Privacy

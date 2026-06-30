# Universal AI Execution Kernel 🧠⚙️

A polyvalent "Operating System" designed to govern AI Coding Agents (like Pi, Cursor, Cline). It prevents hallucinations, forces strict architectural adherence, and turns conversational AI into a disciplined, execution-oriented software engineer.

## The Polymorphic Advantage
Unlike hardcoded boilerplates, this Kernel is **polymorphic**. It dynamically adapts to the stack, framework, and language of any repository it is placed in. It does this by enforcing an execution cycle: *Contextualize -> Plan -> Execute -> Verify -> Finalize*.

---

## 🚀 Demo / Proof of Concept

Imagine you have a messy Next.js (or Python, or Rust) repository with a `TODO.md` file. Without this kernel, an AI might try to fix everything at once, break your build, or use the wrong libraries.

### Step 1: Install the Kernel
Simply drop this repository into your project root as a sub-folder (or submodule).
```bash
git submodule add https://github.com/JPatronC92/universal-ai-kernel.git
```

### Step 2: Initialize the Agent with a Skill
Instead of an open-ended prompt, invoke your AI agent (e.g., `pi`) pointing directly to the Kernel's Standard Operating Procedures (SOPs):

```bash
# Example using Pi Coding Agent
pi --skill universal-ai-kernel/skills/roadmap-executor "Start executing our sprint TODO.md"
```

### Step 3: Watch the Governed Execution
Because the AI reads `AGENTS.md` and the `roadmap-executor` skill, it will:
1. Refuse to write code before reading your project's architecture.
2. Pick **only the first item** in `TODO.md`.
3. Plan the change.
4. Execute and test.
5. Stop and ask for permission to proceed to task #2.

---

## 📂 Core Structure

- `AGENTS.md`: The supreme mandate. Overrides the AI's default helpful/chatty personality with strict engineering discipline.
- `skills/`:
  - `roadmap-executor`: Forces sequential task execution without context loss.
  - `api-integration-tests`: Universal SOP for testing external/internal boundaries.
  - `core-hardening`: SOP for security patches and deep refactoring.
  - `productization-release`: CI/CD and production-readiness checklists.

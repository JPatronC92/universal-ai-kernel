#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "🧠 Starting Universal AI Kernel Structural Validation..."

KERNEL_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILLS_DIR="$KERNEL_ROOT/skills"
REQUIRED_FILES=("purpose.md" "when_to_use.md" "checklist.md" "definition_of_done.md")

# 1. Check Core OS Files
if [ ! -f "$KERNEL_ROOT/AGENTS.md" ]; then
    echo "❌ ERROR: AGENTS.md (The Kernel OS) is missing!"
    exit 1
fi
echo "✅ AGENTS.md exists."

if [ ! -f "$KERNEL_ROOT/README.md" ]; then
    echo "❌ ERROR: README.md is missing!"
    exit 1
fi
echo "✅ README.md exists."

# 2. Check Skills Structure
echo "🔍 Validating Skills Structure in $SKILLS_DIR..."

if [ ! -d "$SKILLS_DIR" ]; then
    echo "❌ ERROR: skills/ directory is missing!"
    exit 1
fi

ERROR_COUNT=0

for SKILL_PATH in "$SKILLS_DIR"/*; do
    if [ -d "$SKILL_PATH" ]; then
        SKILL_NAME=$(basename "$SKILL_PATH")
        echo "   -> Checking skill: $SKILL_NAME"
        
        for REQ_FILE in "${REQUIRED_FILES[@]}"; do
            if [ ! -f "$SKILL_PATH/$REQ_FILE" ]; then
                echo "      ❌ Missing required file: $REQ_FILE in skill '$SKILL_NAME'"
                ERROR_COUNT=$((ERROR_COUNT + 1))
            fi
        done
    fi
done

if [ $ERROR_COUNT -gt 0 ]; then
    echo "❌ Validation failed: $ERROR_COUNT missing required files in skills."
    exit 1
else
    echo "✅ All skills comply with the Standard Operating Procedure (SOP) format."
    echo "🎉 Kernel Validation Passed Successfully!"
    exit 0
fi

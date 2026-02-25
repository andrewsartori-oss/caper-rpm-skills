#!/bin/bash
# Test script for marketplace installation
# Run this AFTER exiting your current Claude session

set -e

echo "🧪 Testing Caper RPM Skills Marketplace"
echo "========================================"
echo ""

# Move to a neutral directory
cd /tmp

echo "📍 Current directory: $(pwd)"
echo ""

echo "🚀 Step 1: Adding marketplace..."
echo "   Command: /plugin marketplace add andrewsartori-oss/caper-rpm-skills"
echo ""
claude --print "/plugin marketplace add andrewsartori-oss/caper-rpm-skills" || {
    echo "⚠️  Note: You may need to approve the marketplace addition"
}

echo ""
echo "📋 Step 2: Listing marketplaces..."
echo "   Command: /plugin marketplace list"
echo ""
claude --print "/plugin marketplace list"

echo ""
echo "📦 Step 3: Installing plugin..."
echo "   Command: /plugin install caper-rpm-tools@caper-rpm-skills"
echo ""
claude --print "/plugin install caper-rpm-tools@caper-rpm-skills" || {
    echo "⚠️  Note: You may need to approve the plugin installation"
}

echo ""
echo "✅ Step 4: Verifying installation..."
echo "   Command: /plugin list"
echo ""
claude --print "/plugin list"

echo ""
echo "🎉 Testing complete!"
echo ""
echo "To use the skills, start Claude and try:"
echo "  /factsheet HGG prod-hgg-1"
echo "  /launch-report Clarks prod-clarks-1"
echo ""

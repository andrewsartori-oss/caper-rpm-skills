# Manual Marketplace Testing Guide

The `/plugin` commands only work in **interactive Claude sessions**, not with `claude --print`.

## Test Steps

### 1. Start Claude in Interactive Mode

```bash
cd /tmp
claude
```

### 2. Add the Marketplace

In the Claude prompt, type:

```
/plugin marketplace add andrewsartori-oss/caper-rpm-skills
```

**Expected Result:**
- ✅ Success message saying marketplace was added, OR
- ✅ Approval prompt asking you to confirm

### 3. List Marketplaces (Verify)

```
/plugin marketplace list
```

**Expected Result:**
- ✅ Should show `caper-rpm-skills` in the list

### 4. Install the Plugin

```
/plugin install caper-rpm-tools@caper-rpm-skills
```

**Expected Result:**
- ✅ Success message saying plugin was installed, OR
- ✅ Approval prompt asking you to confirm

### 5. Verify Installation

```
/plugin list
```

**Expected Result:**
- ✅ Should show `caper-rpm-tools@caper-rpm-skills` as enabled

### 6. Test a Skill

```
what skills are available?
```

**Expected Result:**
- ✅ Should show skills including: `factsheet`, `launch-report`, `get-to-green`, `green-todo`, `launch-checklist`, `blindspot`, `changelog-weekly`

### 7. Test Running a Skill (Optional)

```
/factsheet HGG all
```

**Expected Result:**
- ✅ Skill starts executing and searches Glean for HGG information

## Troubleshooting

### "Unknown skill: plugin"
- ✅ **Fixed**: Don't use `claude --print` - use interactive mode instead
- Start Claude with just `claude` (no flags)

### "Marketplace not found"
- Check you have GitHub access to the repo
- Verify you're on VPN (Tailscale)

### "Permission denied"
- Some operations may require approval
- Look for approval prompts in the Claude interface

### Skills not showing up
- Try: `/plugin list` to verify installation
- Try: `what skills are available?` to see all skills
- Restart Claude if needed

## Success Criteria

✅ Marketplace added successfully
✅ Plugin installed successfully
✅ Skills are visible and invokable
✅ Can run at least one skill (e.g., `/factsheet HGG all`)

If all checkboxes pass, **the marketplace is working correctly**! 🎉

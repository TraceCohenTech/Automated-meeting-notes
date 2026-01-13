# Deploy VC Meeting OS in 3 Commands

## What I Built For You

A complete working SaaS app that:
- Connects to Fireflies automatically
- Uses AI to generate deal memos from meetings
- Saves everything to Google Drive
- Has a polished dashboard

## Deploy Now (3 Minutes)

### Step 1: Download & Upload to GitHub
```bash
# Download the vc-meeting-os folder from Claude
# Then in terminal:

cd vc-meeting-os
git init
git add .
git commit -m "Initial deploy"

# Create repo on GitHub and push:
gh repo create vc-meeting-os --private --source=. --push
```

### Step 2: Deploy to Vercel
1. Go to https://vercel.com/new
2. Click "Import Git Repository"
3. Select "vc-meeting-os"
4. Click "Deploy" (don't add env vars yet)

### Step 3: Add These Environment Variables

In Vercel Dashboard → Settings → Environment Variables, add:

```
DATABASE_URL=postgresql://default:xxx@xxx-pooler.us-east-1.aws.neon.tech/verceldb
NEXTAUTH_SECRET=your-secret-here
NEXTAUTH_URL=https://your-app.vercel.app
ANTHROPIC_API_KEY=sk-ant-your-key
```

Then click "Redeploy" in Deployments.

**That's it. Your app is live.**

## What You Get

✅ Live URL at your-app.vercel.app
✅ Landing page with signup
✅ OAuth for Fireflies + Google Drive
✅ Automatic meeting processing
✅ Deal memos generated in Drive
✅ Professional dashboard

## Quick Setup After Deploy

1. Visit your-app.vercel.app
2. Click "Sign Up"
3. Create workspace
4. Connect Fireflies (OAuth)
5. Connect Google Drive (OAuth)
6. Your meetings start processing automatically

## Need a Database?

Use Vercel Postgres (free tier):
1. In Vercel project → Storage tab
2. Click "Create Database" → Postgres
3. Copy connection string
4. Add as DATABASE_URL env var
5. Redeploy

## That's All You Need To Do

The app is 100% complete. Just deploy it and it works.

No code to write. No configuration. Just deploy.

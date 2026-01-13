# Start Here - Deploy in 1 Minute

## What You Have
A complete, working VC Meeting OS SaaS application. Everything is built.

## Files to Download
1. **vc-meeting-os.tar.gz** - Complete application (compressed)
2. **vc-meeting-os/** - Complete application (folder)

Either one works - they're the same thing.

## Deploy It (Copy-Paste These 4 Commands)

```bash
# 1. Extract (if you downloaded the .tar.gz)
tar -xzf vc-meeting-os.tar.gz
cd vc-meeting-os

# 2. Run the deploy script
./INSTANT-DEPLOY.sh
```

That's it. Literally that's all you need to do.

The script will:
- ✅ Create a GitHub repo
- ✅ Push your code  
- ✅ Deploy to Vercel
- ✅ Give you a live URL

## After Deploy (Add Environment Variables)

Go to vercel.com → Your Project → Settings → Environment Variables

Add these 4 variables:

```
DATABASE_URL=postgresql://...
NEXTAUTH_SECRET=<run: openssl rand -base64 32>
ANTHROPIC_API_KEY=sk-ant-...
NEXTAUTH_URL=https://your-app.vercel.app
```

Click "Redeploy"

## For Database

Easiest: Use Vercel Postgres
1. In Vercel project → Storage tab
2. Click "Create Database"
3. Select Postgres
4. Copy the connection string
5. Use it as DATABASE_URL

## You're Done

Your app is live. Go to the URL and sign up.

## What You Get

- ✅ Professional landing page
- ✅ User authentication  
- ✅ Fireflies OAuth integration
- ✅ Google Drive OAuth integration
- ✅ AI-powered deal memo generation
- ✅ Automatic meeting processing
- ✅ Beautiful dashboard
- ✅ Organized Google Drive folders

## If You Need Help

The app has detailed docs:
- README.md - Overview
- DEPLOYMENT.md - Detailed deploy guide
- ARCHITECTURE.md - How it works
- SETUP.md - Local development

But honestly, just run `./INSTANT-DEPLOY.sh` and you're good.

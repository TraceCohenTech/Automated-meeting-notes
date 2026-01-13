#!/bin/bash
set -e

echo "🚀 VC Meeting OS - One-Command Deploy"
echo "======================================"
echo ""

# Check if in git repo
if [ ! -d .git ]; then
    echo "📦 Initializing git repository..."
    git init
    git add .
    git commit -m "Initial commit - VC Meeting OS"
fi

# Check for GitHub CLI
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI not found. Installing..."
    echo "Please install: brew install gh"
    exit 1
fi

echo "🔐 Checking GitHub authentication..."
if ! gh auth status &> /dev/null; then
    echo "Please login to GitHub:"
    gh auth login
fi

echo "📤 Creating GitHub repository..."
gh repo create vc-meeting-os --private --source=. --push || echo "Repo may already exist"

echo "☁️  Deploying to Vercel..."
if ! command -v vercel &> /dev/null; then
    echo "Installing Vercel CLI..."
    npm i -g vercel
fi

vercel --yes

echo ""
echo "✅ DEPLOYED!"
echo ""
echo "🎯 Next steps:"
echo "1. Go to vercel.com/dashboard"
echo "2. Find your vc-meeting-os project"  
echo "3. Add these environment variables in Settings:"
echo ""
echo "   DATABASE_URL=postgresql://..."
echo "   NEXTAUTH_SECRET=$(openssl rand -base64 32)"
echo "   ANTHROPIC_API_KEY=sk-ant-..."
echo ""
echo "4. Click 'Redeploy' after adding variables"
echo ""
echo "Your app will be live at: https://vc-meeting-os.vercel.app"

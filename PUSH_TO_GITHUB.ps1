# =====================================================
# SmartHarvest – One-click GitHub push script
# Run this AFTER getting your GitHub repo URL from
# Vercel Dashboard > Settings > Git
# =====================================================

# STEP 1: Paste your GitHub repo URL below
$GITHUB_URL = "https://github.com/YOUR_USERNAME/YOUR_REPO.git"
# Example: "https://github.com/tamil-02u/hybrid.git"

# STEP 2: Run this script in PowerShell from c:\hybrid
cd c:\hybrid

# Remove any existing remote and set the correct one
git remote remove origin 2>$null
git remote add origin $GITHUB_URL

# Push to main branch (Vercel typically uses 'main')
Write-Host "Pushing to $GITHUB_URL ..." -ForegroundColor Cyan
git push -u origin master:main --force

Write-Host ""
Write-Host "SUCCESS! Check your Vercel dashboard — it should auto-deploy in ~1 minute." -ForegroundColor Green
Write-Host "Live URL: https://project-weld-alpha-52.vercel.app" -ForegroundColor Green

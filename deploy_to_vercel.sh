#!/bin/bash
# Deploy Wayne IA website to Vercel

echo "🚀 Deploying Wayne IA to Vercel..."
echo "=================================="

# Check if Vercel CLI is installed
if ! command -v vercel &> /dev/null; then
    echo "📦 Installing Vercel CLI..."
    npm install -g vercel
fi

# Set the Vercel token from the plan
export VERCEL_TOKEN="9E6h7rWxrgJsUpPcoGMAE6Tc"

# Deploy with production flag
echo "🌐 Deploying to production..."
vercel --prod --token $VERCEL_TOKEN --yes

echo ""
echo "✅ Deployment complete!"
echo ""
echo "Next steps:"
echo "1. Update DNS settings for wayneia.com"
echo "2. Point A record to Vercel IP"
echo "3. Configure domain in Vercel dashboard"
echo ""
echo "The site should be accessible at the Vercel URL immediately."
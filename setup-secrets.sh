#!/bin/bash

# ===========================================
# DreamHost Deployment Setup Script
# ===========================================

echo "======================================"
echo "DreamHost GitHub Actions Setup"
echo "======================================"

echo ""
echo "STEPS TO COMPLETE:"
echo ""
echo "1. Go to: https://github.com/santoshsadani123/portfolio/settings/secrets_and_variables/actions"
echo ""
echo "2. Click 'New repository secret' for EACH of these:"
echo ""
echo "   SECRET NAME: DREAMHOST_HOST"
echo "   VALUE: Your DreamHost server hostname"
echo "          (Find in Panel → Websites → SFTP/SSH)"
echo ""
echo "   SECRET NAME: DREAMHOST_USER"
echo "   VALUE: Your SFTP username"
echo ""
echo "   SECRET NAME: DREAMHOST_PASSWORD"
echo "   VALUE: Your SFTP password"
echo ""
echo "3. After adding all secrets, go to the 'Actions' tab"
echo "   and run the 'Deploy to DreamHost' workflow manually"
echo ""
echo "4. Test your site at: https://www.santoshsadani.com"
echo ""
echo "======================================"
echo ""

read -p "Press Enter to open the GitHub secrets page..."
open "https://github.com/santoshsadani123/portfolio/settings/secrets_and_variables/actions/new"

echo ""
echo "After adding secrets, the workflow will auto-deploy on every push to main!"
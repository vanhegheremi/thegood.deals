#!/bin/bash

# ========================================
# SCRIPT DE DÉPLOIEMENT THE GOOD DEALS
# ========================================

echo "🚀 Déploiement de The Good Deals..."
echo ""

# Demander le username GitHub si pas encore défini
read -p "Entrez votre username GitHub: " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ Username GitHub requis"
    exit 1
fi

REPO_NAME="thegooddeals-site"
REPO_URL="https://github.com/$GITHUB_USER/$REPO_NAME.git"

echo ""
echo "📦 Configuration:"
echo "   Username: $GITHUB_USER"
echo "   Repo: $REPO_NAME"
echo ""

# Initialiser Git si nécessaire
if [ ! -d ".git" ]; then
    echo "🔧 Initialisation de Git..."
    git init
    git branch -M main
fi

# Ajouter tous les fichiers
echo "📁 Ajout des fichiers..."
git add .

# Commit
echo "💾 Commit..."
read -p "Message de commit (défaut: 'Update site'): " COMMIT_MSG
COMMIT_MSG=${COMMIT_MSG:-"Update site"}
git commit -m "$COMMIT_MSG"

# Configurer le remote
if ! git remote | grep -q "origin"; then
    echo "🔗 Configuration du remote..."
    git remote add origin $REPO_URL
fi

# Push
echo "🚀 Push vers GitHub..."
git push -u origin main

echo ""
echo "✅ Déploiement terminé !"
echo ""
echo "🌐 Prochaines étapes:"
echo "   1. Va sur https://netlify.com"
echo "   2. Import from Git"
echo "   3. Sélectionne $GITHUB_USER/$REPO_NAME"
echo "   4. Deploy !"
echo ""
echo "   Ton site sera en ligne en 30 secondes ! 🎉"

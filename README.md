# The Good Deals - Site Web Complet

🌐 **Site officiel de The Good Deals** - L'application qui permet aux artisans français de fidéliser leur clientèle et de vendre en volume, sans abonnement.

## 📁 Structure du projet

```
thegooddeals-site/
├── index.html          # Page d'accueil
├── about.html          # À propos
├── contact.html        # Contact
├── cgu.html            # Conditions Générales d'Utilisation
├── privacy.html        # Politique de confidentialité
├── mentions.html       # Mentions légales
├── style.css           # Styles CSS
├── script.js           # JavaScript
├── README.md           # Ce fichier
├── .gitignore          # Fichiers à ignorer
└── deploy.sh           # Script de déploiement
```

## 🚀 Déploiement rapide

### Option 1 : GitHub + Netlify (Recommandé)

```bash
# 1. Clone ou crée ton repo
git init
git add .
git commit -m "🚀 Initial commit - Site complet The Good Deals"
git branch -M main
git remote add origin https://github.com/[username]/thegooddeals-site.git
git push -u origin main

# 2. Déploie sur Netlify
# Va sur netlify.com → Import from Git → Sélectionne le repo
```

### Option 2 : Script automatique

```bash
chmod +x deploy.sh
./deploy.sh
```

## 🎨 Personnalisation

### Couleurs

Dans `style.css`, modifier les variables CSS :

```css
:root {
    --primary: #1A4F4A;    /* Vert sapin */
    --accent: #FC661A;     /* Orange */
}
```

### URLs de l'app

Dans toutes les pages HTML, chercher et remplacer :
- `https://thegood.deals` → URL de production
- URLs login/signup selon ta config

## 📱 Pages incluses

- ✅ **Homepage** avec hero, bénéfices, FAQ, témoignages
- ✅ **À propos** avec histoire et mission
- ✅ **Contact** avec formulaire fonctionnel
- ✅ **CGU** template juridique complet
- ✅ **Politique de confidentialité** conforme RGPD
- ✅ **Mentions légales** template à personnaliser

## 🔧 Technologies

- HTML5 sémantique
- CSS3 moderne (variables, Grid, Flexbox)
- JavaScript vanilla (ES6+)
- PWA-ready (instructions d'installation intégrées)
- 100% responsive
- SEO-friendly

## 📊 Performance

- ⚡ Pas de framework lourd
- ⚡ CSS et JS externalisés
- ⚡ Images optimisées
- ⚡ Chargement < 2s

## 🐛 Support

Pour toute question : [créer une issue](https://github.com/[username]/thegooddeals-site/issues)

## 📄 License

© 2026 The Good Deals. Tous droits réservés.

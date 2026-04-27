# Portfolio Website - Santoshsadani.com

A modern, responsive portfolio website for Santosh Sadani, Digital Marketing Professional.

## Features

- 🌙 Dark/Light Theme Toggle (Default: Dark)
- 📱 Fully Responsive Design
- ✨ Smooth Animations & Transitions
- 🎨 Modern UI/UX Design
- ⚡ Fast Loading Performance
- 🔍 SEO Optimized

## Domain

- **Domain:** santoshsadani.com (www.santoshsadani.com)
- **Hosting:** DreamHost

## Project Structure

```
/
├── index.html          # Main HTML file
├── styles.css          # CSS styles
├── script.js           # JavaScript functionality
├── README.md           # This file
└── images/             # (Create this folder for images)
    └── og-image.png    # Social media preview image
```

## Deployment Instructions for DreamHost

### Method 1: DreamHost File Manager (Recommended)

1. **Login to DreamHost Panel**
   - Go to https://panel.dreamhost.com
   - Login with your credentials

2. **Navigate to Files**
   - Click "Websites" → "File Manager"

3. **Upload Files**
   - Navigate to your domain's web directory (usually `/santoshsadani.com` or `/www.santoshsadani.com`)
   - Click "Upload" button
   - Upload the following files:
     - `index.html`
     - `styles.css`
     - `script.js`
   - Create an `images` folder and upload your `og-image.png`

4. **Verify Files**
   - Ensure all files are in the correct directory
   - The `index.html` should be directly in the domain root

5. **Test Your Site**
   - Visit https://www.santoshsadani.com in your browser
   - Check for any loading errors

### Method 2: FTP/SFTP Upload

1. **Get FTP Credentials**
   - In DreamHost Panel, go to "Websites" → "SFTP / SSH"
   - Note your SFTP hostname, username, and password

2. **Connect via FTP Client**
   - Use FileZilla, Cyberduck, or any FTP client
   - Host: `santoshsadani.com` (or your server hostname)
   - Port: 22 (for SFTP)
   - Username: Your DreamHost username
   - Password: Your DreamHost password

3. **Navigate to Domain Directory**
   - Go to `/home/username/santoshsadani.com` or `/home/username/www.santoshsadani.com`

4. **Upload Files**
   - Drag and drop `index.html`, `styles.css`, and `script.js`
   - Create `images` folder and upload any images

### Method 3: Git Deployment (Advanced)

1. **Initialize Git Repository** (on your local machine)
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   ```

2. **Set Up DreamHost for Git**
   - In DreamHost Panel, go to "Websites" → "Git"
   - Create a new Git repository for your domain
   - Follow the instructions to connect your local repo

3. **Push to DreamHost**
   ```bash
   git remote add dreamhost username@santoshsadani.com:~/repo-name
   git push dreamhost main
   ```

## DreamHost DNS Configuration

### Pointing Domain to DreamHost

1. **In DreamHost Panel**
   - Go to "Domains" → "DNS"
   - Find `santoshsadani.com`
   - Ensure A records point to DreamHost servers

2. **Typical DNS Records Needed:**
   ```
   A Record:     @          → YOUR_DREAMHOST_IP
   A Record:     www       → YOUR_DREAMHOST_IP
   A Record:     mail      → YOUR_MAIL_SERVER_IP
   MX Record:    @          → mail.santoshsadani.com
   ```

3. **Wait for Propagation**
   - DNS changes can take up to 24-48 hours to propagate globally

## Post-Deployment Checklist

- [ ] All files uploaded successfully
- [ ] index.html accessible at www.santoshsadani.com
- [ ] styles.css loading correctly
- [ ] script.js functioning (animations, theme toggle)
- [ ] Social media preview image uploaded
- [ ] Favicon configured
- [ ] HTTPS enabled (DreamHost usually provides free SSL)
- [ ] Test on mobile devices
- [ ] Test contact form functionality
- [ ] Theme toggle works

## SSL/HTTPS Setup

1. **Enable SSL in DreamHost**
   - Go to "Websites" → "Secure Certificates"
   - Click "Add Let's Encrypt" for your domain
   - Follow prompts to auto-install SSL certificate

2. **Force HTTPS**
   - Create `.htaccess` file (if using Apache) with:
   ```apache
   RewriteEngine On
   RewriteCond %{HTTPS} off
   RewriteRule ^(.*)$ https://%{HTTP_HOST}%{REQUEST_URI} [L,R=301]
   ```

## Troubleshooting

### Files Not Loading
- Check file permissions (should be 644 for files, 755 for directories)
- Verify file paths in HTML are correct
- Clear browser cache

### SSL Certificate Issues
- Wait 24 hours after adding SSL
- Check "Secure Certificates" for certificate status
- Contact DreamHost support if issues persist

### DNS Not Working
- Use https://dnschecker.org to check propagation
- Ensure A records are correctly set
- Check for typos in DNS records

## Customization

### Changing Colors
Edit CSS variables in `styles.css`:
```css
:root {
    --accent-primary: #667eea;
    --accent-secondary: #764ba2;
    /* ... other variables */
}
```

### Adding Projects
Edit the projects section in `index.html` and add project images to the `images` folder.

### Updating Contact Form
The form currently shows a success animation. To make it functional, integrate with a service like:
- Formspree (formspree.io)
- Netlify Forms
- EmailJS

Example Formspree integration:
```html
<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
```

## Performance Tips

1. **Optimize Images**
   - Use WebP format for images
   - Compress images before upload
   - Use lazy loading for images

2. **Enable Caching**
   - Add to `.htaccess`:
   ```apache
   <IfModule mod_expires.c>
       ExpiresActive On
       ExpiresByType text/css "access plus 1 month"
       ExpiresByType application/javascript "access plus 1 month"
   </IfModule>
   ```

## Support

For DreamHost support:
- Email: support@dreamhost.com
- Help Center: https://help.dreamhost.com

---

**Last Updated:** April 2026
**Portfolio Owner:** Santosh Sadani
**Contact:** Santosh.sadani@outlook.com
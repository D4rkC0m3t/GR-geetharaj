# Geetha Raj — KSBC Election 2026 (Option 3: GitHub Pages)

## What’s inside
- index.html : single-page mobile-friendly website (edit anytime)
- qr_placeholder.png : QR code pointing to a placeholder URL (replace after publishing)
- poster_qr.png : a ready poster-style QR card using the same placeholder
- regenerate_qr.py : script to generate a fresh QR once your final URL is ready

## How to publish (GitHub Pages)
1) Create a GitHub account (if you don't have one).
2) Create a new public repository, e.g. `geetharaj-ksbc`.
3) Upload `index.html` to the repository root.
4) Go to Settings → Pages → Build and deployment:
   - Source: Deploy from a branch
   - Branch: main / (root)
5) Your site will appear at a URL like:
   `https://<your-username>.github.io/<repo-name>/`

## IMPORTANT (QR)
After the site URL is final, open `regenerate_qr.py` and replace FINAL_URL.
Run:
  python regenerate_qr.py
It will create:
- qr_geetha.png
- qr_geetha.svg
- poster_qr_geetha.png

Then use those QR files for printing/WhatsApp.

## Editing later
Just edit `index.html` in GitHub (or upload a new version). The same URL will update automatically.

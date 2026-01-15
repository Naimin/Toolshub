# How to Host Your Static Page on GitHub Pages

GitHub Pages allows you to host static websites directly from your GitHub repository for free!

## Quick Setup (5 minutes)

### Option 1: Host from Root Directory (Recommended for Single Page)

If your main HTML file is in the root directory or you want to host the entire repository:

1. **Push your code to GitHub** (if you haven't already):
   ```bash
   git add .
   git commit -m "Add files for GitHub Pages"
   git push origin main
   ```

2. **Enable GitHub Pages**:
   - Go to your repository on GitHub: `https://github.com/Naimin/Toolshub`
   - Click on **Settings** (top right of the repository page)
   - Scroll down to **Pages** in the left sidebar
   - Under **Source**, select:
     - **Branch**: `main` (or `master`)
     - **Folder**: `/ (root)`
   - Click **Save**

3. **Wait a few minutes** for GitHub to build your site

4. **Access your site** at:
   ```
   https://naimin.github.io/Toolshub/
   ```
   (Replace `naimin` with your GitHub username)

### Option 2: Host from `/docs` Folder

If you want to keep your source files separate from the published site:

1. **Create a `docs` folder** in your repository root
2. **Copy your HTML files** to the `docs` folder
3. **Push to GitHub**:
   ```bash
   git add docs/
   git commit -m "Add docs folder for GitHub Pages"
   git push origin main
   ```
4. **Enable GitHub Pages**:
   - Go to Settings > Pages
   - Select **Branch**: `main`
   - Select **Folder**: `/docs`
   - Click **Save**

5. **Your site will be available at**: `https://naimin.github.io/Toolshub/`

### Option 3: Host a Specific Subdirectory (For Your Calculator)

If you want to host just the Compound Interest Calculator:

1. **Create a `docs` folder** and copy the calculator:
   ```bash
   mkdir docs
   cp -r "Compound Interest Calculator" docs/
   ```
   (Or manually copy the folder)

2. **Update paths** in your HTML if needed (if using relative paths, they should work)

3. **Push to GitHub**:
   ```bash
   git add docs/
   git commit -m "Add calculator to docs for GitHub Pages"
   git push origin main
   ```

4. **Enable GitHub Pages** with `/docs` folder

5. **Access your calculator at**: `https://naimin.github.io/Toolshub/Compound Interest Calculator/index.html`

## Your Current Setup

Your Compound Interest Calculator is now set as the main page! The root `index.html` contains the calculator, so when visitors go to your GitHub Pages site, they'll see the calculator directly.

**Your site URL**: `https://naimin.github.io/Toolshub/`

The calculator will be the first thing visitors see when they visit your site.

## Important Notes

- **Custom Domain**: You can add a custom domain in Settings > Pages
- **HTTPS**: GitHub Pages automatically provides HTTPS
- **Build Time**: It may take 1-10 minutes for changes to appear
- **File Limits**: 
  - Repository must be public (or use GitHub Pro for private repos)
  - 1GB repository size limit
  - 100GB bandwidth per month
- **Jekyll**: GitHub Pages uses Jekyll by default. To disable it, create a `.nojekyll` file in your root or docs folder:
  ```bash
  touch .nojekyll
  git add .nojekyll
  git commit -m "Disable Jekyll processing"
  git push
  ```

## Troubleshooting

### Site not loading?
- Check that GitHub Pages is enabled in Settings
- Wait 5-10 minutes after enabling
- Check the Actions tab for build errors
- Verify your HTML files are in the correct folder

### 404 errors?
- Make sure your `index.html` is in the root or docs folder
- Check file paths are correct (case-sensitive on Linux servers)
- Try accessing the full path: `https://username.github.io/repo/path/to/file.html`

### Changes not showing?
- Clear your browser cache (Ctrl+F5)
- Wait a few minutes for GitHub to rebuild
- Check the commit was pushed successfully

## Next Steps

1. ✅ Push your code to GitHub
2. ✅ Enable GitHub Pages in repository settings
3. ✅ Wait for the site to build
4. ✅ Share your live URL!

Your site will automatically update whenever you push changes to the selected branch!

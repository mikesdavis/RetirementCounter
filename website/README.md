This folder contains a simple Jekyll site scaffold for the Retirement Countdown marketing site.

To preview locally (requires Ruby + Jekyll):

```bash
cd website
bundle exec jekyll serve
```

Deployment options:

- Use GitHub Pages: push the `website/` contents to the `gh-pages` branch or set GitHub Pages to serve from the `website` folder on the `main` branch.
- Use GitHub Actions to build and deploy the site automatically.

Next steps:
- Add screenshots to `website/assets/` and reference them from `index.md`.
- Replace the placeholder privacy policy at [website/privacy.md](website/privacy.md).
- Configure `url` in `_config.yml` and add a custom domain if desired.

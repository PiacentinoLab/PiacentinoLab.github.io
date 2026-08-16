# piacentinolab.github.io

Source for the [Piacentino Lab](https://piacentinolab.com) website, built with [Jekyll](https://jekyllrb.com/) using the [al-folio](https://github.com/alshedivat/al-folio) theme (v0.16.3) and hosted on GitHub Pages.

## Editing content

| To change...                | Edit...                                  |
| ---------------------------- | ----------------------------------------- |
| Home page / lab overview     | `_pages/about.md`                         |
| Lab members                  | `_pages/people.md` and `_pages/people_*.md` |
| Research areas               | `_projects/*.md`                          |
| Publications                 | `_bibliography/papers.bib`                |
| Lab news                     | `_news/*.md` (add a new file per item)    |
| Join the lab page            | `_pages/join.md`                          |
| CV                           | `_data/cv.yml`                            |
| Contact email / social links | `_data/socials.yml`                       |
| Site title, nav, colors      | `_config.yml`                             |

Every place that still needs your input is marked `[Placeholder]` or **"This is placeholder text"** — search the repo for `Placeholder` to find them all.

## Previewing changes locally

With Ruby and Bundler installed:

```bash
bundle install
bundle exec jekyll serve
```

Then open [http://localhost:4000](http://localhost:4000).

Or, without installing Ruby, using Docker:

```bash
docker compose up
```

## Deployment

Pushes to `main` are automatically built and deployed to the `gh-pages` branch by the GitHub Actions workflow in `.github/workflows/deploy.yml`. In your repo's **Settings → Pages**, set the source to "Deploy from a branch" → `gh-pages` (created automatically after the first successful deploy). The custom domain `piacentinolab.com` is configured via the `CNAME` file — see GitHub's [custom domain docs](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site) if you need to update your domain's DNS records.

## Theme documentation

For the full range of theme features and configuration options, see the upstream [al-folio README](https://github.com/alshedivat/al-folio/blob/v0.16.3/README.md), [CUSTOMIZE.md](https://github.com/alshedivat/al-folio/blob/v0.16.3/CUSTOMIZE.md), and [FAQ.md](https://github.com/alshedivat/al-folio/blob/v0.16.3/FAQ.md).

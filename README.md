# ECE 750 T29 course website (Winter 2027)

Hugo site using the Hextra theme. Prototype, 2026-10-23.

**Pinned toolchain:** Hugo **0.168.0 extended**, Hextra **v0.13.0** (a copy of the release lives in `themes/hextra/`; nothing is downloaded at build time). Keep both for the whole term; do not upgrade mid-term.

## Everyday use

| Task | What to do |
|---|---|
| Preview locally | `hugo server -D` and open the URL it prints (currently http://localhost:1313/~agurfink/ece750t29/, because `baseURL` has that path; `-D` also shows drafts). Run only one preview server at a time: they share `public/` and overwrite each other. Add `--bind 0.0.0.0` to view from a phone on the same network. |
| Post lecture slides | Put the PDF in `static/lectures/`, then in `content/schedule.md` replace "posted after the lecture" with `[Slides](/lectures/<file>.pdf)`. |
| Write a note | Add `content/notes/<slug>.md` with `title` and `date` front matter. Code blocks and `\( ... \)` / `$$ ... $$` math work. Future-dated or `draft: true` notes are not published. |
| Update the syllabus PDF | After rebuilding it (command in `1271/README.md`; fonts are in `1271/fonts/`), copy it to `static/syllabus.pdf`. If the text changed, update `content/syllabus.md` to match. |
| Build | `hugo --minify` writes the site to `public/`. |

## Layout

- `hugo.yaml`: site settings and top menu. `baseURL` must be set once hosting is chosen.
- `content/_index.md`: home page = short weekly outline linking to `schedule.md#week-N` (keep the two in sync when a week's title changes). `syllabus.md`, `schedule.md`: main pages. `notes/`: posts.
- `assets/css/custom.css`: the only style change (syllabus blue as accent colour).
- `i18n/en.yaml`: footer text.
- `.github/workflows/pages.yml`: GitHub build with the pinned Hugo (Pages + UW mirror branch).
- `publish-uw.sh`: copies the latest build into the UW web space.

Do not edit files under `themes/hextra/`; customize only through the files above.

## Hosting

| Copy | Address | Updated by |
|---|---|---|
| UW (official; the address students get) | https://ece.uwaterloo.ca/~agurfink/ece750t29/ | Running `publish-uw.sh` after the GitHub build finishes |
| GitHub Pages (build copy, always current) | https://agurfinkel.github.io/uw-ece750t29-1271/ | Every push to `main`, automatically, about a minute later |

Source repository: https://github.com/agurfinkel/uw-ece750t29-1271 (public). No local Hugo is needed to update the site: edit the Markdown (locally or in GitHub's web editor), push, and GitHub rebuilds both copies. The UW copy is plain HTML stored on the `uw-site` branch; `publish-uw.sh` downloads it and syncs it into `~/public_html/ece750t29` (needs only curl, tar, rsync on ecelinux):

```sh
ssh agurfink@ecelinux4.uwaterloo.ca 'sh -s' < publish-uw.sh
```

**First-time setup**
1. Create the empty public repository `agurfinkel/uw-ece750t29-1271` on GitHub (no README).
2. `git remote add origin git@github.com:agurfinkel/uw-ece750t29-1271.git && git push -u origin main`
3. Repository Settings → Pages → Source: **GitHub Actions**. Re-run the workflow once if the first run happened before this.
4. The script replaces everything in `~/public_html/ece750t29`, which currently holds the 2019 site. Move that aside first if you want to keep it: `ssh agurfink@ecelinux4.uwaterloo.ca 'mv ~/public_html/ece750t29 ~/public_html/ece750t29-1189'` (a local copy of its built files is also in `1189/web/ece750t29/`).

## End of term

The `uw-site` branch and the UW copy are already plain HTML and need no toolchain; tag the final commit as the archive. A future offering forks or starts fresh.

## Open questions for the instructor

Recorded 2026-10-23. The instructor considers them all relevant and will answer later. None is decided; the prototype includes none of these features.

1. ~~**Hosting and URL**~~ Answered 2026-10-23: built on GitHub, published at the UW address, which is the official link (in the syllabus since 2026-10-23).
2. **Readings visibility**: publish all primary readings before term (as the prototype does, taken from the internal outline) or reveal them week by week?
3. **Logistics**: meeting time and room, office hours, TA, contact details (the old site had an instructor/TA table).
4. **Communication and submission**: Piazza, Discord, or LEARN; where assignments are submitted.
5. **Dates**: actual dates per week, reading break, deadlines on the schedule.
6. **Assignments and project page**: handouts, deadlines, project milestones.
7. **Course policies**: academic integrity, accommodations, mental-health statement, detailed AI-use rules, on the site or linked to LEARN.
8. **Home page**: show announcements or latest notes, or keep it as is?

# boardwalk-games

A demo website for a board game shop and café called **Boardwalk Games**. This repository contains a small static site built with HTML, Bootstrap and custom CSS — designed as a demo / portfolio project to showcase a shop, its services, events and booking flow.

## Primary Goal

The goal is to design a website for a board game shop and café called **Boardwalk Games** that increases foot traffic through better customer engagement and clearer event/booking information.

## Business Goals

- Showcase the shop's services
- Provide essential information (opening times, contact, booking)
- Increase brand awareness
- Encourage group visits and event participation

## User Personas

- Boardgame enthusiasts who want event details and new releases
- Casual gamers and families looking for a relaxed place to play
- Students seeking budget-friendly entertainment and discounts

## Wireframe Designs

Wireframe design for Boardwalk Games home page:

![Home wireframe](https://github.com/user-attachments/assets/25fad28e-9362-4ad6-b1e3-743cf44bea61)

Wireframe for the contact form (before details completed):

![Contact wireframe - draft](https://github.com/user-attachments/assets/28db3d60-fa6f-4d27-9b2f-4fa92b1500a4)

Wireframe after contact details completed:

![Contact wireframe - final](https://github.com/user-attachments/assets/84eae46a-8f02-407a-a2a9-f358d287df6d)

Wireframe for Games Library and Booking form:

![Games & Booking wireframe](https://github.com/user-attachments/assets/1ddbfa8e-3150-4e40-98d6-13e54c21b3c7)

## Colour Palette

The colour palette was agreed with the client and used across the site to keep visual continuity and brand consistency.

![Colour palette](https://github.com/user-attachments/assets/237c3456-e0e4-4f14-b9e1-18101acf6067)

## Fonts

- **Macondo** — used for headings to evoke a playful, adventurous look.
- **Inter** — used for body copy for legibility and accessibility.

If you want to preview the exact fonts used locally, load the site with internet access (Google Fonts CDN links are included in the HTML). A local snapshot of the fonts is not included in this repo.

## User Stories & Project Board

The initial sprint contained 9 items prioritised with MoSCoW. Five items were marked as Must-Have, and the rest were Should/Could-Have. A Kanban board was used during development:

![Kanban board](assets/images/kanbanboardwalkproject.png)

## Features

- Home page with header carousel and calls-to-action (Book now)
- Services section highlighting cafe play, game library, events and kids parties
- Game library page with reservation form
- Booking page and a `success.html` thank-you page
- Fixed-top responsive navigation and smooth in-page scrolling
- Accessible alt text and HTML validation improvements

## Entity Relationship Diagram

An ERD was sketched for planning data flows (users, bookings, events). Insert or replace with your diagram here if needed.

## Testing

- Responsive testing used Bootstrap's grid plus manual checks in browser dev tools and multiple devices.
- HTML and CSS were validated and small accessibility improvements (alt text, form labels) were applied.

## Run locally

This is a static site. To run locally, open `index.html` in your browser, or serve the folder with a simple HTTP server.

Python 3 (recommended):

```bash
python3 -m http.server 8000
# then open http://localhost:8000 in your browser
```

Or use Node.js http-server (if installed):

```bash
npx http-server -c-1 . 8080
# then open http://localhost:8080
```

## Deployment

- The project is structured so the site can be deployed to GitHub Pages from the `/docs` folder. The `docs/` folder is kept in sync with the project root so the live Pages site matches the source.

## Notes & Demo Status

- This is a demo / portfolio project: it demonstrates layout, UX, and front-end form validation only. There is no server-side booking API — booking/reservation forms currently redirect to a static `success.html` page.
- If you want a production-ready booking system, I can help wire a simple backend (serverless function or express app) to accept and persist reservations.

## Credits

- Built with Bootstrap 5 and Font Awesome
- Photos and illustrations: use appropriately licensed assets or replace with your own

## License

This repository is provided as a demo. Replace or update the license below as needed for production.

MIT License — see `LICENSE` (not included by default)

## Contributing

Contributions welcome — open an issue or PR, and follow the repository style (plain HTML + CSS + small JS). If you want help adding tests or a CI pipeline for Pages deployment, I can add that.

---

If you'd like, I can:

- Add the `LICENSE` file and a basic contributing guide
- Create a `docs/` sync script (copy files from root to `docs/` and commit) so Pages parity is easier to maintain
- Add a short GitHub Actions workflow to automatically copy root files into `docs/` on push

Tell me which of the above you'd like next.

## Docs sync (local + automatic)

To make GitHub Pages deployment easier this repo includes a small local helper script and a GitHub Actions workflow (created in `.github/workflows/sync-docs.yml`) that keep the `docs/` folder in sync with the repository root.

Local usage (recommended to preview before pushing):

```bash
# Make script executable once
chmod +x scripts/sync_to_docs.sh

# Run the script to copy files into docs/
./scripts/sync_to_docs.sh

# If the script staged changes, commit and push them
git commit -m "chore: sync root -> docs" docs && git push
```

Behavior of the GitHub Action:

- The workflow `sync-docs.yml` runs on pushes to `main`.
- It copies the repository root into `docs/` (excludes `.git`, `.github`, `scripts`, `node_modules`).
- If the action detects changes it will commit them back to `main` (using the `GITHUB_TOKEN`).

Notes and safety:

- The action is intentionally simple: it only commits when `docs/` differs from the root. If you prefer to review the changes locally first, run the local script and commit manually instead of relying on the action.
- If you want the action to only run on tagged releases or on a specific branch, I can update the workflow trigger accordingly.


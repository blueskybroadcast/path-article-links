## Details

Creates a reference page for linking users directly to docs in-app. `/articles.json` is also available (perhaps for creating a Slack slash command or something).

---

## Setup

- Deploy to Heroku (only web dynos necessary)
- Add in ENV vars for `API_KEY` and `JWT` (get these from Elevio)
- Use the Scheduler add-on to regularly run `rake articles:update_list`

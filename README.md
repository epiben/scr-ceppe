# Randomised controlled trials in critical care do not use real-world causal evidence for planned predictive enrichment: a scoping review

This is the repository for the above-mentioned scoping review with the software used to produce the results reported therein as well as clean data and data documentation.

## Data and analytic code 
Folder: `analysis/`

The analytic code comprises a Quarto notebook (source and HTML version) inside an RStudio project that uses `renv` for reproducibility. The dataset is available in [analysis/public_data.tsv](analysis/public_data.tsv) (tabulator separated)tsv and [analysis/public_data.arrow](analysis/public_data.arrow) (Apache Arrow IPC file a.k.a.= Feather v2 format), and contains data on the following 22 variables:

| **Name**                            | **Type** | **Remark**                               |
|-------------------------------------|----------|------------------------------------------|
| `rct_name`                          | Text     | Uses trial acronym if easily identified  |
| `trial_database_urls`               | Text     | As extracted by Covidence (70% complete) |
| `intervention_type`                 | Nominal  | "Drug"/"Medical device"/"Management"     |
| `trial_phase`                       | Text     |                                          |
| `n_centres`                         | Integer  |                                          |
| `n_centres_cat`                     | Ordinal  | Binned version; derived                  |
| `n_randomised_participants`         | Integer  |                                          |
| `n_randomised_participants_cat`     | Ordinal  | Binned version; derived                  |
| `only_covid_patients`               | Boolean  | "No"/"Yes"                               |
| `recruitment_period`                | Text     | Format: M/YYYY-M/YYYY                    |
| `recruitment_start`                 | Date     | Format: YYYY-MM-DD                       |
| `recruitment_end`                   | Date     | Format: YYYY-MM-DD                       |
| `recruitment_duration_years`        | Float    | Derived                                  |
| `journal_principal_report`          | Text     |                                          |
| `publication_year_principal_report` | Integer  |                                          |
| `doi_principal_report`              | Text     |                                          |
| `any_predictive_enrichment`         | Boolean  | "No"/"Yes" (78% complete)                |
| `trial_stopped_early`               | Boolean  | "No"/"Yes"                               |
| `trial_stopped_predefined_rule`     | Boolean  | "No"/"Yes"/"N/A"                         |
| `trial_stopped_reason`              | Text     |                                          |
| `trial_stopped_reason_grouped`      | Text     | Derived                                  |
| `title_principal_report`            | Text     |                                          |

The folder also contains [analysis/included_trials.bib](analysis/included_trials.bib) with bibliographic information for all 315 articles included in the review (one article reported two distinct trials).

## Extraction form
The extraction form was a fairly simple Shiny app and self-hosted on my Raspberry Pi 4 (see below) along with a Postgres database, running as two services (set up in the [shiny-server/docker-compose.yaml](shiny-server/docker-compose.yaml)).

### Shiny app 
Folder: `shiny-server/apps/shiny-app/`

Conventional two-file setup plus one helper script. The `internal` folder contains an SQL dump file for setting up the Postgres database and a .csv file with login credentials of extractors. As we did not handle sensitive information, the login credential served mainly to track who extracted what and as a simple barrier for DDOS attacks (our extraction form was an unlikely and utterly uninteresting target for such attacks).

### Docker image for Shiny-server
Folder: `shiny-server-arm-docker/`

To run Shiny server on Raspberry Pi OS, I used the Dockerfile from https://github.com/hvalev/shiny-server-arm-docker with minor changes to fit our purposes (see top of the [Dockerfile](shiny-server-arm-docker/Dockerfile)).

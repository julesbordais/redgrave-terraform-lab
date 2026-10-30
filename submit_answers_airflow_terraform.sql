-- AFC Redgrave · Airflow + Terraform lab · write your answers in YOUR Snowflake account
-- Replace each <...> with your answer (keep the $$ on both sides), then Run All.
-- You can run this file again: it replaces your previous answers for this lab.

USE ROLE SYSADMIN;
USE WAREHOUSE REDGRAVE_WH;
CREATE SCHEMA IF NOT EXISTS REDGRAVE.LAB;
CREATE TABLE IF NOT EXISTS REDGRAVE.LAB.ANSWERS (
    lab VARCHAR, question VARCHAR, answer VARCHAR, submitted_at TIMESTAMP_TZ);

DELETE FROM REDGRAVE.LAB.ANSWERS WHERE lab = 'RED-401';

INSERT INTO REDGRAVE.LAB.ANSWERS VALUES
('RED-401', 'NAME', $$<first name and last name>$$, CURRENT_TIMESTAMP()),
('RED-401', 'Q1', $$<your answer to Q1: why did the retry create a duplicate with --mode insert?>$$, CURRENT_TIMESTAMP()),
('RED-401', 'Q2', $$<your answer to Q2: why does --mode merge fix it? (one sentence on idempotency)>$$, CURRENT_TIMESTAMP()),
('RED-401', 'Q3', $$<your answer to Q3: the 06:00 London run of 5 August publishes which day, and why?>$$, CURRENT_TIMESTAMP()),
('RED-401', 'Q4', $$<your answer to Q4: what did terraform plan show after your manual change in Snowsight?>$$, CURRENT_TIMESTAMP()),
('RED-401', 'Q5', $$<your answer to Q5: why must the Terraform state be remote and locked in a team?>$$, CURRENT_TIMESTAMP()),
('RED-401', 'REPO_URL', $$<your answer to REPO_URL: the URL of your GitHub repository with the CI workflow, or NOT DONE>$$, CURRENT_TIMESTAMP());

SELECT question, answer FROM REDGRAVE.LAB.ANSWERS WHERE lab = 'RED-401' ORDER BY question;

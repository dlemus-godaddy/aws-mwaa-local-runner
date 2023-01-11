
DOCS = f"""
## Pipeline Process backfill ()
#### Purpose
This DAG populates backfill historical data for mapping tables
and other intermediate tables

#### Parameters
```
{{
    "CLUSTER_ID": "j-XXXXXXXX",
    "PROCESS_DAY": "YYYY-MM-DD",
    "PROCESS_DAY": "YYYY-MM-DD",
    "PROCESS_DAY_MIN": "YYYY-MM-DD",
    "PROCESS_DAY_MAX": "YYYY-MM-DD",
    "CREATE_TABLE":"True"
}}
```
- `CLUSTER_ID` - (optional) - EMR cluster id. If not provided the dag will create a transient EMR cluster
- `PROCESS_DAY` – (optional) - Day to process in YYYY-MM-DD format (e.g. "2021-12-01")
   if not provided the dag will process from beginning of last month
- `PROCESS_DAY_MIN` – (optional) - From/min day to process in YYYY-MM-DD format (e.g. "2021-12-01")
   when processing date range
- `PROCESS_DAY_MAX` – (optional) - To/max day to process in YYYY-MM-DD format (e.g. "2021-12-31")
   when processing date range
- `CREATE_TABLE` - (optional) - Only when we want to run create_tables.hql to create tables in Glue Metastore.

#### Input Tables
- `enterprise.fact_bill`
- `enterprise.fact_bill_line`


#### Outputs
This pipeline produces the following output tables in DB
- Table A
- Table B

#### Data Validations
 - Test A
 - Test B

#### Code
     Git Link
#### Owner
For any questions or concerns, please contact
[myteam@godaddy.com](mailto:myteam@godaddy.com).
"""

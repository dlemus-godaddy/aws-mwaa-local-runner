CREATE external TABLE sample_table(
                                    id integer COMMENT 'git generated unique id of a repo for an org',
                                    organization_name string
)
    PARTITIONED BY (
        load_date string
        )
    ROW FORMAT SERDE
        'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
    STORED AS Parquet
    LOCATION
        's3://{bucket_name}/emr-metrics/db=sample_db/table=organization/'

TYPE=VIEW
query=select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc
md5=664a2aeb01fd20e693e3ac931da41ce0
updatable=1
algorithm=1
definer_user=mariadb.sys
definer_host=localhost
suid=0
with_check_option=0
timestamp=2022-01-26 02:22:23
create-version=2
source=SELECT sys.format_statement(DIGEST_TEXT) AS query,\n       SCHEMA_NAME db,\n       COUNT_STAR AS exec_count,\n       sys.format_time(SUM_TIMER_WAIT) AS total_latency,\n       SUM_SORT_MERGE_PASSES AS sort_merge_passes,\n       ROUND(IFNULL(SUM_SORT_MERGE_PASSES / NULLIF(COUNT_STAR, 0), 0)) AS avg_sort_merges,\n       SUM_SORT_SCAN AS sorts_using_scans,\n       SUM_SORT_RANGE AS sort_using_range,\n       SUM_SORT_ROWS AS rows_sorted,\n       ROUND(IFNULL(SUM_SORT_ROWS / NULLIF(COUNT_STAR, 0), 0)) AS avg_rows_sorted,\n       FIRST_SEEN as first_seen,\n       LAST_SEEN as last_seen,\n       DIGEST AS digest\n  FROM performance_schema.events_statements_summary_by_digest\n WHERE SUM_SORT_ROWS > 0\n ORDER BY SUM_TIMER_WAIT DESC;
client_cs_name=utf8mb3
connection_cl_name=utf8mb3_general_ci
view_body_utf8=select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull(`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where `performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0 order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc
mariadb-version=100605
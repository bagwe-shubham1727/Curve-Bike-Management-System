--Forceful DBMS Scheduler PL/SQL - 
BEGIN
  DBMS_SCHEDULER.RUN_JOB(job_name => 'RETURN_BIKE_6000_000011');
END;
/

 
--Check jobs schedule - 
SELECT 
    job_name,
    enabled,
    state,
    TO_CHAR(start_date, 'YYYY-MM-DD HH24:MI:SS') AS scheduled_start,
    TO_CHAR(last_start_date, 'YYYY-MM-DD HH24:MI:SS') AS last_run,
    TO_CHAR(next_run_date, 'YYYY-MM-DD HH24:MI:SS') AS next_run
FROM user_scheduler_jobs
WHERE job_name LIKE 'RETURN_BIKE_%';
 
--Check jobs history - 
SELECT 
    job_name,
    status,
    TO_CHAR(actual_start_date, 'YYYY-MM-DD HH24:MI:SS') AS started_at,
    TO_CHAR(run_duration) AS duration,
    error#,
    additional_info
FROM user_scheduler_job_run_details
WHERE job_name LIKE 'RETURN_BIKE_%'
ORDER BY actual_start_date DESC;
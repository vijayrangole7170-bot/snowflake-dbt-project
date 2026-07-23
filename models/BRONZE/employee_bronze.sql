{{
    config(
        materialized='view'
    )
}}

    select 
        emp_id,
        emp_name,
        department,
        salary,
        city,
        file_name,
        load_timestamp,
        current_timestamp() as bronze_load_ts

        from raw.employee_landing
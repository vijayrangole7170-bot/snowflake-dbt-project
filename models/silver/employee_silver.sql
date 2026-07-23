select

    try_to_number(emp_id) as emp_id,

    trim(emp_name) as emp_name,

    upper(trim(department)) as department,

    try_to_number(salary) as salary,

    initcap(trim(city)) as city,

    file_name,

    load_timestamp

from {{ ref('employee_bronze') }}

where try_to_number(emp_id) is not null
  and try_to_number(salary) is not null
  and emp_name is not null;
select
    sum(payment_amount) as total_revenue

from {{ ref('stg_payments') }}
where payment_status = 'success'
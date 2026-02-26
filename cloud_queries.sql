SELECT source_ip, COUNT(*) AS failed_attempts
FROM login_logs
WHERE status = 'FAILED'
GROUP BY source_ip
ORDER BY failed_attempts DESC;

-- Average latency per device
SELECT device_id, AVG(latency_ms) AS avg_latency
FROM network_logs
GROUP BY device_id
ORDER BY avg_latency DESC;

-- Peak packet loss hour
SELECT EXTRACT(HOUR FROM timestamp) AS hour,
       AVG(packet_loss) AS avg_loss
FROM network_logs
GROUP BY hour
ORDER BY avg_loss DESC;

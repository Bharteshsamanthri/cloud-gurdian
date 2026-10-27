# Cloud Guardian Architecture

## Overview
Cloud Guardian demonstrates basic cloud operations and Linux monitoring.

## Components
1. Amazon EC2 provides the Linux server environment.
2. A web server can host the project website.
3. Bash scripts perform system health checks.
4. systemd services execute scripts.
5. systemd timers schedule recurring checks.
6. Amazon CloudWatch can monitor metrics.
7. Amazon SNS can send notifications.

## Current Limitations
The website is static and does not show live server metrics.
The sample health-check script does not send notifications.
The service and timer files are examples and have not been installed on a Linux server.

## Security
Never commit credentials, private keys, or sensitive logs.

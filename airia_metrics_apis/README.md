# API Metrics Script

A bash script for querying API metrics and execution data from the Airia API.

## Overview

This script retrieves various metrics and execution data from the Airia platform, including pipeline executions, conversations, file ingestions, data processing/ ingestion, AI operations, and tenant-level metrics.

## Configuration

Before running the script, update the following variables in `api-metrics.sh`:

```bash
API_KEY="your-api-key"           # Your Airia API key
TENANT_ID="your-tenant-id"       # Your tenant identifier
START_DATE="2026-01-01T00:00:00Z"  # Metrics start date (ISO 8601 format)
END_DATE="2026-02-01T23:59:59Z"    # Metrics end date (ISO 8601 format)
```

## Usage

Make the script executable and run it:

```bash
chmod +x api-metrics.sh
./api-metrics.sh
```

## Endpoints Queried

The script queries the following endpoints:

1. **Pipeline Executions Feed** - Paginated list of pipeline executions
2. **Conversations Feed** - Paginated list of conversations
3. **File Ingestion Logs** - Logs of file ingestion operations
4. **Data Vector Search Executions** - Vector search execution records
5. **AI Operation Executions** - AI operation execution records
6. **Pipeline Execution Count** - Count of executions by date range
7. **Pipeline Execution Error Rate** - Error rate metrics for pipelines
8. **Pipeline Execution Latency** - Latency metrics for pipeline executions
9. **Pipeline Execution Model Usage** - Model usage statistics
10. **Pipeline Execution Count by Model** - Execution counts broken down by model
11. **Tenant Metrics** - Overall tenant-level metrics

## Pagination & Sorting

Default settings can be adjusted:

- `PAGE_SIZE`: 50 (records per page)
- `SORT_BY`: createdAt
- `SORT_DIRECTION`: DESC
- `LIMIT`: 50 (for AI Operation Executions)

## Output

The script prints the endpoint URL and HTTP status code for each request. Response data is captured but not displayed by default. To view response data, modify the script to output the `$RESULT` variable.

## Requirements

- bash
- curl

## Base URL

Default: `https://prodaus.api.airia.ai`

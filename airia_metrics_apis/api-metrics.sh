#!/bin/bash

# API Configuration Variables
API_KEY="API_KEY"
TENANT_ID="TENANT_ID"
START_DATE="2026-01-01T00:00:00Z"
END_DATE="2026-02-01T23:59:59Z"
BASE_URL="https://prodaus.api.airia.ai"

# Pagination Variables
PAGE_NUMBER=1
PAGE_SIZE=50
SORT_BY="createdAt"
SORT_DIRECTION="DESC"
SORT_ORDER="desc"

# Token Consumption Variables
DESCENDING=true
LIMIT=50
OFFSET=0

# Header for authentication
AUTH_HEADER="X-API-Key: ${API_KEY}"

# 1. Get Pipeline Executions Feed
ENDPOINT="${BASE_URL}/v1/Feed/pipelines?pageNumber=${PAGE_NUMBER}&pageSize=${PAGE_SIZE}&sortBy=${SORT_BY}&sortDirection=${SORT_DIRECTION}"
RESPONSE=$(curl -s -w "\n%{http_code}" -X GET "${ENDPOINT}" -H "${AUTH_HEADER}")
STATUS=$(echo "$RESPONSE" | tail -n1)
RESULT=$(echo "$RESPONSE" | sed '$d')
echo "Endpoint: ${ENDPOINT}"
echo "Status: ${STATUS}"
echo ""

# 2. Get Conversations Feed
ENDPOINT="${BASE_URL}/v1/conversations/feed?pageNumber=${PAGE_NUMBER}&pageSize=${PAGE_SIZE}"
RESPONSE=$(curl -s -w "\n%{http_code}" -X GET "${ENDPOINT}" -H "${AUTH_HEADER}")
STATUS=$(echo "$RESPONSE" | tail -n1)
RESULT=$(echo "$RESPONSE" | sed '$d')
echo "Endpoint: ${ENDPOINT}"
echo "Status: ${STATUS}"
echo ""

# 3. Get File Ingestion Logs
ENDPOINT="${BASE_URL}/knowledge/v1/file_ingestion_logs?pageNumber=${PAGE_NUMBER}&pageSize=${PAGE_SIZE}&sortOrder=${SORT_ORDER}"
RESPONSE=$(curl -s -w "\n%{http_code}" -X GET "${ENDPOINT}" -H "${AUTH_HEADER}")
STATUS=$(echo "$RESPONSE" | tail -n1)
RESULT=$(echo "$RESPONSE" | sed '$d')
echo "Endpoint: ${ENDPOINT}"
echo "Status: ${STATUS}"
echo ""

# 4. Get Data Vector Search Executions
ENDPOINT="${BASE_URL}/api/marketplace/v1/DataVectorSearchExecutions?pageNumber=${PAGE_NUMBER}&pageSize=${PAGE_SIZE}&sortBy=${SORT_BY}&sortDirection=${SORT_DIRECTION}"
RESPONSE=$(curl -s -w "\n%{http_code}" -X GET "${ENDPOINT}" -H "${AUTH_HEADER}")
STATUS=$(echo "$RESPONSE" | tail -n1)
RESULT=$(echo "$RESPONSE" | sed '$d')
echo "Endpoint: ${ENDPOINT}"
echo "Status: ${STATUS}"
echo ""

# 5. Get AI Operation Executions
ENDPOINT="${BASE_URL}/api/marketplace/v1/AIOperationExecutions?descending=${DESCENDING}&limit=${LIMIT}&offset=${OFFSET}"
RESPONSE=$(curl -s -w "\n%{http_code}" -X GET "${ENDPOINT}" -H "${AUTH_HEADER}")
STATUS=$(echo "$RESPONSE" | tail -n1)
RESULT=$(echo "$RESPONSE" | sed '$d')
echo "Endpoint: ${ENDPOINT}"
echo "Status: ${STATUS}"
echo ""

# 6. Get Pipeline Execution Count by Date Range
ENDPOINT="${BASE_URL}/v1/PipelineExecutionMetrics/count-range?startDate=${START_DATE}&endDate=${END_DATE}"
RESPONSE=$(curl -s -w "\n%{http_code}" -X GET "${ENDPOINT}" -H "${AUTH_HEADER}")
STATUS=$(echo "$RESPONSE" | tail -n1)
RESULT=$(echo "$RESPONSE" | sed '$d')
echo "Endpoint: ${ENDPOINT}"
echo "Status: ${STATUS}"
echo ""

# 7. Get Pipeline Execution Error Rate
ENDPOINT="${BASE_URL}/v1/PipelineExecutionMetrics/error-rate?startDate=${START_DATE}&endDate=${END_DATE}"
RESPONSE=$(curl -s -w "\n%{http_code}" -X GET "${ENDPOINT}" -H "${AUTH_HEADER}")
STATUS=$(echo "$RESPONSE" | tail -n1)
RESULT=$(echo "$RESPONSE" | sed '$d')
echo "Endpoint: ${ENDPOINT}"
echo "Status: ${STATUS}"
echo ""

# 8. Get Pipeline Execution Latency
ENDPOINT="${BASE_URL}/v1/PipelineExecutionMetrics/latency?startDate=${START_DATE}&endDate=${END_DATE}"
RESPONSE=$(curl -s -w "\n%{http_code}" -X GET "${ENDPOINT}" -H "${AUTH_HEADER}")
STATUS=$(echo "$RESPONSE" | tail -n1)
RESULT=$(echo "$RESPONSE" | sed '$d')
echo "Endpoint: ${ENDPOINT}"
echo "Status: ${STATUS}"
echo ""

# 9. Get Pipeline Execution Model Usage
ENDPOINT="${BASE_URL}/v1/PipelineExecutionMetrics/model/usage?startDate=${START_DATE}&endDate=${END_DATE}"
RESPONSE=$(curl -s -w "\n%{http_code}" -X GET "${ENDPOINT}" -H "${AUTH_HEADER}")
STATUS=$(echo "$RESPONSE" | tail -n1)
RESULT=$(echo "$RESPONSE" | sed '$d')
echo "Endpoint: ${ENDPOINT}"
echo "Status: ${STATUS}"
echo ""

# 10. Get Pipeline Execution Count by Model
ENDPOINT="${BASE_URL}/v1/PipelineExecutionMetrics/model/count?startDate=${START_DATE}&endDate=${END_DATE}"
RESPONSE=$(curl -s -w "\n%{http_code}" -X GET "${ENDPOINT}" -H "${AUTH_HEADER}")
STATUS=$(echo "$RESPONSE" | tail -n1)
RESULT=$(echo "$RESPONSE" | sed '$d')
echo "Endpoint: ${ENDPOINT}"
echo "Status: ${STATUS}"
echo ""

# 17. Get Tenant Metrics
ENDPOINT="${BASE_URL}/v1/TenantMetrics/${TENANT_ID}?startDate=${START_DATE}&endDate=${END_DATE}"
RESPONSE=$(curl -s -w "\n%{http_code}" -X GET "${ENDPOINT}" -H "${AUTH_HEADER}")
STATUS=$(echo "$RESPONSE" | tail -n1)
RESULT=$(echo "$RESPONSE" | sed '$d')
echo "Endpoint: ${ENDPOINT}"
echo "Status: ${STATUS}"
echo ""
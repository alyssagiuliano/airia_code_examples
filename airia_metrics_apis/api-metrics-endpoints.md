# API Metrics Endpoints Documentation

## Agent Executions Feed API

### 1. Get Pipeline Executions Feed

**Endpoint:** `GET https://prodaus.api.airia.ai/v1/Feed/pipelines`

**Summary:** Agent Executions Feed - retrieves pipeline executions.

**Method:** GET

**Authentication:** API Key required

**Optional Parameters:**
- `pageNumber` (query, integer): Page number to be fetched (example: 1
- `pageSize` (query, integer): Number of items per page (example: 50)
- `sortBy` (query, string): Property to sort by (example: "createdAt")
- `sortDirection` (query, string): Sort direction (example: "DESC" or "ASC")

Example: `https://prodaus.api.airia.ai/v1/Feed/pipelines?pageNumber=1&pageSize=50&sortBy=createdAt&sortDirection=DESC`

**Returns:**
- Pipeline executions feed data

#### Get Granular Execution Logs

For a specific agent execution ID, you can retrieve granular execution logs (including input, AI model, and output) using the following endpoint:

**Endpoint:** `GET https://prodaus.api.airia.ai/v1/Feed/pipelines/{id}`

**Method:** GET

**Authentication:** API Key required

**Required Parameters:**
- `id` (path, **required**): The agent execution ID

Example: `https://prodaus.api.airia.ai/v1/Feed/pipelines/123e4567-e89b-12d3-a456-426614174000`

**Returns:**
- Granular execution logs including:
  - Input data
  - AI model used
  - Output data

---

## Conversations Feed API

### 2. Get Conversations Feed

**Endpoint:** `GET https://prodaus.api.airia.ai/v1/conversations/feed`

**Summary:** Conversations feed API endpoint.

**Method:** GET

**Authentication:** API Key required

**Optional Parameters:**
- `pageNumber` (query, integer): Page number to be fetched
- `pageSize` (query, integer): Number of items per page

Example: `https://prodaus.api.airia.ai/v1/conversations/feed?pageNumber=1&pageSize=50`

**Returns:**
- Conversations feed data

---

## Data Ingestion Feed API

### 3. Get File Ingestion Logs

**Endpoint:** `GET https://prodaus.api.airia.ai/knowledge/v1/file_ingestion_logs`

**Summary:** Data Ingestion Feed - retrieves file ingestion logs.

**Method:** GET

**Authentication:** API Key required

**Optional Parameters:**
- `pageNumber` (query, integer): Page number to be fetched (example: 1)
- `pageSize` (query, integer): Number of items per page (example: 50)
- `sortOrder` (query, string): Sort order for results (example: "asc" or "desc")

Example: `https://prodaus.api.airia.ai/knowledge/v1/file_ingestion_logs?pageNumber=1&pageSize=50&sortOrder=asc`

**Returns:**
- File ingestion logs data

---

## Data Processing Feed API

### 4. Get Data Vector Search Executions

**Endpoint:** `GET https://prodaus.api.airia.ai/api/marketplace/v1/DataVectorSearchExecutions`

**Summary:** Data Processing Feed - retrieves data vector search executions.

**Method:** GET

**Authentication:** API Key required

**Optional Parameters:**
- `pageNumber` (query, integer): Page number to be fetched (example: 1)
- `pageSize` (query, integer): Number of items per page (example: 50)
- `sortBy` (query, string): Property to sort by (example: "createdAt")
- `sortDirection` (query, string): Sort direction (example: "DESC" or "ASC")

Example: `https://prodaus.api.airia.ai/api/marketplace/v1/DataVectorSearchExecutions?pageNumber=1&pageSize=50&sortBy=createdAt&sortDirection=DESC`

**Returns:**
- Data vector search executions data

---

## Token Consumption Feed API

### 5. Get AI Operation Executions

**Endpoint:** `GET https://prodaus.api.airia.ai/api/marketplace/v1/AIOperationExecutions`

**Summary:** Token Consumption Feed - retrieves AI operation executions.

**Method:** GET

**Authentication:** API Key required

**Optional Parameters:**
- `descending` (query, boolean): Sort in descending order (example: true or false)
- `limit` (query, integer): Number of items to return (example: 50)
- `offset` (query, integer): Number of items to skip (example: 0)

Example: `https://prodaus.api.airia.ai/api/marketplace/v1/AIOperationExecutions?descending=true&limit=50&offset=0`

**Returns:**
- AI operation executions data

---

### 6. Get Pipeline Execution Count by Date Range

**Endpoint:** `GET https://prodaus.api.airia.ai/v1/PipelineExecutionMetrics/count-range`

**Summary:** Get pipeline execution count by range.

**Method:** GET

**Authentication:** API Key required

**Required Parameters:**
- `startDate` (query, datetime): The start date
- `endDate` (query, datetime): The end date

Example: `https://prodaus.api.airia.ai/v1/PipelineExecutionMetrics/count-range?startDate=2026-01-01&endDate=2026-02-01`

**Returns:**
- Pipelines executed and how many times they were executed

---

### 7. Get Pipeline Execution Error Rate

**Endpoint:** `GET https://prodaus.api.airia.ai/v1/PipelineExecutionMetrics/error-rate`

**Summary:** Get pipeline execution error rate by range.

**Method:** GET

**Authentication:** API Key required

**Required Parameters:**
- `startDate` (query, datetime): The start date
- `endDate` (query, datetime): The end date

Example: `https://prodaus.api.airia.ai/v1/PipelineExecutionMetrics/error-rate?startDate=2026-01-01T00:00:00Z&endDate=2026-02-01T23:59:59Z`

**Returns:**
- `Error rate` number

---

### 8. Get Pipeline Execution Latency

**Endpoint:** `GET https://prodaus.api.airia.ai/v1/PipelineExecutionMetrics/latency`

**Summary:** Get pipeline execution latency by date range.

**Method:** GET

**Authentication:** API Key required

**Required Parameters:**
- `startDate` (query, datetime): The start date
- `endDate` (query, datetime): The end date

Example: `https://prodaus.api.airia.ai/v1/PipelineExecutionMetrics/latency?startDate=2026-01-01T00:00:00Z&endDate=2026-02-01T23:59:59Z`

**Returns:**
- `Latency` number

---

### 9. Get Pipeline Execution Model Usage

**Endpoint:** `GET https://prodaus.api.airia.ai/v1/PipelineExecutionMetrics/model/usage`

**Summary:** Get pipeline execution count by model and date range.

**Method:** GET

**Authentication:** API Key required

**Required Parameters:**
- `startDate` (query, datetime): The start date
- `endDate` (query, datetime): The end date

Example: `https://prodaus.api.airia.ai/v1/PipelineExecutionMetrics/model/usage?startDate=2026-01-01T00:00:00Z&endDate=2026-02-01T23:59:59Z`

**Returns:**
- `GetPipelineExecutionResult` object

---

### 10. Get Pipeline Execution Count by Model

**Endpoint:** `GET https://prodaus.api.airia.ai/v1/PipelineExecutionMetrics/model/count`

**Summary:** Get pipeline execution count by model and date range.

**Method:** GET

**Authentication:** API Key required

**Required Parameters:**
- `startDate` (query, datetime): The start date
- `endDate` (query, datetime): The end date

Example: `https://prodaus.api.airia.ai/v1/PipelineExecutionMetrics/model/count?startDate=2026-01-01T00:00:00Z&endDate=2026-02-01T23:59:59Z`

**Returns:**
- `GetPipelineExecutionResult` object

---

## Tenant Metrics

### 17. Get Tenant Metrics

**Endpoint:** `GET https://prodaus.api.airia.ai/v1/TenantMetrics/{tenantId}`

**Summary:** Gets tenant metrics for the specified tenant. Access is allowed for users from the airia tenant.

**Method:** GET

**Authentication:** API Key required

**Parameters:**
- `tenantId` (path, guid, **required**): The tenant ID to get metrics for
- `startDate` (query, datetime, optional): The start date for timespan metrics. Defaults to 30 days ago if not provided
- `endDate` (query, datetime, optional): The end date for timespan metrics. Defaults to now if not provided

Example: `https://prodaus.api.airia.ai/v1/TenantMetrics/123e4567-e89b-12d3-a456-426614174000?startDate=2026-01-01T00:00:00Z&endDate=2026-02-01T23:59:59Z`

**Returns:**
- Tenant metrics data (string)

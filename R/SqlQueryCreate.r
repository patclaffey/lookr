# Looker API 3.0 Reference
# 
# ### Authorization  The Looker API uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page. Pass API3 credentials to the **/login** endpoint to obtain a temporary access_token. Include that access_token in the Authorization header of Looker API requests. For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization)  ### Client SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. Client SDKs for a variety of programming languages can be generated from the Looker API's Swagger JSON metadata to streamline use of the Looker API in your applications. A client SDK for Ruby is available as an example. For more information, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks)  ### Try It Out!  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  ### Versioning  Future releases of Looker will expand this API release-by-release to securely expose more and more of the core power of Looker to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning. Stable (non-beta) API endpoints should not receive breaking changes in future releases. For more information, see [Looker API Versioning](https://looker.com/docs/r/api/versioning) 
# 
# OpenAPI spec version: 3.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SqlQueryCreate Class
#'
#' @field connection_id 
#' @field sql 
#' @field can 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SqlQueryCreate <- R6::R6Class(
  'SqlQueryCreate',
  public = list(
    `connection_id` = NULL,
    `sql` = NULL,
    `can` = NULL,
    initialize = function(`connection_id`, `sql`, `can`){
      if (!missing(`connection_id`)) {
        stopifnot(is.character(`connection_id`), length(`connection_id`) == 1)
        self$`connection_id` <- `connection_id`
      }
      if (!missing(`sql`)) {
        stopifnot(is.character(`sql`), length(`sql`) == 1)
        self$`sql` <- `sql`
      }
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
    },
    toJSON = function() {
      SqlQueryCreateObject <- list()
      if (!is.null(self$`connection_id`)) {
        SqlQueryCreateObject[['connection_id']] <- self$`connection_id`
      }
      if (!is.null(self$`sql`)) {
        SqlQueryCreateObject[['sql']] <- self$`sql`
      }
      if (!is.null(self$`can`)) {
        SqlQueryCreateObject[['can']] <- self$`can`
      }

      SqlQueryCreateObject
    },
    fromJSON = function(SqlQueryCreateJson) {
      SqlQueryCreateObject <- jsonlite::fromJSON(SqlQueryCreateJson)
      if (!is.null(SqlQueryCreateObject$`connection_id`)) {
        self$`connection_id` <- SqlQueryCreateObject$`connection_id`
      }
      if (!is.null(SqlQueryCreateObject$`sql`)) {
        self$`sql` <- SqlQueryCreateObject$`sql`
      }
      if (!is.null(SqlQueryCreateObject$`can`)) {
        self$`can` <- SqlQueryCreateObject$`can`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "connection_id": %s,
           "sql": %s,
           "can": %s
        }',
        self$`connection_id`,
        self$`sql`,
        self$`can`
      )
    },
    fromJSONString = function(SqlQueryCreateJson) {
      SqlQueryCreateObject <- jsonlite::fromJSON(SqlQueryCreateJson)
      self$`connection_id` <- SqlQueryCreateObject$`connection_id`
      self$`sql` <- SqlQueryCreateObject$`sql`
      self$`can` <- SqlQueryCreateObject$`can`
    }
  )
)

# Looker API 3.0 Reference
# 
# ### Authorization  The Looker API uses Looker **API3** credentials for authorization and access control. Looker admins can create API3 credentials on Looker's **Admin/Users** page. Pass API3 credentials to the **/login** endpoint to obtain a temporary access_token. Include that access_token in the Authorization header of Looker API requests. For details, see [Looker API Authorization](https://looker.com/docs/r/api/authorization)  ### Client SDKs  The Looker API is a RESTful system that should be usable by any programming language capable of making HTTPS requests. Client SDKs for a variety of programming languages can be generated from the Looker API's Swagger JSON metadata to streamline use of the Looker API in your applications. A client SDK for Ruby is available as an example. For more information, see [Looker API Client SDKs](https://looker.com/docs/r/api/client_sdks)  ### Try It Out!  The 'api-docs' page served by the Looker instance includes 'Try It Out!' buttons for each API method. After logging in with API3 credentials, you can use the \"Try It Out!\" buttons to call the API directly from the documentation page to interactively explore API features and responses.  ### Versioning  Future releases of Looker will expand this API release-by-release to securely expose more and more of the core power of Looker to API client applications. API endpoints marked as \"beta\" may receive breaking changes without warning. Stable (non-beta) API endpoints should not receive breaking changes in future releases. For more information, see [Looker API Versioning](https://looker.com/docs/r/api/versioning) 
# 
# OpenAPI spec version: 3.0.0
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Prefetch Class
#'
#' @field ttl 
#' @field created_at 
#' @field computation_time 
#' @field result_size_bytes 
#' @field hit_count 
#' @field touched_at 
#' @field value 
#' @field url 
#' @field can 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Prefetch <- R6::R6Class(
  'Prefetch',
  public = list(
    `ttl` = NULL,
    `created_at` = NULL,
    `computation_time` = NULL,
    `result_size_bytes` = NULL,
    `hit_count` = NULL,
    `touched_at` = NULL,
    `value` = NULL,
    `url` = NULL,
    `can` = NULL,
    initialize = function(`ttl`, `created_at`, `computation_time`, `result_size_bytes`, `hit_count`, `touched_at`, `value`, `url`, `can`){
      if (!missing(`ttl`)) {
        stopifnot(is.numeric(`ttl`), length(`ttl`) == 1)
        self$`ttl` <- `ttl`
      }
      if (!missing(`created_at`)) {
        stopifnot(is.character(`created_at`), length(`created_at`) == 1)
        self$`created_at` <- `created_at`
      }
      if (!missing(`computation_time`)) {
        stopifnot(is.numeric(`computation_time`), length(`computation_time`) == 1)
        self$`computation_time` <- `computation_time`
      }
      if (!missing(`result_size_bytes`)) {
        stopifnot(is.numeric(`result_size_bytes`), length(`result_size_bytes`) == 1)
        self$`result_size_bytes` <- `result_size_bytes`
      }
      if (!missing(`hit_count`)) {
        stopifnot(is.numeric(`hit_count`), length(`hit_count`) == 1)
        self$`hit_count` <- `hit_count`
      }
      if (!missing(`touched_at`)) {
        stopifnot(is.character(`touched_at`), length(`touched_at`) == 1)
        self$`touched_at` <- `touched_at`
      }
      if (!missing(`value`)) {
        self$`value` <- `value`
      }
      if (!missing(`url`)) {
        stopifnot(is.character(`url`), length(`url`) == 1)
        self$`url` <- `url`
      }
      if (!missing(`can`)) {
        self$`can` <- `can`
      }
    },
    toJSON = function() {
      PrefetchObject <- list()
      if (!is.null(self$`ttl`)) {
        PrefetchObject[['ttl']] <- self$`ttl`
      }
      if (!is.null(self$`created_at`)) {
        PrefetchObject[['created_at']] <- self$`created_at`
      }
      if (!is.null(self$`computation_time`)) {
        PrefetchObject[['computation_time']] <- self$`computation_time`
      }
      if (!is.null(self$`result_size_bytes`)) {
        PrefetchObject[['result_size_bytes']] <- self$`result_size_bytes`
      }
      if (!is.null(self$`hit_count`)) {
        PrefetchObject[['hit_count']] <- self$`hit_count`
      }
      if (!is.null(self$`touched_at`)) {
        PrefetchObject[['touched_at']] <- self$`touched_at`
      }
      if (!is.null(self$`value`)) {
        PrefetchObject[['value']] <- self$`value`
      }
      if (!is.null(self$`url`)) {
        PrefetchObject[['url']] <- self$`url`
      }
      if (!is.null(self$`can`)) {
        PrefetchObject[['can']] <- self$`can`
      }

      PrefetchObject
    },
    fromJSON = function(PrefetchJson) {
      PrefetchObject <- jsonlite::fromJSON(PrefetchJson)
      if (!is.null(PrefetchObject$`ttl`)) {
        self$`ttl` <- PrefetchObject$`ttl`
      }
      if (!is.null(PrefetchObject$`created_at`)) {
        self$`created_at` <- PrefetchObject$`created_at`
      }
      if (!is.null(PrefetchObject$`computation_time`)) {
        self$`computation_time` <- PrefetchObject$`computation_time`
      }
      if (!is.null(PrefetchObject$`result_size_bytes`)) {
        self$`result_size_bytes` <- PrefetchObject$`result_size_bytes`
      }
      if (!is.null(PrefetchObject$`hit_count`)) {
        self$`hit_count` <- PrefetchObject$`hit_count`
      }
      if (!is.null(PrefetchObject$`touched_at`)) {
        self$`touched_at` <- PrefetchObject$`touched_at`
      }
      if (!is.null(PrefetchObject$`value`)) {
        self$`value` <- PrefetchObject$`value`
      }
      if (!is.null(PrefetchObject$`url`)) {
        self$`url` <- PrefetchObject$`url`
      }
      if (!is.null(PrefetchObject$`can`)) {
        self$`can` <- PrefetchObject$`can`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "ttl": %d,
           "created_at": %s,
           "computation_time": %d,
           "result_size_bytes": %d,
           "hit_count": %d,
           "touched_at": %s,
           "value": %s,
           "url": %s,
           "can": %s
        }',
        self$`ttl`,
        self$`created_at`,
        self$`computation_time`,
        self$`result_size_bytes`,
        self$`hit_count`,
        self$`touched_at`,
        self$`value`,
        self$`url`,
        self$`can`
      )
    },
    fromJSONString = function(PrefetchJson) {
      PrefetchObject <- jsonlite::fromJSON(PrefetchJson)
      self$`ttl` <- PrefetchObject$`ttl`
      self$`created_at` <- PrefetchObject$`created_at`
      self$`computation_time` <- PrefetchObject$`computation_time`
      self$`result_size_bytes` <- PrefetchObject$`result_size_bytes`
      self$`hit_count` <- PrefetchObject$`hit_count`
      self$`touched_at` <- PrefetchObject$`touched_at`
      self$`value` <- PrefetchObject$`value`
      self$`url` <- PrefetchObject$`url`
      self$`can` <- PrefetchObject$`can`
    }
  )
)

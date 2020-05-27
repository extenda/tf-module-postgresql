# tf-module-postgresql

## Description

An Extenda Retail maintained Terraform Module, which is intended to create and modify PostgreSQL resources.

## Providers

| Name   | Version   |
|:-------|:----------|
| postgresql | n/a |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| allow\_connections | If false then no one can connect to this database. The default is true, allowing connections (except as restricted by other mechanisms, such as GRANT or REVOKE CONNECT) | `string` | `true` | no |
| connect\_timeout | Maximum wait for connection, in seconds. The default is 15s. Zero or not specified means wait indefinitely | `string` | `15` | no |
| connection\_limit | How many concurrent connections can be established to this database. -1 (the default) means no limit | `string` | `-1` | no |
| database | Database to connect to | `string` | `default` | no |
| db\_name | The name of the database. Must be unique on the PostgreSQL server instance where it is configured | `string` | n\a | yes |
| host | The address for the postgresql server connection | `string` | n/a | yes |
| lc\_collate | Collation order (LC_COLLATE) to use in the database. This affects the sort order applied to strings, e.g. in queries with ORDER BY, as well as the order used in indexes on text columns. If unset or set to an empty string the default collation is set to C. If set to DEFAULT Terraform will use the same collation order as the specified template database. Changing this value will force the creation of a new resource as this value can only be changed when a database is created | `string` | `C` | no |
| password | Password for the server connection | `string` | n/a | yes |
| port | The port for the postgresql server connection | `string` | `5432` | no |
| role\_allow\_login | Defines whether role is allowed to log in. Roles without this attribute are useful for managing database privileges, but are not users in the usual sense of the word. Default value is false | `string` | `false` | no |
| role\_name | The name of the role. Must be unique on the PostgreSQL server instance where it is configured | `string` | n/a | yes |
| role\_password | Role password (default is random-generated) | `string` | `""` | no |
| sslmode | Set the priority for an SSL connection to the server. disable, require, verify-ca, or verify-full | `string` | `require` | no |
| template | The name of the template database from which to create the database, or DEFAULT to use the default template (template0). NOTE: the default in Terraform is template0, not template1. Changing this value will force the creation of a new resource as this value can only be changed when a database is created | `string` | `template0` | no |
| username | Username for the server connection | `string` | `default` | no |

## Outputs

| Name | Description |
|------|-------------|
| db\_name | The name of the database. Must be unique on the PostgreSQL server instance where it is configured |
| role\_name | The name of the role. Must be unique on the PostgreSQL server instance where it is configured |
| role\_password | Role password (default is random-generated) |

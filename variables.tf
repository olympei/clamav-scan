variable "aws_region" {
  description = "A region the infrastructure will be deployed in."
  type        = string
  default     = "ap-south-1"
}

variable "buckets_to_scan" {
  description = "The buckets which need scanning."
  type        = list(string)
  default     = ["scaninputbucket", "scaninputbucket3"]
}

# -----------------------------
# Lambdas variables
# -----------------------------

variable "update_handler" {
  description = "Function entrypoint in your code."
  default     = "update.lambda_handler"
  type        = string
}

variable "scan_handler" {
  description = "Function entrypoint in your code."
  default     = "scan.lambda_handler"
  type        = string
}

variable "lambda_runtime" {
  description = "Identifier of the function's runtime."
  default     = "python3.7"
  type        = string
}

variable "lambda_timeout" {
  description = "Amount of time your Lambda Function has to run in seconds."
  default     = 300
  type        = number
}

variable "update_memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime."
  default     = 1024
  type        = number
}

variable "scan_memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime."
  default     = 2048
  type        = number
}

# -----------------------------
# Lambda permissions variables
# -----------------------------

variable "lambda_action" {
  description = "The AWS Lambda action you want to allow in this statement."
  default     = "lambda:InvokeFunction"
  type        = string
}

variable "lambda_update_principal" {
  description = <<DOCHERE
The principal who is getting this permission. e.g. s3.amazonaws.com, an AWS account ID,
or any valid AWS service principal such as events.amazonaws.com or sns.amazonaws.com.
DOCHERE
  default     = "events.amazonaws.com"
  type        = string
}

variable "lambda_scan_principal" {
  description = <<DOCHERE
The principal who is getting this permission. e.g. s3.amazonaws.com, an AWS account ID,
or any valid AWS service principal such as events.amazonaws.com or sns.amazonaws.com.
DOCHERE
  default     = "s3.amazonaws.com"
  type        = string
}

# -----------------------------
# Cloudwatch variables
# -----------------------------

variable "event_name" {
  description = "The name of the rule."
  default     = "every_three_hours"
  type        = string
}

variable "event_description" {
  description = "The description of the rule."
  default     = "Fires every three hours"
  type        = string
}

variable "event_schedule_expression" {
  description = " The scheduling expression."
  default     = "rate(3 hours)"
  type        = string
}

# -----------------------------
# Bucket variables
# -----------------------------

variable "bucket_events" {
  description = "Specifies event for which to send notifications."
  default     = ["s3:ObjectCreated:*"]
  type        = list(string)
}


variable "All_notification" {
  default = "All_notification"
  description = "first sns topic created from terraform"
}

variable "infected_SNS" {
  default = "infected_SNS"
  description = "first sns topic created from terraform"
}


variable "account_id"{
    description = "my aws ac id"
    default = "670995247083"
}

variable "email_name"{
  type    = string
  default = "akb0103.official@gmail.com"
}

variable "create_resources"{
  type    = string
  default = "yes"
}

variable "infected_notification"{
  type    = string
  default = "true"
}
variable "All_Notification"{
  type    = string
  default = "true"
}

variable "All_Notification_sns_name"{
  type    = string
  default = "All_Notification"
}
variable "infected_notification_sns_name"{
  type    = string
  default = "infected_notification"
}
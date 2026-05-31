output "account_id" {
  description = "The AWS account ID of the current caller"
  value       = data.aws_caller_identity.current.account_id
}

output "user_id" {
  description = "The unique identifier of the current caller"
  value       = data.aws_caller_identity.current.user_id
}

output "arn" {
  description = "The ARN of the current caller"
  value       = data.aws_caller_identity.current.arn
}

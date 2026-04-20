# Output the values for verification
output "account_id" {
  value = module.identity.account_id
}

output "user_id" {
  value = module.identity.user_id
}

output "arn" {
  value = module.identity.arn
}
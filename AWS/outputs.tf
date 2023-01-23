output "smtp_username" {
  value = aws_iam_access_key.user.id
}

output "smtp_password" {
  value     = aws_iam_access_key.access_key.ses_smtp_password_v4
  sensitive = true
}

output "policy_json" {
  description = "IAM policies"
  value       = aws_iam_policy.policy.policy_json
}



resource "aws_ses_email_identity" "email" {
  email = "donotreply@zone2.cloutomate.dev"
}

resource "aws_iam_user" "user" {
  name = "myapp"
}

resource "aws_ses_domain_identity" "domain" {
  domain = "zone2.cloutomate.dev"
}

resource "aws_ses_email_identity" "email" {
  email = "donotreply@zone1.cloutomate.dev"
}

resource "aws_iam_user" "user" {
  name = "myapp"
}

resource "aws_ses_domain_identity" "domain" {
  domain = "zone1.cloutomate.dev"
}

resource "aws_iam_access_key" "access_key" {
  user = aws_iam_user.user.name
}

data "aws_iam_policy_document" "policy_document" {
  statement {
    actions   = ["ses:SendEmail", "ses:SendRawEmail"]
    resources = [data.aws_ses_email_identity.email.arn]
  }
}

resource "aws_iam_policy" "policy" {
  name   = "Test Policy"
  policy = data.aws_iam_policy_document.policy_document.json
}

resource "aws_iam_user_policy_attachment" "user_policy" {
  user       = aws_iam_user.user.name
  policy_arn = aws_iam_policy.policy.arn
}

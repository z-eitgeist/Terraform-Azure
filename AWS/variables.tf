variable "domain" {
  type        = string
  description = "The domain from which emails are sent"
}

variable "user" {
    type = string
    description = "Username of the user sending emails"
}

variable "email" {
    type = string
    description = "Email of the user sending emails"
}
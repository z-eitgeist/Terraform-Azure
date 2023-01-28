resource "null_resource" "subscription_change" {
    provisioner "local-exec" {
        command = "az account subscription rename --subscription-id ${var.subscription_id} --name ${var.new_sub_name}"
  }
}



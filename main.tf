variable "name" {
  type = string
  default = "World"
}

data "template_file" "motd" {
  template = "${file("${path.module}/motd.tpl")}"
  vars = {
    name = var.name
  }
}

output "motd" {
  value = data.template_file.motd.rendered
}

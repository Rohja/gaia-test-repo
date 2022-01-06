data "template_file" "motd" {
  template = "${file("${path.module}/motd.tpl")}"
  vars = {
    name = "World"
  }
}

output "motd" {
  value = data.template_file.motd.rendered
}

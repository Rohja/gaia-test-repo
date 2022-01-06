data "template_file" "init" {
  template = "${file("${path.module}/motd.tpl")}"
  vars = {
    name = "World"
  }
}

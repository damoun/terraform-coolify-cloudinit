data "http" "install_script" {
  url = var.url_install_script
}

locals {
  install_script_lines = split("\n", data.http.install_script.response_body)
  install_script_no_comments = [
    for line in local.install_script_lines :
    line if !startswith(trimspace(line), "#")
  ]
  install_script_no_inline_comments = [
    for line in local.install_script_no_comments :
    replace(line, "#.*$", "")
  ]
  install_script_minified = [
    for line in local.install_script_no_inline_comments :
    trimspace(replace(replace(line, "\t", " "), "  ", " "))
    if trimspace(replace(replace(line, "\t", " "), "  ", " ")) != ""
  ]
  install_script_clean = join("\n", local.install_script_minified)
}

data "cloudinit_config" "coolify" {
  gzip          = false
  base64_encode = false

  part {
    filename     = "install.sh"
    content_type = "text/x-shellscript"
    content      = local.install_script_clean
  }
}

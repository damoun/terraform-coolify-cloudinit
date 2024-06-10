data "http" "install_script" {
  url = var.url_install_script
}

data "cloudinit_config" "coolify" {
  gzip          = false
  base64_encode = false

  part {
    filename     = "install.sh"
    content_type = "text/x-shellscript"

    content = data.http.install_script.response_body
  }
}

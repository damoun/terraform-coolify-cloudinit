output "user_data" {
  description = "The rendered user data for the server"
  value = data.cloudinit_config.coolify.rendered
}

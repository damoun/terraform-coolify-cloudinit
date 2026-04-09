<h1 align="center">
  terraform-coolify-cloudinit
  <br>
</h1>

<h4 align="center">A terraform module to install Coolify with cloudinit user data.</h4>

<p align="center">
  <a href="#requirements">Requirements</a> •
  <a href="#example">Example</a> •
  <a href="#providers">Providers</a> •
  <a href="#modules">Modules</a> •
  <a href="#inputs">Inputs</a> •
  <a href="#Outputs">Outputs</a> •
  <a href="#resources">Resources</a>
</p>

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.14.8 |

## Example

```hcl
# Example, should give the user an idea about how to use this module.
# This code is found in the examples directory.
terraform {
  required_version = ">= 1.8.4"
}

module "coolify" {
  source = "../"
}

output "user_data" {
  value = module.coolify.user_data
}
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudinit"></a> [cloudinit](#provider\_cloudinit) | n/a |
| <a name="provider_http"></a> [http](#provider\_http) | n/a |

## Modules

No modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_url_install_script"></a> [url\_install\_script](#input\_url\_install\_script) | The URL of the install script of Coolify | `string` | `"https://cdn.coollabs.io/coolify/install.sh"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_user_data"></a> [user\_data](#output\_user\_data) | The rendered user data for the server |

## Resources

| Name | Type |
|------|------|
| [cloudinit_config.coolify](https://registry.terraform.io/providers/hashicorp/cloudinit/latest/docs/data-sources/config) | data source |
| [http_http.install_script](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |
<!-- END_TF_DOCS -->
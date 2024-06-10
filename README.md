<h1 align="center">
  terraform-module-template
  <br>
</h1>

<h4 align="center">A terraform module repository template.</h4>

<p align="center">
  <a href="#requirements">Requirements</a> •
  <a href="#example">Example</a> •
  <a href="#providers">Providers</a> •
  <a href="#modules">Modules</a> •
  <a href="#inputs">Inputs</a> •
  <a href="#Outputs">Outputs</a> •
  <a href="#resources">Resources</a> •
</p>

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8.4 |
| <a name="requirement_cloudinit"></a> [cloudinit](#requirement\_cloudinit) | 2.3.4 |
| <a name="requirement_http"></a> [http](#requirement\_http) | 3.4.3 |

## Example

```hcl
# Example, should give the user an idea about how to use this module.
# This code is found in the examples directory.
terraform {
  required_version = ">= 1.8.4"
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.47.0"
    }
  }
}

provider "hcloud" {}

module "coolify" {
  source = "../"
}

resource "hcloud_server" "coolify" {
  name        = "coolify"
  image       = "ubuntu-24.04"
  server_type = "cax11"
  location    = "nbg1"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  user_data = module.coolify.user_data
}
```

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudinit"></a> [cloudinit](#provider\_cloudinit) | 2.3.4 |
| <a name="provider_http"></a> [http](#provider\_http) | 3.4.3 |

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
| [cloudinit_config.coolify](https://registry.terraform.io/providers/hashicorp/cloudinit/2.3.4/docs/data-sources/config) | data source |
| [http_http.install_script](https://registry.terraform.io/providers/hashicorp/http/3.4.3/docs/data-sources/http) | data source |
<!-- END_TF_DOCS -->
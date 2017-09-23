### firewall - Network Google Cloud Platform 

##### Example (minimum)

```hcl
module "firewall-ssh" {
  source        = "github.com/tasdikrahman/terraform-gcp-network-firewall"
  name          = "ssh"
  network       = "${data.google_compute_network.test-vpc.name}"
  protocol      = "tcp"
  ports         = ["22"]
  source_ranges = ["0.0.0.0/0"]
}

data "google_compute_network" "test-vpc" {
  name = "${var.vpc}"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | A unique name for the resource, required by GCE | string | - | yes|
| network | The name of the network to attach this firewall to | string | - | yes |
| protocol | The name of the protocol to allow | string | - | yes |
| ports |  List of ports and/or port ranges to allow. This can only be specified if the protocol is TCP or UDP | list | - | yes |
| source_ranges |  A list of source CIDR ranges that this firewall applies to | list | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| self_link | The URL of the created resource |

### LICENSE

MIT License

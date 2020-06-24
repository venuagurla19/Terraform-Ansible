# WireGuard Relay Infrastrucutre as Code
![tf-ansible-aws-wg.png](https://miro.medium.com/max/1380/1*jCOdj0x2_yahD_T-cRpjvg.png)

Code that accompanies the Medium post [WireGuard Relay Infrastructure as Code](https://medium.com/@yarbrough.b/wireguard-relay-infrastructure-as-code-b337b77af9d5)

This will be a series of posts on WireGuard and how to deploy a personal VPN server on AWS using Terraform and Ansible. The first two posts will be about understanding the technology, and the third post will put it together with an automated deployment.

1. [Understanding WireGuard: A Modern VPN on a Virtual Interface](https://medium.com/@yarbrough.b/understanding-wireguard-2d8d9af987eb)
2. [Understanding Terraform and Ansible](https://medium.com/@yarbrough.b/understanding-terraform-and-ansible-438af22c0771)
3. Deploying a WireGuard Relay Server

Source code for the posts is at https://gitlab.com/byarbrough/wg-relay-iac


## Why WireGuard?

WireGuard is a new VPN technology that is more performant than OpenVPN. The technology has received a lot of attention lately and has been pulled into the Linux kernel. It is simple and easy-to-use, requiring only a single configuration file and the exchange of a public keys. And, of course, it is cryptographically sound.

## Why Terraform and Ansible?

Terraform and Ansible are both open source tools that provide different, essential functions of deploying and managing cloud infrastructure. Terraform provisions resources. Ansible configures resources once they are deployed.

Both tools are extremely popular for DevOps pipelines. Both are agentless, requiring no additional software to be installed on targets. They each have enterprise options, but the free version is more than sufficient for even complicated projects.

Enjoy!

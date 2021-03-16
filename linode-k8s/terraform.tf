variable "linode_token" {
	type = string
}

variable "region" {
	type = string
	default = "ap-south"
}

variable "node_type" {
	type = string
	default = "g6-standard-2"
}

variable "master_type" {
	type = string
	default = "g6-standard-2"
}

variable "nodes" {
	type = number
	default = 1
}

variable "ssh_key" {
	type = string
	default = "~/.ssh/linode_ssh.pub"
}

module "k8s" {
	source = "linode/k8s/linode"

	nodes=var.nodes
	ssh_public_key=var.ssh_key
	region=var.region
	linode_token = var.linode_token
	server_type_node = var.node_type
	server_type_master = var.master_type
}

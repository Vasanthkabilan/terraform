variable "vpn_ip" {
    default = "10.30.45.23/32"
}

variable "usernumber" {
  type = number
}

variable "elb_name" {
  default = "myelb"
}

variable "regions" {
  type = list(string)
  default = ["us-west-2a", "us-west-2b", "us-west-2c"]
}
variable "timeout" {
  default = 400
}

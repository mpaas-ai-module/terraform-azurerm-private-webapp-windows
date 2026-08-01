variable "name" {
  type        = string
  description = "The name which should be used for this Windows Windows Web App."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group where the Windows Web App should exist."
}

variable "location" {
  type        = string
  description = "The Azure Region where the Windows Web App should exist.Central India or South India"
}

variable "service_plan_id" {
  type        = string
  description = "The ID of the Service Plan that this Windows App Service will be created in."

}

variable "ftps_state" {
  type        = string
  description = "The State of FTP / FTPS service. Possible values include: AllAllowed, FtpsOnly, Disabled."
  default     = "FtpsOnly"
}

variable "app_command_line" {
  type        = string
  description = "The App command line to launch."
  default     = ""
}
variable "current_stack" {
  type        = string
  description = " The Application Stack for the Windows Web App. Possible values include dotnet, dotnetcore, node, python, php, and java."
}

variable "stack_version" {
  type        = string
  description = "Version of the selected stack."

}

# variable "docker_registry_url" {
#   type        = string
#   description = "The URL of the container registry where the docker_image_name is located. e.g. https://index.docker.io or https://mcr.microsoft.com. This value is required with docker_image_name."
#   default     = "https://mcr.microsoft.com"
# }
# variable "docker_registry_username" {
#   type        = string
#   description = "The User Name to use for authentication against the registry to pull the image."
#   default     = "admin"

# }
# variable "docker_registry_password" {
#   type        = string
#   description = "The User Name to use for authentication against the registry to pull the image."
#   default     = "Welcome@1234"

# }
variable "java_embedded_server_enabled" {
  type        = string
  description = "value"
  default     = ""

}
variable "tomcat_version" {
  type        = string
  description = "value"
  default     = ""

}


variable "vnet_route_all_enabled" {
  type        = bool
  description = "enable all outbound"
}
variable "physical_path" {
  type        = string
  description = "value"
  default = "site\\wwwroot\\"

}
variable "virtual_path" {
  type        = string
  description = "value"
  default = "/"

}
variable "physical_path1" {
  type        = string
  description = "value"

}
variable "virtual_path1" {
  type        = string
  description = "value"

}


variable "docker_registry_url" {
  type        = string
  description = "The URL of the container registry where the docker_image_name is located. e.g. https://index.docker.io or https://mcr.microsoft.com. This value is required with docker_image_name."
  default     = "https://mcr.microsoft.com"
}
variable "docker_registry_username" {
  type        = string
  description = "The User Name to use for authentication against the registry to pull the image."
  default     = "admin"

}
variable "docker_registry_password" {
  type        = string
  description = "The User Name to use for authentication against the registry to pull the image."
  default     = "Welcome@1234"

}
variable "python" {
  type        = bool
  description = "value"
  default     = false

}
variable "https_only" {
  type    = bool
  default = true

}

variable "virtual_network_subnet_id" {
  type        = string
  description = "vnet link"
}


variable "ip_restrictions" {
  type = map(object({
    ip_address = string
    priority   = number
  }))
  default = {
    cf1  = { ip_address = "173.245.48.0/20", priority = 100 }
    cf2  = { ip_address = "103.21.244.0/22", priority = 100 }
    cf3  = { ip_address = "103.22.200.0/22", priority = 100 }
    cf4  = { ip_address = "103.31.4.0/22", priority = 100 }
    cf5  = { ip_address = "141.101.64.0/18", priority = 100 }
    cf6  = { ip_address = "108.162.192.0/18", priority = 100 }
    cf7  = { ip_address = "190.93.240.0/20", priority = 100 }
    cf8  = { ip_address = "188.114.96.0/20", priority = 100 }
    cf9  = { ip_address = "197.234.240.0/22", priority = 100 }
    cf10 = { ip_address = "198.41.128.0/17", priority = 100 }
    cf11 = { ip_address = "162.158.0.0/15", priority = 100 }
    cf12 = { ip_address = "104.16.0.0/13", priority = 100 }
    cf13 = { ip_address = "104.24.0.0/14", priority = 100 }
    cf14 = { ip_address = "172.64.0.0/13", priority = 100 }
    cf15 = { ip_address = "131.0.72.0/22", priority = 100 }
  }
}

# private endpoint

variable "private_endpoint_subnet_id" {
  type        = string
  description = "The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint."

}

variable "is_manual_connection" {
  type        = bool
  description = "Does the Private Endpoint require Manual Approval from the remote resource owner?"
  default     = false

}
variable "subresource_names" {
  type        = list(string)
  description = " A list of subresource names which the Private Endpoint is able to connect to."
  default = [ "sites" ]
}
variable "private_dns_zone_ids" {
  type        = list(string)
  description = "Specifies the list of Private DNS Zones to include within the private_dns_zone_group."
}

variable "ip_configuration" {
  type        = bool
  default     = false
  description = "One or more ip_configuration blocks as defined below. This allows a static IP address to be set for this Private Endpoint, otherwise an address is dynamically allocated from the Subnet."
}
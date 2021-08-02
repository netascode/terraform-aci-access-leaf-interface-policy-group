variable "name" {
  description = "Leaf interface policy group name."
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.name))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "type" {
  description = "Type. Choices: `access`, `vpc`, `pc`."
  type        = string
  default     = "access"

  validation {
    condition     = contains(["access", "vpc", "pc"], var.type)
    error_message = "Valid values are `access`, `vpc` or `pc`."
  }
}

variable "link_level_policy" {
  description = "Link level policy name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.link_level_policy))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "cdp_policy" {
  description = "CDP policy name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.cdp_policy))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "lldp_policy" {
  description = "LLDP policy name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.lldp_policy))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "spanning_tree_policy" {
  description = "Spanning tree policy name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.spanning_tree_policy))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "mcp_policy" {
  description = "MCP policy name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.mcp_policy))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "l2_policy" {
  description = "L2 policy name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.l2_policy))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "storm_control_policy" {
  description = "Storm control policy name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.storm_control_policy))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "port_channel_policy" {
  description = "Port channel policy name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.port_channel_policy))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "port_channel_member_policy" {
  description = "Port channel member policy name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.port_channel_member_policy))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}

variable "aaep" {
  description = "Attachable access entity profile name."
  type        = string
  default     = ""

  validation {
    condition     = can(regex("^[a-zA-Z0-9_.-]{0,64}$", var.aaep))
    error_message = "Allowed characters: `a`-`z`, `A`-`Z`, `0`-`9`, `_`, `.`, `-`. Maximum characters: 64."
  }
}


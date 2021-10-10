resource "aci_rest" "infraAccGrp" {
  dn         = var.type == "access" ? "uni/infra/funcprof/accportgrp-${var.name}" : "uni/infra/funcprof/accbundle-${var.name}"
  class_name = var.type == "access" ? "infraAccPortGrp" : "infraAccBndlGrp"
  content = {
    name = var.name
    lagT = var.type == "vpc" ? "node" : var.type == "pc" ? "link" : null
  }
}

resource "aci_rest" "infraRsHIfPol" {
  dn         = "${aci_rest.infraAccGrp.dn}/rshIfPol"
  class_name = "infraRsHIfPol"
  content = {
    tnFabricHIfPolName = var.link_level_policy
  }
}

resource "aci_rest" "infraRsCdpIfPol" {
  dn         = "${aci_rest.infraAccGrp.dn}/rscdpIfPol"
  class_name = "infraRsCdpIfPol"
  content = {
    tnCdpIfPolName = var.cdp_policy
  }
}

resource "aci_rest" "infraRsLldpIfPol" {
  dn         = "${aci_rest.infraAccGrp.dn}/rslldpIfPol"
  class_name = "infraRsLldpIfPol"
  content = {
    tnLldpIfPolName = var.lldp_policy
  }
}

resource "aci_rest" "infraRsStpIfPol" {
  dn         = "${aci_rest.infraAccGrp.dn}/rsstpIfPol"
  class_name = "infraRsStpIfPol"
  content = {
    tnStpIfPolName = var.spanning_tree_policy
  }
}

resource "aci_rest" "infraRsMcpIfPol" {
  dn         = "${aci_rest.infraAccGrp.dn}/rsmcpIfPol"
  class_name = "infraRsMcpIfPol"
  content = {
    tnMcpIfPolName = var.mcp_policy
  }
}

resource "aci_rest" "infraRsL2IfPol" {
  dn         = "${aci_rest.infraAccGrp.dn}/rsl2IfPol"
  class_name = "infraRsL2IfPol"
  content = {
    tnL2IfPolName = var.l2_policy
  }
}

resource "aci_rest" "infraRsStormctrlIfPol" {
  dn         = "${aci_rest.infraAccGrp.dn}/rsstormctrlIfPol"
  class_name = "infraRsStormctrlIfPol"
  content = {
    tnStormctrlIfPolName = var.storm_control_policy
  }
}

resource "aci_rest" "infraRsLacpPol" {
  count      = (var.type == "vpc" || var.type == "pc") ? 1 : 0
  dn         = "${aci_rest.infraAccGrp.dn}/rslacpPol"
  class_name = "infraRsLacpPol"
  content = {
    tnLacpLagPolName = var.port_channel_policy
  }
}

resource "aci_rest" "infraAccBndlSubgrp" {
  count      = (var.type == "vpc" || var.type == "pc") ? 1 : 0
  dn         = "${aci_rest.infraAccGrp.dn}/accsubbndl-${var.name}"
  class_name = "infraAccBndlSubgrp"
  content = {
    name = var.name
  }
}

resource "aci_rest" "infraRsLacpInterfacePol" {
  count      = (var.type == "vpc" || var.type == "pc") ? 1 : 0
  dn         = "${aci_rest.infraAccBndlSubgrp[0].dn}/rslacpInterfacePol"
  class_name = "infraRsLacpInterfacePol"
  content = {
    tnLacpIfPolName = var.port_channel_member_policy
  }
}

resource "aci_rest" "infraRsAttEntP" {
  count      = var.aaep != "" ? 1 : 0
  dn         = "${aci_rest.infraAccGrp.dn}/rsattEntP"
  class_name = "infraRsAttEntP"
  content = {
    tDn = "uni/infra/attentp-${var.aaep}"
  }
}

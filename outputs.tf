output "dn" {
  value       = aci_rest.infraAccGrp.id
  description = "Distinguished name of `infraAccGrp` object"
}

output "name" {
  value       = aci_rest.infraAccGrp.content.name
  description = "Leaf interface policy group name"
}

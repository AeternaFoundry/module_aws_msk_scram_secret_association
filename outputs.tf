output "msk_scram_secret_associations_id" {
  description = "Map of id values across all msk_scram_secret_associations, keyed the same as var.msk_scram_secret_associations"
  value       = { for k, v in aws_msk_scram_secret_association.msk_scram_secret_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "msk_scram_secret_associations_cluster_arn" {
  description = "Map of cluster_arn values across all msk_scram_secret_associations, keyed the same as var.msk_scram_secret_associations"
  value       = { for k, v in aws_msk_scram_secret_association.msk_scram_secret_associations : k => v.cluster_arn if v.cluster_arn != null && length(v.cluster_arn) > 0 }
}
output "msk_scram_secret_associations_region" {
  description = "Map of region values across all msk_scram_secret_associations, keyed the same as var.msk_scram_secret_associations"
  value       = { for k, v in aws_msk_scram_secret_association.msk_scram_secret_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "msk_scram_secret_associations_secret_arn_list" {
  description = "Map of secret_arn_list values across all msk_scram_secret_associations, keyed the same as var.msk_scram_secret_associations"
  value       = { for k, v in aws_msk_scram_secret_association.msk_scram_secret_associations : k => v.secret_arn_list if v.secret_arn_list != null && length(v.secret_arn_list) > 0 }
}


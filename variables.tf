variable "msk_scram_secret_associations" {
  description = <<EOT
Map of msk_scram_secret_associations, attributes below
Required:
    - cluster_arn
    - secret_arn_list
Optional:
    - region
EOT

  type = map(object({
    cluster_arn     = string
    secret_arn_list = set(string)
    region          = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


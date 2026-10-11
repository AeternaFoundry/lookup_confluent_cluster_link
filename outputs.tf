output "cluster_link_lookup_id" {
  description = "Map of id values across all cluster_link_lookup, keyed the same as var.cluster_link_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_cluster_link.cluster_link_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cluster_link_lookup_cluster_link_id" {
  description = "Map of cluster_link_id values across all cluster_link_lookup, keyed the same as var.cluster_link_lookup except keys with no cluster_link_id are omitted"
  value       = { for k, v in data.confluent_cluster_link.cluster_link_lookup : k => v.cluster_link_id if v.cluster_link_id != null && length(v.cluster_link_id) > 0 }
}
output "cluster_link_lookup_config" {
  description = "Map of config values across all cluster_link_lookup, keyed the same as var.cluster_link_lookup except keys with no config are omitted"
  value       = { for k, v in data.confluent_cluster_link.cluster_link_lookup : k => v.config if v.config != null && length(v.config) > 0 }
}
output "cluster_link_lookup_credentials" {
  description = "Map of credentials values across all cluster_link_lookup, keyed the same as var.cluster_link_lookup except keys with no credentials are omitted"
  value       = { for k, v in data.confluent_cluster_link.cluster_link_lookup : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "cluster_link_lookup_kafka_cluster" {
  description = "Map of kafka_cluster values across all cluster_link_lookup, keyed the same as var.cluster_link_lookup except keys with no kafka_cluster are omitted"
  value       = { for k, v in data.confluent_cluster_link.cluster_link_lookup : k => one(v.kafka_cluster) if v.kafka_cluster != null && length(v.kafka_cluster) > 0 }
}
output "cluster_link_lookup_link_name" {
  description = "Map of link_name values across all cluster_link_lookup, keyed the same as var.cluster_link_lookup except keys with no link_name are omitted"
  value       = { for k, v in data.confluent_cluster_link.cluster_link_lookup : k => v.link_name if v.link_name != null && length(v.link_name) > 0 }
}
output "cluster_link_lookup_link_state" {
  description = "Map of link_state values across all cluster_link_lookup, keyed the same as var.cluster_link_lookup except keys with no link_state are omitted"
  value       = { for k, v in data.confluent_cluster_link.cluster_link_lookup : k => v.link_state if v.link_state != null && length(v.link_state) > 0 }
}
output "cluster_link_lookup_rest_endpoint" {
  description = "Map of rest_endpoint values across all cluster_link_lookup, keyed the same as var.cluster_link_lookup except keys with no rest_endpoint are omitted"
  value       = { for k, v in data.confluent_cluster_link.cluster_link_lookup : k => v.rest_endpoint if v.rest_endpoint != null && length(v.rest_endpoint) > 0 }
}


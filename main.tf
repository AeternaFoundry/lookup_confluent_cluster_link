data "confluent_cluster_link" "cluster_link_lookup" {
  for_each = var.cluster_link_lookup

  link_name     = each.value.link_name
  rest_endpoint = each.value.rest_endpoint

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      key    = credentials.value.key
      secret = credentials.value.secret
    }
  }

  dynamic "kafka_cluster" {
    for_each = each.value.kafka_cluster != null ? [each.value.kafka_cluster] : []
    content {
      id = kafka_cluster.value.id
    }
  }
}


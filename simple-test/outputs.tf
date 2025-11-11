output "resource_id" {
  description = "The ID of the null resource"
  value       = null_resource.test.id
}

output "timestamp" {
  description = "The timestamp when the resource was created"
  value       = null_resource.test.triggers.timestamp
}

output "random_value" {
  description = "The random hex value generated"
  value       = random_id.test.hex
}

output "timestamp" {
  description = "The timestamp when the sleep completed"
  value       = time_sleep.wait.id
}

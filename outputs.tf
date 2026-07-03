output "filesystem_ids" {
  value       = { for k, v in azurerm_storage_data_lake_gen2_filesystem.this : k => v.id }
  description = "Map of container name to Data Lake Gen2 filesystem resource ID."
}

output "path_ids" {
  value       = { for k, v in azurerm_storage_data_lake_gen2_path.this : k => v.id }
  description = "Map of \"<container>::<path>\" to Data Lake Gen2 path resource ID."
}

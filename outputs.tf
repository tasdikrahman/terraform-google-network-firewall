output "self_link" {
  description = "The URI of the created resource"
  value       = "${google_compute_firewall.new-firewall.self_link}"
}

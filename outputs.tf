#------------------------------------------#
# AWS Outputs
#------------------------------------------#
output "elb_https_dns" {
    value = "${aws_elb.rancher_ha_https.dns_name}"
}

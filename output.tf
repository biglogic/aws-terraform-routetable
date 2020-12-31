output "rtpub_id" {
    value = aws_route_table.public_routable.id
}

output "rtpvt_id"{
    value = aws_route_table.pvt_routable.id
}
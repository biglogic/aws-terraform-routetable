resource "aws_route_table" "public_routable" {
    vpc_id = var.vpcid

    route {
        //associated subnet can reach everywhere
        cidr_block = var.rt_cidr         //CRT uses this IGW to reach internet
        gateway_id = var.igw_id
    }
    tags = {
       Name = "routetablepub"
  }

}

resource "aws_route_table_association" "a" {
  subnet_id      = var.subpubid
  route_table_id = var.rtpub_id
}

resource "aws_route_table_association" "b" {
  subnet_id      = var.subpubid1
  route_table_id = var.rtpub_id
}

resource "aws_route_table" "pvt_routable" {
    vpc_id = var.vpcid

    route {
        //associated subnet can reach everywhere
        cidr_block = var.rt_cidr         //CRT uses this IGW to reach internet
        nat_gateway_id = var.natgw_id
    }
    tags = {
       Name = "routetablepub"
  }

}

resource "aws_route_table_association" "x" {
  subnet_id      = var.subpvtid1
  route_table_id = var.rtpvt_id
}

resource "aws_route_table_association" "y" {
  subnet_id      = var.subpvtid2
  route_table_id = var.rtpvt_id
}
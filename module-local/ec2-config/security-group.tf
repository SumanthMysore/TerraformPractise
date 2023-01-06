resource "aws_security_group" "my_sg" {}

resource "aws_security_group_rule" "inbound_rules" {
  count = length(var.inbound_rules)

  type              = "ingress"
  from_port         = var.inbound_rules[count.index].from_port
  to_port           = var.inbound_rules[count.index].to_port
  protocol          = var.inbound_rules[count.index].protocol
  cidr_blocks       = [var.inbound_rules[count.index].cidr_block]
  security_group_id = aws_security_group.my_sg.id
}

resource "aws_security_group_rule" "outbound_rules" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.my_sg.id
}

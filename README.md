# MyNewRepo
La commande terrafom graph nous donne une idée précise sur les dépendences entres les ressources & variables 

digraph {
	compound = "true"
	newrank = "true"
	subgraph "root" {
		"[root] aws_instance.app_server (expand)" [label = "aws_instance.app_server", shape = "box"]
		"[root] aws_security_group.Virginia-sg (expand)" [label = "aws_security_group.Virginia-sg", shape = "box"]
		"[root] provider[\"registry.terraform.io/hashicorp/aws\"]" [label = "provider[\"registry.terraform.io/hashicorp/aws\"]", shape = "diamond"]
		"[root] var.frmprt" [label = "var.frmprt", shape = "note"]
		"[root] var.region" [label = "var.region", shape = "note"]
		"[root] var.toprt" [label = "var.toprt", shape = "note"]
		"[root] aws_instance.app_server (expand)" -> "[root] aws_security_group.Virginia-sg (expand)"
		"[root] aws_security_group.Virginia-sg (expand)" -> "[root] provider[\"registry.terraform.io/hashicorp/aws\"]"
		"[root] aws_security_group.Virginia-sg (expand)" -> "[root] var.frmprt"
		"[root] aws_security_group.Virginia-sg (expand)" -> "[root] var.toprt"
		"[root] output.public_ip (expand)" -> "[root] aws_instance.app_server (expand)"
		"[root] provider[\"registry.terraform.io/hashicorp/aws\"] (close)" -> "[root] aws_instance.app_server (expand)"
		"[root] provider[\"registry.terraform.io/hashicorp/aws\"]" -> "[root] var.region"
		"[root] root" -> "[root] output.public_ip (expand)"
		"[root] root" -> "[root] provider[\"registry.terraform.io/hashicorp/aws\"] (close)"
	}
}
#################################################################################################
Terraform plan
#################################################################################################





#################################################################################################
Terraform Apply
#################################################################################################

  Enter a value: yes

aws_security_group.Virginia-sg: Creating...
aws_security_group.Virginia-sg: Creation complete after 5s [id=sg-03098c73689e7a695]
aws_instance.app_server: Creating...
aws_instance.app_server: Still creating... [10s elapsed]
aws_instance.app_server: Still creating... [20s elapsed]
aws_instance.app_server: Still creating... [30s elapsed]
aws_instance.app_server: Creation complete after 34s [id=i-0e440ec15d2616969]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

public_ip = "100.25.149.124"


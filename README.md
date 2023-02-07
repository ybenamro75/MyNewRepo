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



Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  [32m+[0m create
[0m
Terraform will perform the following actions:

[1m  # aws_instance.app_server[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_instance" "app_server" {
      [32m+[0m [0m[1m[0mami[0m[0m                                  = "ami-0aa7d40eeae50c9a9"
      [32m+[0m [0m[1m[0marn[0m[0m                                  = (known after apply)
      [32m+[0m [0m[1m[0massociate_public_ip_address[0m[0m          = (known after apply)
      [32m+[0m [0m[1m[0mavailability_zone[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mcpu_core_count[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mcpu_threads_per_core[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mdisable_api_stop[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mdisable_api_termination[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mebs_optimized[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mget_password_data[0m[0m                    = false
      [32m+[0m [0m[1m[0mhost_id[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mhost_resource_group_arn[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0miam_instance_profile[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                                   = (known after apply)
      [32m+[0m [0m[1m[0minstance_initiated_shutdown_behavior[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0minstance_state[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0minstance_type[0m[0m                        = "t2.micro"
      [32m+[0m [0m[1m[0mipv6_address_count[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mipv6_addresses[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mkey_name[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mmonitoring[0m[0m                           = (known after apply)
      [32m+[0m [0m[1m[0moutpost_arn[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mpassword_data[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mplacement_group[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mplacement_partition_number[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mprimary_network_interface_id[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mprivate_dns[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mprivate_ip[0m[0m                           = (known after apply)
      [32m+[0m [0m[1m[0mpublic_dns[0m[0m                           = (known after apply)
      [32m+[0m [0m[1m[0mpublic_ip[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0msecondary_private_ips[0m[0m                = (known after apply)
      [32m+[0m [0m[1m[0msecurity_groups[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0msource_dest_check[0m[0m                    = true
      [32m+[0m [0m[1m[0msubnet_id[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                                 = {
          [32m+[0m [0m"Name" = "WebServerViginia"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m                             = {
          [32m+[0m [0m"Name" = "WebServerViginia"
        }
      [32m+[0m [0m[1m[0mtenancy[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0muser_data[0m[0m                            = "3e7ebbe19f0a795ce06956525aa5aad4c64105dc"
      [32m+[0m [0m[1m[0muser_data_base64[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0muser_data_replace_on_change[0m[0m          = true
      [32m+[0m [0m[1m[0mvpc_security_group_ids[0m[0m               = (known after apply)

      [32m+[0m [0mcapacity_reservation_specification {
          [32m+[0m [0m[1m[0mcapacity_reservation_preference[0m[0m = (known after apply)

          [32m+[0m [0mcapacity_reservation_target {
              [32m+[0m [0m[1m[0mcapacity_reservation_id[0m[0m                 = (known after apply)
              [32m+[0m [0m[1m[0mcapacity_reservation_resource_group_arn[0m[0m = (known after apply)
            }
        }

      [32m+[0m [0mebs_block_device {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mdevice_name[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mencrypted[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0miops[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mkms_key_id[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0msnapshot_id[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mtags[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mthroughput[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mvolume_id[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0mvolume_size[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mvolume_type[0m[0m           = (known after apply)
        }

      [32m+[0m [0menclave_options {
          [32m+[0m [0m[1m[0menabled[0m[0m = (known after apply)
        }

      [32m+[0m [0mephemeral_block_device {
          [32m+[0m [0m[1m[0mdevice_name[0m[0m  = (known after apply)
          [32m+[0m [0m[1m[0mno_device[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mvirtual_name[0m[0m = (known after apply)
        }

      [32m+[0m [0mmaintenance_options {
          [32m+[0m [0m[1m[0mauto_recovery[0m[0m = (known after apply)
        }

      [32m+[0m [0mmetadata_options {
          [32m+[0m [0m[1m[0mhttp_endpoint[0m[0m               = (known after apply)
          [32m+[0m [0m[1m[0mhttp_put_response_hop_limit[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mhttp_tokens[0m[0m                 = (known after apply)
          [32m+[0m [0m[1m[0minstance_metadata_tags[0m[0m      = (known after apply)
        }

      [32m+[0m [0mnetwork_interface {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mdevice_index[0m[0m          = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_card_index[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0mnetwork_interface_id[0m[0m  = (known after apply)
        }

      [32m+[0m [0mprivate_dns_name_options {
          [32m+[0m [0m[1m[0menable_resource_name_dns_a_record[0m[0m    = (known after apply)
          [32m+[0m [0m[1m[0menable_resource_name_dns_aaaa_record[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mhostname_type[0m[0m                        = (known after apply)
        }

      [32m+[0m [0mroot_block_device {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mdevice_name[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mencrypted[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0miops[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mkms_key_id[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mtags[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mthroughput[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mvolume_id[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0mvolume_size[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mvolume_type[0m[0m           = (known after apply)
        }
    }

[1m  # aws_security_group.Virginia-sg[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group" "Virginia-sg" {
      [32m+[0m [0m[1m[0marn[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mdescription[0m[0m            = "Managed by Terraform"
      [32m+[0m [0m[1m[0megress[0m[0m                 = [
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"0.0.0.0/0",
                ]
              [32m+[0m [0mdescription      = ""
              [32m+[0m [0mfrom_port        = 0
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "-1"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 0
            },
        ]
      [32m+[0m [0m[1m[0mid[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mingress[0m[0m                = [
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"0.0.0.0/0",
                ]
              [32m+[0m [0mdescription      = ""
              [32m+[0m [0mfrom_port        = 8080
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "tcp"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 8080
            },
        ]
      [32m+[0m [0m[1m[0mname[0m[0m                   = "Virginia_sg"
      [32m+[0m [0m[1m[0mname_prefix[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mrevoke_rules_on_delete[0m[0m = false
      [32m+[0m [0m[1m[0mtags_all[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                 = (known after apply)
    }

[0m[1mPlan:[0m 2 to add, 0 to change, 0 to destroy.
[0m[0m
[1mChanges to Outputs:[0m[0m
  [32m+[0m [0m[1m[0mpublic_ip[0m[0m = (known after apply)
[90m
─────────────────────────────────────────────────────────────────────────────[0m

Note: You didn't use the -out option to save this plan, so Terraform can't
guarantee to take exactly these actions if you run "terraform apply" now.

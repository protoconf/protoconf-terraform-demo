compile: generate
	~/bin/protoconf compile .
	cat materialized_config/infra/infra.tf.materialized_JSON | jq '.value | del(.["@type"])' > infra.tf.json
	terraform validate

generate:
	~/bin/pc4tf generate

plan: compile
	terraform plan

apply: compile
	terraform apply

#!/usr/bin/env bats
 
@test "Validate status code for redis exporter" {
  run curl -s -o /dev/null -w "%{http_code}" localhost:9108/metrics
  [[ $output = "200" ]]
}
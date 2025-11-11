# Simple Test Module

A minimal Terraform module for testing Crossplane provider-terraform Workspace functionality.

## Purpose

This module provides a simple test case that:
- Has no external dependencies
- Requires no cloud credentials
- Uses only the time and random providers
- Can be used for integration testing

## Resources Created

- `random_id.test` - Generates a random 8-byte hex value
- `time_sleep.wait` - Waits for 45 seconds during resource creation

## Outputs

- `random_value` - The random hex value generated
- `timestamp` - The timestamp when the sleep completed

## Usage with Crossplane

```yaml
apiVersion: tf.upbound.io/v1beta1
kind: Workspace
metadata:
  name: test-workspace
spec:
  forProvider:
    source: Remote
    module: git::https://github.com/dtclxy64/terraform-test-modules.git//simple-test
```

## Local Testing

```bash
cd simple-test
terraform init
terraform plan
terraform apply
```

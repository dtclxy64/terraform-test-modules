# Simple Test Module

This is a minimal Terraform module used for E2E testing of the Crossplane Remediation Controller.

## Purpose

This module creates a simple `null_resource` that:
- Has no external dependencies
- Requires no cloud credentials
- Can be used to test Crossplane provider-terraform Workspace functionality
- Mimics production smoke test environments that use local Git sources

## Resources Created

- `null_resource.test` - A simple resource with a timestamp trigger

## Outputs

- `resource_id` - The ID of the null resource
- `timestamp` - The timestamp when the resource was created

## Usage with Crossplane

```yaml
apiVersion: tf.upbound.io/v1beta1
kind: Workspace
metadata:
  name: test-workspace
spec:
  forProvider:
    source: Remote
    module: https://github.com/your-org/crossplane-remediation-controller//test-modules/simple-test
```

## Local Testing

```bash
cd test-modules/simple-test
terraform init
terraform plan
terraform apply
```

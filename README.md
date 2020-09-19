# Github action for Kitchen-Terraform

Kitchen-Terraform provides a set of Kitchen plugins which enable the use of Kitchen to converge a Terraform configuration and verify the resulting infrastructure systems with InSpec controls.

## Inputs

### `kitchen-command`

**Required** The name of the command to run. Default `"help"`.

More Examples:

```none
  converge [INSTANCE|REGEXP|all]          # Change instance state to converge. Use a provisioner to configure...
  create [INSTANCE|REGEXP|all]            # Change instance state to create. Start one or more instances
  destroy [INSTANCE|REGEXP|all]           # Change instance state to destroy. Delete all information for one ...
  help [COMMAND]                          # Describe available commands or one specific command
  test [INSTANCE|REGEXP|all]              # Test (destroy, create, converge, setup, verify and destroy) one o...
  verify [INSTANCE|REGEXP|all]            # Change instance state to verify. Run automated tests on one or mo...
  version                                 # Print Kitchen's version information
```

## Example usage

uses: idexx-labs/github-kitchen-terraform-action@v1
with:
  kitchen-command: 'test'

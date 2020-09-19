# Github action for Kitchen-Terraform

Kitchen-Terraform provides a set of Kitchen plugins which enable the use of Kitchen to converge a Terraform configuration and verify the resulting infrastructure systems with InSpec controls.

## Inputs

### `kitchen-command`

**Required** The name of the command to run. Default `"help"`.

## Example usage

uses: idexx-labs/github-kitchen-terraform-action@v1
with:
  kitchen-command: 'test'

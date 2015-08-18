# chef-jepsen-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-jepsen']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### chef-jepsen::default

Include `chef-jepsen` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[chef-jepsen::default]"
  ]
}
```

## License and Authors

Author:: Justin Alan Ryan (<bitmonk@icloud.com>)

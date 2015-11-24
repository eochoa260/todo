NodeJs Cookbook
========================
TODO: This cookbook sets up a NodeJs environment for angularjs development.


Requirements
------------
TODO: This cookbook should be run on Amazon Linux AMI.

Attributes
----------
TODO: List your cookbook attributes here.

e.g.
#### NodeJs::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['NodeJs']['home']['dir']</tt></td>
    <td>String</td>
    <td>NodeJs install directory</td>
    <td><tt>/opt/NodeJs</tt></td>
  </tr>
  <tr>
    <td><tt>['NodeJs']['angularjs']['dir']</tt></td>
    <td>String</td>
    <td>AngularJs directory</td>
    <td><tt>/opt/NodeJs/angularjs</tt></td>
  </tr>
  <tr>
    <td><tt>['NodeJs']['module']['dir']</tt></td>
    <td>String</td>
    <td>node_modules directory</td>
    <td><tt>/opt/NodeJs/node_modules</tt></td>
  </tr>
  <tr>
    <td><tt>['NodeJs']['HTTP']['Port']</tt></td>
    <td>Integer</td>
    <td>HTTP Listen Port</td>
    <td><tt>5000</tt></td>
  </tr>
  <tr>
    <td><tt>['NodeJs']['package']['name']</tt></td>
    <td>String</td>
    <td>NodeJs Binary</td>
    <td><tt>node-v4.2.1-linux-x64.tar.gz</tt></td>
  </tr>
  <tr>
    <td><tt>['NodeJs']['package']['url']</tt></td>
    <td>String</td>
    <td>NodeJs Binary URL</td>
    <td><tt>https://nodejs.org/dist/v4.2.1/node-v4.2.1-linux-x64.tar.gz</tt></td>
  </tr>
  <tr>
    <td><tt>['NodeJs']['modules']</tt></td>
    <td>Array</td>
    <td>NodeJs modules required for app</td>
    <td><tt>[connect, serve-static, karma, bootstrap]</tt></td>
  </tr>
  <tr>
    <td><tt>['NodeJs']['bootstrap']['modules']</tt></td>
    <td>Array</td>
    <td>Bootstrap modules required for app</td>
    <td><tt>[bootstrap.css, bootstrap-theme.css]</tt></td>
  </tr>
</table>

Usage
-----
#### NodeJs::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `NodeJs` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[NodeJs]"
  ]
}
```

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors

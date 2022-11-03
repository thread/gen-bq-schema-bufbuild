# gen-bq-schema-bufbuild
This repository contains files for creating a [bufbuild](https://buf.build) plugin from [protoc-gen-bq-schema](https://github.com/GoogleCloudPlatform/protoc-gen-bq-schema)

The default address for the plugin is: buf.build/judahrand/plugins/gen-bq-schema for the protobuf plugin.

To use the plugin with buf simply add the plugin to your `buf.gen.yaml` file. Here is an example of a config that generates protobuf code to the directory `./gen`.

```yaml
version: v1
plugins:
  - remote: buf.build/judahrand/plugins/gen-bq-schema:v1.0.0-1
    out: gen
```

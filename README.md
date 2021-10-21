# iotedge-i2c

Very basic iotedge module (Dockerfile) running Node-RED and having the `node-red-contrib-i2c` nodes installed.

## Container Create Options

```json
{
    "User": "node-red:dialout",
    "HostConfig": {
        "GroupAdd": [ 998 ],
        "PortBindings": {
            "1880/tcp": [ { "HostPort": "80" } ]
        },
        "Devices": [
            {
                "PathOnHost": "/dev/i2c-1",
                "PathInContainer": "/dev/i2c-1",
                "CgroupPermissions": "rwm"
            }
        ]
    }
}
```
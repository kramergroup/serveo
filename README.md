# Serveo forwarding container

This container provides a simple ssh port-forwarding pipe for exposing web services behind a firewall to
the internet using [Serveo](https://serveo.net).

## Configuration

The container provides three environment variables for configuration

| Name            | Default     | Description                                         |
| --------------- | ----------- | --------------------------------------------------- |
| `PUBLIC_DOMAIN` | -           | Use this to "suggest" a public subdomain (optional) |
| `TARGET_HOST`   | `localhost` | The DNS name or IP address of the target service    |
| `TARGET_PORT`   | `80`        | The port of the target web service                  |

These can also be overwritten on the command-line:

```bash
docker run kramergroup/serveo <target-servername> <target-port> <public-subdomain>
```
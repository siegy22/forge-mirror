# Forge mirror

Small tool to mirror puppet modules from [forge](https://forge.puppet.com/) to the disk.

## Usage

```bash
$ docker run -v ./puppet-modules:/modules siegy22/forge-mirror
Will download 7439 modules
Processing module index (75/75): |=============================|
Downloading modules (123/7439): |==                            |
```


The resulting directory structure will look like this:

```
puppet-modules
├── 030
│   ├── git
│   │   └── 030-git-0.2.6.tar.gz
├── 0cloud
│   └── anonymizer
│       └── 0cloud-anonymizer-0.1.1.tar.gz
├── 104corp
│   ├── corp104_codedeploy_agent
│   │   └── 104corp-corp104_codedeploy_agent-2.0.0.tar.gz
```

## Local forge mirror

Works great with [hickey/puppet_forge](https://hub.docker.com/r/hickey/puppet_forge)

```
$ docker run -d -p 8080:8080 -v ./puppet-modules:/puppet/modules puppet_forge
```

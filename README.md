> **Never mind.** I'm going to use the [dotenv][] [oh-my-zsh][] plugin. But I'm
> leaving this here because there's stuff I like about it.

[dotenv]: https://github.com/robbyrussell/oh-my-zsh/blob/b7b40b0b68c791d57d91c7f4e17ed681d01d5c75/plugins/dotenv/dotenv.plugin.zsh
[oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh

# paws

Automatically use the right AWS profile while using the AWS CLI based on your
current directory.

## Installation

```sh
git clone https://github.com/justinforce/paws
cd paws

# Install to default location ($HOME/bin)
make install

# OR install to a /custom/path
make install BIN_PATH=/custom/path
```

To uninstall:

```sh
# Install from default location ($HOME/bin)
make uninstall

# OR uninstall from a /custom/path
make uninstall BIN_PATH=/custom/path
```

## Usage

Configure your PAWS_MAP (copy pawsmap.example to `~/.pawsmap` and customize it),
then prefix to your AWS commands:

```sh
# Prefix to your AWS commands
paws aws s3 ls
paws eb status

# Or use aliases
echo 'alias aws="paws aws"' >>> ~/.bashrc
echo 'alias eb="paws eb"' >>> ~/.bashrc
source ~/.bashrc

# And call your commands normally
aws s3 ls
eb status
```

## Upgrading

```sh
cd paws
git pull origin master
```

## Name?

AWS with profile -> profile AWS -> paws

## License and Copyright

Copyright Adero. Licensed under the MIT License.

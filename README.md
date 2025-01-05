Install dependencies - ripgrep and bat for the telescope plugin, node because it is by Mason to install some language servers.

```bash
sudo apt install ripgrep bat
sudo snap install node --classic
```

If you are facing issues with the node package provided by snap, download node binary and add its location to your PATH. You may have to try different versions of node because Mason is picky about them.

In case you cannot install pyright with Mason, you can try installing it from snap
```bash
sudo snap install pyright --classic
```

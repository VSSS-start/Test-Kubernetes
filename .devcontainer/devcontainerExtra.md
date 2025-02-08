The current `devcontainer.json` file includes the installation commands for both `kind` and `kubectl`. To ensure these commands execute correctly, please follow these steps:

1. **Verify Installation**:
   - Open the terminal in your Codespace and manually run the installation commands:
     ```bash
     curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.18.0/kind-linux-amd64
     chmod +x ./kind
     sudo mv ./kind /usr/local/bin/kind
     curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
     chmod +x ./kubectl
     sudo mv ./kubectl /usr/local/bin/kubectl
     echo 'export PATH=$PATH:/usr/local/bin' >> ~/.bashrc
     source ~/.bashrc
     ```

2. **Check PATH**:
   - Ensure `/usr/local/bin` is in your PATH:
     ```bash
     echo $PATH
     ```

3. **Verify Commands**:
   - Check if `kind` and `kubectl` are available:
     ```bash
     kind --version
     kubectl version --client
     ```

This should resolve the `command not found` errors for both `kind` and `kubectl`.

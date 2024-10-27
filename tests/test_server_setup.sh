
#!/bin/bash
# Test server setup by checking installed packages

REQUIRED_PACKAGES=("curl" "wget" "vim" "htop")
for package in "${REQUIRED_PACKAGES[@]}"; do
    if dpkg -l | grep -q $package; then
        echo "$package is installed."
    else
        echo "$package is NOT installed."
    fi
done

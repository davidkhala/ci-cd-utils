# Create a folder under the drive root
mkdir actions-runner; cd actions-runner
# Download the latest runner package
Invoke-WebRequest -Uri https://github.com/actions/runner/releases/download/v2.319.1/actions-runner-win-x64-2.319.1.zip -OutFile actions-runner-win-x64-2.319.1.zip
# Use a copy on OCI can have better network performance https://cn9yc2hk0gzg.objectstorage.ap-singapore-1.oci.customer-oci.com/n/cn9yc2hk0gzg/b/installation-binary/o/actions-runner-win-x64-2.319.1.zip

# Validate the hash is a must since the zip size is 116 MB
if((Get-FileHash -Path actions-runner-win-x64-2.319.1.zip -Algorithm SHA256).Hash.ToUpper() -ne '1c78c51d20b817fb639e0b0ab564cf0469d083ad543ca3d0d7a2cdad5723f3a7'.ToUpper()){ throw 'Computed checksum did not match' }
# Extract the installer
Add-Type -AssemblyName System.IO.Compression.FileSystem ; [System.IO.Compression.ZipFile]::ExtractToDirectory("$PWD/actions-runner-win-x64-2.319.1.zip", "$PWD")


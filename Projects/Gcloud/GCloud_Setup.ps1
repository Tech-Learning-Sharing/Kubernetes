# Variables (customize these)
param (
  [string]$projectId
)
# Replace with your Google Cloud project ID
$clusterName = "cluster-1"             # Name of your Kubernetes cluster
$region = "us-central1-c"                     # Region for the cluster
$machineType = "e2-micro"             # Machine type for nodes
$numNodes = 2                              # Number of nodes
$keyFile = ".\key.json"      # Path to your service account key file

# Step 1: Authenticate with the service account
Write-Host "Authenticating with Google Cloud..."
gcloud auth activate-service-account --key-file="$keyFile"

# Step 2: Set the project
Write-Host "Setting project to $projectId..."
gcloud config set project $projectId

# Step 3: Create the GKE cluster
Write-Host "Creating GKE cluster: $clusterName..."
gcloud services enable container.googleapis.com
gcloud services list --enabled
gcloud container clusters create $clusterName `
  --region=$region `
  --machine-type=$machineType `
  --num-nodes=$numNodes `
  --enable-ip-alias `
  --no-enable-basic-auth

# Step 4: Get cluster credentials for kubectl
Write-Host "Fetching cluster credentials..."
gcloud container clusters get-credentials $clusterName --region=$region

Write-Host "Cluster $clusterName is ready! You can now use kubectl to interact with it."
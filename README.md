# devops_test
test for interview
1. Create a Dockerfile for a given application
![Screenshot 2024-12-03 at 10 03 18](https://github.com/user-attachments/assets/618d511d-89c4-43a2-baa5-bc9897fdc417)

2. Build the image using the Dockerfile and push to Docker Hub (commamd: docker build -t kajornlarp/appgolang:latest . , docker push kajornlarp/appgolang:latest)
![Screenshot 2024-12-03 at 13 35 59](https://github.com/user-attachments/assets/25cdde68-e423-4442-b3e3-c21cd8932719)
![Screenshot 2024-12-03 at 13 35 16](https://github.com/user-attachments/assets/042138bd-ffdf-4f7d-895c-42af9154c6a0)
![Screenshot 2024-12-03 at 11 13 32](https://github.com/user-attachments/assets/ef73e92d-085c-4441-9bb9-60f13d895231)

4. Create a Kustomize manifest to deploy the image from the previous step. The Kustomize should have flexibility to allow Developer to adjust values without having to rebuild the Kustomize frequently
![Screenshot 2024-12-03 at 11 17 30](https://github.com/user-attachments/assets/4f2f864b-16f0-46ad-903d-12e275b3d105)


5. Setup GKE cluster with the related resources to run GKE like VPC, Subnets
Provide region on gcp
![Screenshot 2024-12-02 at 09 55 20](https://github.com/user-attachments/assets/c74645c5-f70b-479d-af67-3ec650711b12)

Provide service account, Enable the Kubernetes Engine API, Provide gke-cluster
![Screenshot 2024-12-02 at 11 47 15](https://github.com/user-attachments/assets/213b20cc-50f1-4063-b1bf-c41876be5a1d)

Subnet Network
![Screenshot 2024-12-02 at 12 11 10](https://github.com/user-attachments/assets/10c3e5c2-b6a5-41c0-b5bd-7ac6eb862b68)

gcloud container clusters list
![Screenshot 2024-12-02 at 14 27 53](https://github.com/user-attachments/assets/dce00457-b1f2-421a-bd19-adcd8e70f480)

configure identity gcloud cluster to kubeclt 
![Screenshot 2024-12-02 at 18 11 30](https://github.com/user-attachments/assets/46b9a120-7265-4ee4-b74b-1dad33a2aef8)

5. Condition: Avoid injecting the generated GCP access keys to the application directly
- gcloud container clusters update <cluster-name> \
  --workload-pool=<project-id>.svc.id.goog
- gcloud iam service-accounts create <service-account-name>

7. Create CICD workflow using GitOps pipeline to build and deploy application
![Screenshot 2024-12-04 at 12 26 25](https://github.com/user-attachments/assets/347b2358-3b1d-46dd-a6b7-80556419ff6c)


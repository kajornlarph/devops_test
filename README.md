# devops_test
test for interview
1. Create a Dockerfile for a given application

![Screenshot 2024-12-03 at 10 03 18](https://github.com/user-attachments/assets/618d511d-89c4-43a2-baa5-bc9897fdc417)

Build dockerfile 
![Screenshot 2024-12-02 at 17 26 37](https://github.com/user-attachments/assets/104f37ea-821f-4743-a920-aa0422677ea2)
![Screenshot 2024-12-02 at 17 28 24](https://github.com/user-attachments/assets/8841fe4a-5624-4d7d-a512-0c11ac9085f5)

Build docker image
![Screenshot 2024-12-02 at 17 31 09](https://github.com/user-attachments/assets/d058ac4b-f86c-4867-8845-f7059fc40f6a)

2. Build the image using the Dockerfile and push to Docker Hub (commamd: docker build -t kajornlarp/appgolang:latest . , docker push kajornlarp/appgolang:latest)
![Screenshot 2024-12-03 at 11 13 32](https://github.com/user-attachments/assets/ef73e92d-085c-4441-9bb9-60f13d895231)

3. Create a Kustomize manifest to deploy the image from the previous step. The Kustomize should have flexibility to allow Developer to adjust values without having to rebuild the Kustomize frequently
![Screenshot 2024-12-03 at 11 17 30](https://github.com/user-attachments/assets/4f2f864b-16f0-46ad-903d-12e275b3d105)

4. Setup GKE cluster with the related resources to run GKE like VPC, Subnets

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

# Terraform for Packet 

For Packet Baremetal Host, Terraform is being used for managing the lifecycle of the servers. Terraform is a powerful tool for building, changing, and versioning infrastructure safely and efficiently. Terraform has Packet Provider which is responsible for interacting with Packet API and exposing available resources on the Packet Baremetal hosting service. 


## Scenarios

1. [Server Deployment] (./ServerDeployment) 
2. [Server deployment using Module **] (./ServerDeploymentUsingModule)
3. [Cluster Deployment (Master/Slave for OpenStack/Kubernetes)] (./ClusterDeployment)
4. [Cluster Deployment with Reserved Hardware] (./ClusterDeploymentWthResvedHw)
5. [Server Deployment with Custom Images] () ***

** Terraform modules do not currently support count, and so reusing a module a dynamic number of ways is impossible.
More info regarding the limitation is discussed in the link below:
<https://serialseb.com/blog/2016/05/11/terraform-working-around-no-count-on-module/>

*** Work in Progress

## Pre-requisites

###Packet Project ID & API Key
This deployment requires a Packet account for the provisioned bare metal. You'll need your "Packet Project ID" and your "Packet API Key" to proceed. You can use an existing project or create a new project for the deployment.

We recommend setting the Packet API Token and Project ID as environment variables since this prevents tokens from being included in source code files. These values can also be stored within a variables file later if using environment variables isn't desired.

```
$ export TF_VAR_packet_project_id=YOUR_PROJECT_ID_HERE 
$ export TF_VAR_packet_auth_token=YOUR_PACKET_TOKEN_HERE
```
###Where is my Packet Project ID?
You can find your Project ID under the 'Manage' section in the Packet Portal. They are listed underneath each project in the listing. You can also find the project ID on the project 'Settings' tab, which also features a very handy "copy to clipboard" piece of functionality, for the clicky among us.

###How can I create a Packet API Key?
You will find your API Key on the left side of the portal. If you have existing keys you will find them listed on that page. If you haven't created one yet, you can click here:

https://app.packet.net/portal#/api-keys/new

## How-to 

* Download or Pull the Git repo on to the host machine which has Terraform installed
* Choose the scenario as per your deployment requirement
* Change to to scenarion directory. Verify the terraform.tfvars file for any customization. "terraform.tfvars" is very detailed file with details default values.
***Note: Do not change any other file. Just make changes to terraform.tfvars file***
* Once changes have been made to terraform.tfvars file, execute following commands to deploy servers on Packet Host.

   ```
terraform init
terraform plan
terraform apply
   ```
   
 Voila, Your servers will be deployed on Packet Host. Building servers on Packet Host usually take 5-7 mins. Please be patient. Get a hot cup of tea while your server is being built.


### Plan and State 

Once the server is deployed, the state of the deployment is stored in the terraform.tfstate file which is created at the server deployment. terraform.tfstate is dynamic file which captures the current state of the your deployment. Refrain from making any direct changes to the this file. Terraform refers to this file to get state of the deployment.

### Managing Servers

In the case where there is need to scale the number of servers as part of the deployment, follow the following steps:

1. Update the server count in terraform.tfvars file
2. Run terraform plan command to see if deployment is correct. Plan command output will provide what changes will be made to existing deployment. This provides great opportunity to catch any mistake before deployment.
   ```
   terraform plan
   ```
3. Apply changes to scale existing deployment.
   ```
   terraform apply
   ```

### Importance of Tags

Tags are very important resource which can help in managing servers on Packet host. Tags should be created and assigned to servers such that it tells about:

1. Person who created the server
2. Purpose of the Server (for example what all applications are running on the server)
3. Ansible Automation tags. Packet Ansible dynamic inventory file leverages server tags to group servers in the dynamic inventory files.*Ansible Dynamic inventory script add "tag" to the assigned tag. Remember to add "tag" as prefix with given server tags while referencing as hosts in playbook.*   






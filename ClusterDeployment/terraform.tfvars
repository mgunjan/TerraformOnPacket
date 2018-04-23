# Use this file to update default parameters values. 
# Default value for the each parameter has been stated with all the other options so that it's really easy to deploy Packet servers with custom configurations without making any changes to main code blocks. 
# Refer README for the repo where other advantages of using tfvars file for updating the values for parameters defined. 


###############################################################
# [master,worker]_hostname assigns the hostname to the servers. 
# Default behavior: In the current configuration, the value for [master,worker]_hostname is requested at runtime. 
# For more automated deployment, assign hostname value here.

master_hostname="mg-master-test"
worker_hostname="mg-worker-test"

##############################################################
# [master,worker]_server_type assigns the plan based on the deployment requirement. 
# Default Behavior: baremetal_0 (tiny instance). It is recommended to use default value for all x86 testing
# Available list of plans: t1.small,s1.large,m1.xlarge,m2.xlarge.x86,c1.xlarge,c1.small,c1.large.arm
# Find below, references to  most used plans for Sprint

# master_server_type="m1.xlarge" # large x86 server with 10G Mellanox card
# master_server_type="c1.large.arm" # large arm server with 10G Mellanox card
# worker_server_type="m1.xlarge" # large x86 server with 10G Mellanox cards
# worker_server_type="c1.large.arm" # large arm server with 10G Mellanox cards

#############################################################
# packet_os_type assigns operating system to the servers
# Default Behavior: ubuntu_16_04
# Packet provides extensive list of Operating systems. Example below list most used operating systems for sprint testing.

# packet_os_type="ubuntu_17_04"
# packet_os_type="centos_6"
# packet_os_type="centos_7"
# packet_os_type="rhel_7"
# packet_os_type="coreos_stable"


#############################################################
# packet_facility assigns in which packet datacenter server to be spin up
# Default Behavior: ewr1 (NJ packet facility)
# ewr1 and sjc1 are the main facilities in USA which is being used for testing. 
# Prefer sjc1 (west coast) dc for any layer2 related workload

# packet_facility="sjc1" 

############################################################
# [master,worker]_subnet_size assigned public ipv4 subnet size to be assigned on server.
# Default Behavior: 31
# Subnet size ranges from 28 to 31.

# master_subnet_size="28"
# master_subnet_size="29"
# master_subnet_size="30"
# worker_subnet_size="28"
# worker_subnet_size="29"
# worker_subnet_size="30"

############################################################
# [master,worker]_tags assigns tags to the server. [master,worker]__tags is of type "list".
# [master,worker]_tags values should be assigned as list.
# [master,worker]_tags are important as Ansible Dynamic inventory uses tags. Unique tags to be assigned for server deployment.

# master_tags=["kubemaster","managedbytf","deployedbyMG","kubecluster"]  
# worker_tags=["kubeworker","managedbytf","deployedbyMG","kubecluster"]  

############################################################
# [master,worker]_count invokes count construct provided by terraform for implementing looping.
# Defines how many copies of the resource to create.
# Default Behavior: 1
# server_count can also be used to modulate the existing cluster size.

# master_count can only 1 or 3(for HA deployment) in cluster deployment scenario
master_count="1"
# worker_count can be anything more than 0 in cluster deployment scenario
worker_count="1"

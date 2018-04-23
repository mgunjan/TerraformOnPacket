# Use this file to update default parameters values. 
# Default value for the each parameter has been stated with all the other options so that it's really easy to deploy Packet servers with custom configurations without making any changes to main code blocks. 
# Refer README for the repo where other advantages of using tfvars file for updating the values for parameters defined. 


###############################################################
# packet_hostname assigns the hostname to the servers. 
# Default behavior: In the current configuration, the value for packet_hostname is requested at runtime. 
# For more automated deployment, assign packet_hostname value here.
# Example 
# packet_hostname="<initials-servername>" # (just an example, uncomment line below)

packet_hostname="mg-tia-demo"

##############################################################
# packet_server_type assigns the plan based on the deployment requirement. 
# Default Behavior: t1.small (tiny instance). It is recommended to use default value for all x86 testing
# Available list of plans: t1.small,s1.large,m1.xlarge,m2.xlarge.x86,c1.xlarge,c1.small,c1.large.arm
# Find below, references to  most used plans for Sprint

# packet_server_type="m1.xlarge" # large x86 server with 10G Mellanox card
# packet_server_type="c1.large.arm" # large arm server with 10G Mellanox cards

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
# packet_subnet_size assigned public ipv4 subnet size to be assigned on server.
# Default Behavior: 31
# Subnet size ranges from 28 to 31.

#packet_subnet_size="28"
# packet_subnet_size="29"
# packet_subnet_size="30"

############################################################
# packet_tags assigns tags to the server. packet_tags is of type "list".
# packet_tags values should be assigned as list.
# packet_tags are important as Ansible Dynamic inventory uses tags. Unique tags to be assigned for server deployment.

# packet_tags=["kubemaster","managedbytf","deployedbyMG","kubecluster"]  
packet_tags=["tia-demo","managedbytf","deployedbyMG"]  

############################################################
# server_count invokes count construct provided by terraform for implementing looping.
# Defines how many copies of the resource to create.
# Default Behavior: 1
# server_count can also be used to modulate the existing cluster size.

server_count="1"

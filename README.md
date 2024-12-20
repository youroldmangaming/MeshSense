20Dec24

![image](https://github.com/user-attachments/assets/8bd906b3-e949-4638-bffa-80ca4c7530de)

Just use the simplefied documents they all work.


docker run --rm  -v ./data:/root/.local/share/meshsense/ -v ./dbus/:/var/run/dbus/system_bus_socket:ro -p 5920:5920  y0mg/meshsense:amd64



docker run --rm -v ./data:/root/.local/share/meshsense/ -v ./dbus/:/var/run/dbus/system_bus_socket:ro -p 5920:5920 y0mg/meshsense:amd64


Runs.

Will get the arm version working soon.

BT I will fix as I have it working in a older copy.


19Dec
Updated and debugged fixed a couple of issues. Seems to be running now.

##22Nov24
The container is now running with the following improvements:

Added proper DBus system configuration for Bluetooth support
Fixed environment variable setup
Properly configured startup script to run both UI and API services
Set up port mappings for both services (5920 for API, 5921 for UI)
You can access the services at:

UI: http://localhost:5921

API: http://localhost:5920

Note that there are still some npm package warnings and vulnerabilities that should be addressed in the future:

Critical vulnerabilities that should be fixed:

Run npm audit fix in both UI and API directories

Update deprecated packages to their latest versions

Deprecated packages that should be updated:

rimraf (update to v4 or later)

uuid (update to v7 or later)

request (consider using axios or node-fetch)

npmlog (consider using a different logging library)

and others as listed in the warnings


## Install

git clone https://github.com/youroldmangaming/MeshSense.git

cd MeshSense

chmod 777 run.sh

http://<HOST IP>:5921

![image](https://github.com/user-attachments/assets/a77a208c-0ada-4795-92b9-9f8cd65c5e69)




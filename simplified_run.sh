docker run --rm  -v /data:/root/.local/share/meshsense/ -v dbus/:/var/run/dbus/system_bus_socket:ro -p 5920:5920 meshsense

#docker run --rm  -v /directory/to/meshsense/config/data:/root/.local/share/meshsense/ -v /var/run/dbus/system_bus_socket:/var/run/dbus/system_bus_socket:ro -p 5920:5920 meshsense

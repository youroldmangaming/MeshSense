# Importing a Docker Run into Unraid

To import a Docker container into Unraid, follow these steps:

## Steps to Import a Docker Run into Unraid

1. **Run Your Docker Container**: 
   First, if you haven't already, run your Docker container using the `docker run` command. For example:
   ```bash
   docker run -d --name my_container y0mg/meshsense
Commit the Running Container: Save the current state of the container as a new image:
bash
CopyInsert in Terminal
docker commit my_container my_image_name
Replace my_image_name with the desired name for your new image.
Save the Image as a Tar File: Export the image to a tar file that can be imported into Unraid:
bash
CopyInsert in Terminal
docker save -o my_image.tar my_image_name
Transfer the Tar File to Unraid: Move the my_image.tar file to your Unraid server. You can use SCP, FTP, or any method you prefer to transfer files.
Import the Image into Unraid:
Open the Unraid web interface.
Go to the Docker tab.
Click on the "Add Container" button.
In the "Template" dropdown, select "Add a custom template" or "Create a new template".
In the "Image" field, enter the name of your image (e.g., my_image_name).
If you uploaded the tar file, you may need to use the terminal in Unraid to load the image:
bash
CopyInsert in Terminal
docker load -i /path/to/my_image.tar
Create and Run the Container: After importing the image, you can create a new container from it in Unraid:
Go back to the Docker tab.
Click on "Add Container".
Select your imported image from the list.
Configure any additional settings (ports, environment variables, etc.) as needed.
Click "Apply" to create and start the container.
Summary
Run your Docker container and commit it to create a new image.
Save the image as a tar file and transfer it to Unraid.
Import the image and create a new container from it in the Unraid web interface.

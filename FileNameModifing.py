import os

folder_path = '.'  # Replace with the path to your folder

def modify_file_names(folder_path):
    for root, dirs, files in os.walk(folder_path):
        for filename in files:
            if 'test' in filename:
                new_filename = filename.replace('test', 'prod')
                os.rename(os.path.join(root, filename), os.path.join(root, new_filename))

modify_file_names(folder_path)
import os 
# once unzipped, this script will move the csv files into a data folder 

current_directory = os.path.dirname(os.path.realpath(__file__))
walk = [x[0] for x in os.walk(current_directory)]
walk = list(filter(lambda x: x != "__MACOSX", walk))

datafolder = walk[1]
folders = walk[2:]

for f in folders:  
    os.chdir(f)
    os.system("move *.csv ..")
    os.chdir(datafolder)
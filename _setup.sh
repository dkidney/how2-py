# update conda
conda deactivate
conda deactivate
conda update -y --name base conda
conda search python
conda env list

env_name=how2-py
# conda env remove --name ${env_name}
# conda create -y --name ${env_name} python=3.9
conda activate ${env_name}
conda update -y python
python --version && which python
pip install -U pip
pip install -U -r _requirements.txt
pip list

env_name=airflow
# conda env remove --name ${env_name}
# conda create -y --name ${env_name} python=3.9
conda activate ${env_name}
conda update -y python
pip install -U pip
pip install -U apache-airflow
pip list


# latest_version=$(conda search python | tail -1 | grep -E-o '([0-9]+\.[0-9]+\.[0-9]+){1}') ; echo $latest_version
# light_red='\033[1;31m'
# light_green='\033[1;32m'
# none='\033[0m'

# # check if env already exists
# n=$(conda env list | grep ${env_name} | wc -l) ; echo $n
#
# # remove env if version less than py_version
# if [[ n -eq 1 ]]
# then
#   echo ${light_red}${env_name}' already exists'${none}
  # conda activate ${env_name}
#   current_version=$(python --version | grep -E-o '([0-9]+\.[0-9]+\.[0-9]+){1}')  ; echo $current_version
#   if [[ $current_version == $latest_version ]]
#   then
#     echo ${light_green}'current py version '${current_version}' is latest version'${none}
#   else
#     echo ${light_red}'current py version '${current_version}' is out of date'${none}
#     conda activate base
#     conda env remove --name ${env_name}
#     n=0
#   fi
# else
#   echo ${light_red}${env_name}' does not already exist'${none}
# fi

# # create env if it doesn't exist
# if [[ n -eq 0 ]]
# then
#   echo ${light_green}'creating '${env_name}' using python '${latest_version}${none}
#   conda activate base
#   conda create -y --name ${env_name} python=$py_version
# fi

# # activate env and check dependencies
# conda activate ${env_name}
# conda update -y python
# python --version && which python
# # echo ${light_green}'updating dependencies'${none}
# # cat _requirements.txt
# pip install -U pip
# pip install -U -r _requirements.txt
# pip list

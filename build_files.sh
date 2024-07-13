if ! command -v python &> /dev/null
then
    echo "Python could not be found"
    exit
fi

# Check if pip is installed
if ! command -v pip &> /dev/null
then
    echo "pip could not be found, installing pip"
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python get-pip.py
fi
pip install -r requirements.txt
python manage.py migrate 
python manage.py collectstatic
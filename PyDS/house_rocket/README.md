## setup.sh
mkdir -p ~/.streamlit/

echo "\
[general]\n\
email = email\"\n\
" > ~/.streamlit/credentials.toml

echo "\
[server]\n\
headless=true\n\
enableCORS=false\n\
port=$PORT\n\
" > ~/.streamlit/config.toml
## Procfile

web: sh setup.sh && streamlit run dashboard.py

## Requirements.txt

pip freeze > requirements.txt

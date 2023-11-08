#!/bin/bash

# Write the pre-commit hook
cat > .git/hooks/pre-commit <<EOL
#!/bin/sh
black .
python lint.py -p ../boilerplate_py_ipynb/
EOL

# Make the pre-commit hook executable
chmod +x .git/hooks/pre-commit
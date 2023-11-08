#!/bin/bash

# Write the pre-commit hook
cat > .git/hooks/pre-commit <<EOL
#!/bin/sh
black .
nbqa black .
nbqa isort . --float-to-top
nbqa mypy .
python lint.py -p ../boilerplate_py_ipynb/
EOL

# Make the pre-commit hook executable
chmod +x .git/hooks/pre-commit
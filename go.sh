#!/bin/bash

# Install files
echo "Installing files..."
rsync -avPh files/ ~/ | sed 's/^/  rsync: /'

# Run scripts
echo "Running scripts..."
for s in scripts/*; do
	echo "  bash -x $s"
	bash -x "$s"
done

echo "Done."

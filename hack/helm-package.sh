#!/bin/bash

# Check if Helm is installed
if ! command -v helm &> /dev/null; then
    echo "Helm is not installed. Please install Helm before running this script."
    exit 1
fi

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <chart_name>"
    exit 1
fi

# Set the path to the charts directory
charts_directory="../charts"

# Set the chart name from the command line argument
chart_name="$1"

# Check if the chart directory exists
if [ ! -d "$charts_directory/$chart_name" ]; then
    echo "Chart directory not found: $charts_directory/$chart_name"
    exit 1
fi

# Run the helm template command
helm package "$charts_directory/$chart_name" -d "$charts_directory/$chart_name"

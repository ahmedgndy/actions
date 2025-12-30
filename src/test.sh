#!/bin/bash

# Test script for app.js

echo "Running tests for app.js..."
echo ""

# Test 1: Basic greet function
echo "Test 1: greet('Alice')"
result=$(node -e "const greet = require('./app.js'); console.log(greet('Alice'));")
expected="Hello, Alice!"
if [ "$result" = "$expected" ]; then
    echo "✓ PASS: Got '$result'"
else
    echo "✗ FAIL: Expected '$expected', got '$result'"
fi
echo ""

# Test 2: greet with different name
echo "Test 2: greet('Bob')"
result=$(node -e "const greet = require('./app.js'); console.log(greet('Bob'));")
expected="Hello, Bob!"
if [ "$result" = "$expected" ]; then
    echo "✓ PASS: Got '$result'"
else
    echo "✗ FAIL: Expected '$expected', got '$result'"
fi
echo ""

# Test 3: greet with World
echo "Test 3: greet('World')"
result=$(node -e "const greet = require('./app.js'); console.log(greet('World'));")
expected="Hello, World!"
if [ "$result" = "$expected" ]; then
    echo "✓ PASS: Got '$result'"
else
    echo "✗ FAIL: Expected '$expected', got '$result'"
fi
echo ""

echo "Tests completed!"

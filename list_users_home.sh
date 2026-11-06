#!/bin/bash
# List home directories for users with UIDs >= 1000 (typical regular users)
echo "Regular user home directories:"
for user_home in /home/*; do
  if [ -d "$user_home" ]; then 
    echo "- $user_home (owner: $(stat -c '%U' "$user_home" 2>/dev/null || echo 'unknown'))"
  fi
done


#! /bin/zsh

age=1; while [ $age -lt 18 ]; do
  echo "$(( age++ ))"
done
echo "You are currently $age, you can now drive!"
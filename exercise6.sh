#! /bin/zsh

score=0; while [ "$score" != "DONE" ]
  do
    echo "\nEnter score:"
    read score
    case  1:${score} in
    ($((score>100 || score<0))*)
      echo "Not a valid score"
    ;;
    ($((score>90))*)
      echo "Score: A"
    ;;
    ($((score>80))*)
      echo "Score: B"
    ;;
    ($((score>70))*)
      echo "Score: C"
    ;;
    (($((score<=70))*))
      echo "Score: D"
    ;;
    esac
done
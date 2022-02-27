#!/bin/bash

#while loop which asks the users to input an operand until a valid operator is inputted
while :
do
        echo  "Please enter an operator (+,-,*,/ or ^): "
        read operator1
        if [[ "$operator1" == "+" ]] || [[ "$operator1" ==  "-" ]] || [[ "$operator1" ==  "*" ]] || [[ "$operator1" ==  "/" ]] || [[ "$operator1" ==  "^" ]];
        then
                break
        else
                echo  "$operator1 is not an accepted operator."
                continue
        fi
done

#asking user for an operand
echo "Enter an operand between 1 and 15: "
read int1

#creates the top of the tble
echo "          Maths  Table"

echo "----------------------------------"

#multiplication table
if [[ "$operator1" == "*"  ]];
then
#for loop which generates the second operand
for y in {1..15}
do
    #print the side of the table
    echo -n "$int1 * $y = "
    #Multiply the two operands
    echo -en "\t$(($int1*y))"
    echo
done
fi

#substraction table
if [[ "$operator1" == "-"  ]];
then
for y in {1..15}
do
    echo -n "$int1 - $y = "
    #subtract the second operand from the inputted operand
    echo -en "\t$(($int1-y))"
    echo
done
fi



#addition table
if [[ "$operator1" == "+"  ]];
then
for y in {1..15}
do
    echo -n "$int1 + $y = "
    #add two operands together
    echo -en "\t$(($int1+y))"
    echo
done
fi

#division table
if [[ "$operator1" == "/"  ]];
then
for y in {1..15}
do
    echo -n "$int1 / $y = "
    #divide the inputted operand by the second operand
    echo -en "\t$(($int1/y))"
    echo
done
fi

#to the power of eponent table
if [[ "$operator1" == "^"  ]];
then
for y in {0..15}
do
    echo -n "$int1 ^ $y = "
    #compute the result of the inputted operand to the power of second operand
    echo -en "\t$(($int1**y))"
    echo
done
fi


#create bottom of table

echo "-----------------------------------"

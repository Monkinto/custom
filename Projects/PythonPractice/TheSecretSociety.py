#!/usr/bin/env python3

#Variables
from random import randint, randrange

dice = [0, 0, 0, 0, 0, 0]

def rolldie ():
  var = randint(1,6)
  #print(var)
  return var

#print(len(dice))

for i in range(len(dice)):
  dice[i] = rolldie()

for i in range(len(dice)):
  print("Die " + str(i+1) + " = " + str(dice[i]))
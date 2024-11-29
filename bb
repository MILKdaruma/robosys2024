#!/usr/bin/python3
import sys

bb_weight, velocity = sys.stdin.read().split("\\")

bb_weight = float(bb_weight) / 1000  
velocity = float(velocity)  

energy = 0.5 * bb_weight * velocity ** 2

if energy > 0.97:
    print(f"銃刀法違反: エネルギー {energy:.3f} J")
else:
    print(f"合法: エネルギー {energy:.3f} J")




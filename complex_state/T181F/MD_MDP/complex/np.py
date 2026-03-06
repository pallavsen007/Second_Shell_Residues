### This script would spit out the 26 numbers from 0 to 1 to used in the mdp file

### Usage : python np.py > mdp.txt
### use the corresponding numbers and place it in the fep_lambdas part.


#### First open the file

psg = [str(i) for i in range(31)]

psg_str = ' '.join(psg)
print(psg_str)

import numpy as np
numbers = np.linspace(0, 1, num=31)
num_str = str(numbers)
print(num_str)

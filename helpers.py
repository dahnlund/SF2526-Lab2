import numpy as np

def eig(M):   #Create a eig-function to get the values and vectors sorted in a descending order
    eig_vals, eigvectors = np.linalg.eig(M)
    idx = np.flip(eig_vals.argsort())
    return eig_vals[idx], eigvectors[:,idx]

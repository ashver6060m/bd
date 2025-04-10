import numpy as np

def hash_calculation(given_hash,data):
  data_hash = np.zeros([len(given_hash),len(data)])
  for i in range(len(given_hash)):
    for j in range(len(data)):
      data_hash[i][j] = (given_hash[i,0]*j + given_hash[i,1]) % given_hash[i,2]
  return data_hash

def hash_signature(data_hash,data):
  sig_hash = np.full((len(data_hash),len(data)-1),np.inf)
  for i in range(len(data)):
    for j in range(len(data_hash)):
      for k in range(len(data[i])):
        if data[i][k] == 1 and sig_hash[j][k] > data_hash[j][i]:
          sig_hash[j][k] = data_hash[j][i]
    print(sig_hash,'\n')
  return sig_hash

data = np.array([
    [1,0,0,1],
    [0,0,1,0],
    [0,1,0,1],
    [1,0,1,1],
    [0,0,1,0]
])
given_hash = np.array([[1,3,5],[1,7,5]])

hash_signature(hash_calculation(given_hash,data),data)

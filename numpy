import numpy as np

a = np.array([1,2,3], dtype='int16')
print(a)


b = np.array([[7.0,8.0,9.0], [11.0,14.0,15.0]])
print(b)

# dimentional
a.ndim #=1
b.ndim #=2

#shape __get rows and column
a.shape #that is 3 because  1 row 3 columns
b.shape # similarly


# can change the bits of the values
a.dtype #that is 32 we can even chage it ot even smaller values #going above

# the size
a.itemsize#which is int 16 
b.itemsize#floats ar bogger than integer

#no of bytes
a.nbytes

# acessing/changing specific elements, rows,coloumns

a =np.array([[1,5,7,2,5,7,6], [1,8,4,2,7,2,7]])
print(a)


a.shape

a[1, 6]

#getting specific rows
a[:1]

# getting specific coloumn
a[:,3]

# a little more tricky
a[0, 1:-1:1]

a[1,4] = 20
a

 b= np.array([[[1,3],[1,4]],[[1,5],[1,6]]])
print(b)

#the first index,the second row(1),the last element
b[0,1,1]

# also dementional
b[:,0,:]

#replace
b[:,0,:] = [[1,1],[2,2]]
print(b)

# initializing different array

#all 0s matrix
np.zeros((1,2,4))


np.ones((4,2,2), dtype= 'int16')

np.full((16,16),(1))#16x16 matrix full of 1

np.full_like(a.shape,4)

np.full_like(a,4)

np.full(a.shape,4)

#random numbers
np.random.rand(2,4)

np.random.random_sample(a.shape)

#random number in integer 
np.random.randint(7, size=(3,3))#the 7 indicate that the num should be snmaller than 7

np.random.randint(3,7, size=(3,3))#similarly the number should be between 3 and 7

#the identity matrix
np.identity(5)

arr = np.array([[1,2,3]])
r1 = np.repeat(arr,3, axis = 0)
print(r1)

output =np.ones((5,5))
print(output)
z =np.zeros((3,3)) 
print(z)
z[1,1] = 9
print(z)
output[1:4,1:4] = z
print(output)

# BE CAREFULL WHEN COPYING ARRAY!!

a = np.array([1,2,3])
b =a#if  we put a = b it is technically that a is equals to b 
b[0] = 23
b
a#this happpens so use this 

a =np.array([1,3,2])
b = a.copy()
b[0]=4
a

b

### Mathamatics

x = np.array([22,33,44])


x +2

x**2

x+=2
x

x-1

y =np.array([1,0,1,])
x+y

np.sin(y)

np.cos(y)

a = np.ones([2,3])
print(a)
b = np.full((3,2),2)
print(b)
np.matmul(a,b)

# satistics 


satus = np.array(([1,2,3], [4,5,6]))
satus

np.max(satus, axis =1)

np.min(satus,axis =0)

np.sum(satus, axis=0)

## reconganizing arrays

before = np.array(([1,2,3,4], [5,6,7,8]))
print(before)
after = before.reshape((2,2,2))
print(after)

# vertically stack
v1 =np.array([1,2,3,4])
v2=np.array([1,2,3,4])

np.vstack([v1,v2,v1])

# horizontal stack
h1 = np.ones((2,4))
h2 = np.zeros((2,2))
np.hstack((h1,h1))

# miscellanous

load data 

filedata = np.genfromtxt('C:\\Users\\shiny\\vvvv.txt', delimiter = ",")
filedata = filedata.astype('int32')
print(filedata)

# boolean masking an advanced indexing

np.any(filedata > 5, axis=0)#vertically small

np.all(filedata > 5,axis=1)

((filedata > 5) & (filedata < 7))


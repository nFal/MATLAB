This is a simple program that does character recognition using a back propagation network.

The code is only a first draft - straight implementation of the math with no optimisations.

The BPN_CR.pdf file explains various sections of the code.

The training data was taken from: http://www.ee.surrey.ac.uk/CVSSP/demos/chars74k/EnglishHnd.tgz . Extract all images from this link into the folder where the MATLAB codes are.

The code maybe specific to the image dimensions/properties in the above link.

First run the train code. It will store the trained network weights into weights.mat. Then run the test code. It will predict what a given image is, displaying a probability value.

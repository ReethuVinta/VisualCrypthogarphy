# VisualCryptogarphy
Visual Cryptography is a cryptographic technique where a message is revealed as a visual image.

**2 members Secret Sharing:**

Visual secret sharing problem assumes that the message consists of a collection of black and white pixels, and each pixel is handled separately.
By doing some operations shares will be given one to each person(namely s1,s2).
When the transparencies s1,s2 are stacked together, then we can see combines share which the message.
Logically stacking of these s1 and s2 is equal to bitwise xor of them.

**Programming files written:** 

**main.m -** Loads the image into a matrix and converts it into a black and white image.

**visual.m -** Function to form two shares.

**share.m -** It outputs share1,share2 for each pixel randomly(output will be 2x2 matrix).

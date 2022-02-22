# Digital-Lab
One of the most common mathematical operations in digital signal processing algorithms is matrix multiplication. Typical applications requiring matrix multiplication include Fast-Fourier Transform (FFT), image processing, etc. 
Consider a simple matrix multiplication as follows. A 1×2 vector is multiplied by a 2×1 vector, the result of the multiplication is achieved as below:
![image](https://user-images.githubusercontent.com/89126668/155135290-aca34a84-0288-48be-9108-ef103c926991.png)
Fig. 2 shows the primary inputs and outputs of the Matrix Multiplier;
![捕获 PNG4](https://user-images.githubusercontent.com/89126668/155134918-bac90a6b-b1fe-4981-a2dc-d467aa076c61.PNG)
Fig. 3 further shows a possible architecture of the Matrix Multiplier. There are three 
building blocks, the Multiplier, the Accumulator and the State Machine. The State 
Machine generates the three control signals (EN1, EN2 and EN3) to enable the data 
transfer between/within the Multiplier and the Accumulator.
![捕获 PNG3](https://user-images.githubusercontent.com/89126668/155134935-1c4108e7-0b3e-431f-8048-78628129e606.PNG)
--------------------------
#Tips:
(i) The signed multiplication can be modelled using the following code (where the P is output, and A and B are inputs)
assign P = $signed(A) * $signed(B);
(ii) For simplicity, all interfaced signals between the three building blocks can be registered (i.e. generated as sequential logic as opposed to combinational logic). 
(iii) Signed extension is required for the Accumulator. For example, if the signal D is 17 bits and the signal C is only 16 bits, an extra bit can be added to C to make the final signal to be 17 bits. 
assign Q = $signed({C[16], C}) + $signed(D);

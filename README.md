# Polar-Encoder (Major Project)

## Abstract

In this project, We Design and Implement the encoding process of polar codes adopted by the 5G standard.
Leveraging the capacity-achieving properties of polar codes, the encoder is optimized for high-throughput, low-latency communication in the dynamic 5G landscape.
The purpose of this work is to provide a straightforward, self-contained guide to the understanding of hardware implementation of 5G-compliant encoding of polar codes.
The result of these efforts is an elaborate framework that applies novel coding techniques to provide a solid channel code for NR requirements.

## Introduction

The emergence of 5G wireless technology has ushered in a new era of communication, characterized by the demand for higher data rates, lower latency, and increased reliability.
At the heart of these transformative 5G advancements lies the revolutionary polar encoding scheme.

Polar codes are a class of capacity-achieving codes introduced by Arıkan.In the past decade, the interest and research effort on polar codes has been constantly rising in academia and industry alike.
Within the ongoing 5th generation wireless systems (5G) standardization process of the 3rd generation partnership project (3GPP), polar codes have been adopted as channel coding for uplink and downlink control information for the enhanced mobile broadband (eMBB) communication service.
5G foresees two other frameworks, namely ultra-reliable low-latency communications (URLLC) and massive machine-type communications (mMTC), for which polar codes are among the possible coding schemes.

The construction of a polar code involves the identification of channel reliability values associated with each bit to be encoded. This identification can be effectively performed given a code length and a specific signal-to-noise ratio.
However, within the 5G framework, various code lengths, rates and channel conditions are foreseen, and having a different reliability vector for each parameter combination is unfeasible.
Thus, substantial effort has been put in the design of polar codes that are easy to implement, and have low description complexity, while maintaining good error-correction performance over multiple code and channel parameters.
 
The majority of available literature does not take into account the specific codes designed for 5G and their encoding process; given their upcoming widespread utilization, the research community would benefit from considering them within error-correction performance evaluations and encoder/decoder designs.
Both the encoding and the decoding process can incur substantial speed and complexity overhead, while the performance of decoders is tightly bound to the characteristics of the polar code.
Works focusing on hardware and software implementations can effectively broaden their audience by including compliance with the 5G standard.

![image](https://github.com/kanishk1605/Polar-Encoder/assets/105859363/3ea84812-aec0-4567-911e-7cd2884474f8)

An industry standard is a document providing specifications for delivering a service agreed upon by a group of competing companies.
This agreement allows different manufacturers to create products that are compatible with each other so that standard details are often the result of a quid pro quo among companies.

The outcome of the endless discussions and struggles among different agendas is a patchwork of techniques, whose mixture provides acceptable performance; for this reason, a standard usually represents the state-of-the-art of a field more than its pinnacle.
In this project, we provide a tutorial for the polar code encoding process foreseen by 5G, from the code concatenation, through interleaving functions, to the polar-code-specific subchannel allocation and rate-matching schemes.

### Background
The rapid growth in wireless data demand has driven the development of 5G communications, which promises significantly improved speed, capacity, and reliability compared to previous cellular network generations. This surge in data usage is fuelled by the increasing popularity of bandwidth-intensive applications, such as high-definition video streaming, real-time gaming, and the proliferation of Internet-connected devices. To meet these growing demands, 5G networks are designed to deliver ultra-high data rates, often exceeding 1 Gbps, and ultra-low latency, with round-trip times as low as 1 milliseconds.

However, the stringent performance requirements of 5G have exposed the limitations of traditional channel coding techniques like convolutional and LDPC codes. These legacy coding schemes struggle to provide the necessary error-correcting capabilities to support the ultra-reliable and low-latency requirements of 5G. This challenge has led to the emergence of polar codes as a promising alternative for 5G and beyond.
Polar codes are a class of forward error correction (FEC) codes that have been theoretically proven to achieve the symmetric capacity of any binary-input discrete memoryless channel. This means that polar codes can approach the theoretical limits of information theory, making them an attractive choice for 5G and future wireless standards. Their unique recursive construction and efficient encoding/decoding algorithms make polar codes well-suited for high-speed and low-latency applications, positioning them as a leading candidate for 5G channel coding.

Polar codes are a novel class of error-correcting codes that have shown exceptional promise for use in 5G communications. They are theoretically proven to achieve the symmetric capacity of any binary-input discrete memoryless channel, making them an attractive choice for the high-performance requirements of 5G networks. The construction of polar codes involves carefully selecting the information bits and frozen bits based on the channel conditions. This process is crucial to maximizing the error-correcting capabilities of the code and ensuring it can meet the stringent reliability, latency, and throughput demands of 5G.
Efficient algorithms for polar code generation, such as the fast Hadamard transform, are essential for the practical implementation of polar codes in 5G systems. These algorithms enable the rapid computation of the code construction parameters, allowing the polar encoder to be deployed in high-speed 5G applications. Designing the optimal polar code parameters for 5G is a complex task that requires careful consideration of the unique requirements of the 5G standard. Factors like ultra-high reliability, low latency, and high throughput must be balanced to ensure the polar code can effectively support the diverse use cases of 5G networks.

###  Objective

The primary objective of this research project is to develop a high-performance polar encoder architecture that can effectively address the demands of emerging 5G communication systems.
Polar codes, a class of error-correcting codes, have shown great potential in providing reliable and efficient data transmission for 5G networks, which require robust and low-latency performance.
By exploring the feasibility of polar codes in 5G applications, this project aims to improve the overall reliability and efficiency of 5G data transmission, ultimately contributing to the advancement of next-generation wireless technologies.
 
## Literature Survey

P. Chen et al., [1] This work present a kind of concatenated polar codes called hash-polar codes with flexible outer code lengths, in which a hash function-based encoder is used as an outer encoder. A partial hash-polar code is also proposed to enhance the error-correcting performance at high signal-to-noise ratios. Since polar codes have been recommended by 3GPP as the channel coding scheme for the 5G enhanced mobile broadband control channel, the design of hash-polar codes for 5G is considered, where both good error-correcting performance and low false alarm rate (FAR) are required. The simulation results show that, under the 5G FAR requirement, the proposed hash-polar codes have similar frame error rate performance to cyclic redundancy check (CRC)-polar codes and perform better than parity check polar codes. In order to support early termination (ET) for 5G coding, we then propose segmented hash-polar codes, which exhibit the advantages of the ET gain compared with both CRC-polar codes and distributed CRC-polar codes.

S. Shao et al., [2] Channel coding may be viewed as the best-informed and most potent component of cellular communication systems, which is used for correcting the transmission errors inflicted by noise, interference and fading. The powerful turbo code was selected to provide channel coding for Mobile Broad Band (MBB) data in the 3G UMTS and 4G LTE cellular systems. However, the 3GPP standardization group has recently debated whether it should be replaced by Low-Density Parity Check (LDPC) or polar codes in New Radio (NR), ultimately reaching the decision to adopt the code family for enhanced Mobile Broad Band (eMBB) data and polar codes for eMBB control. This work summarises the factors that influenced this debate, with a particular focus on the Application Specific Integrated Circuit (ASIC) implementation of the decoders of these three codes. We show that the overall implementation complexity of turbo, LDPC and polar decoders depends on numerous other factors beyond their computational complexity. More specifically, we compare the throughput, error correction capability, flexibility, area efficiency and energy efficiency of ASIC implementations drawn from 110 papers and use the results for characterising the advantages and disadvantages of these three codes as well as for avoiding pitfalls and for providing design guidelines.

P. Chen et al., [3] With the development of high-speed trains (HST), efficient and reliable communication services in high mobility scenarios have become an urgent demand. As one of the strong candidates in 5G wireless systems, polar codes along with their optimized design should also be investigated under high mobility scenarios. In this work a scheme of hash-concatenated polar codes is proposed to reduce the false alarm rate, which is a key performance in 5G enhanced mobile broadband control channel. Then, for data channels, hash-based cyclic redundancy check (CRC)-aided polar codes with a joint successive cancellation list decoding method are introduced to improve the error-correcting performance. Simulation results show that the hash-concatenated polar codes can achieve both a lower false alarm rate and better error-correcting performance than conventional CRC-aided polar codes in both the AWGN and high mobility channels. Furthermore, with the joint decoding approach, hash-based CRC-aided polar codes perform better than LTE turbo codes for high-order modulations in terms of the frame error rate over the HST channel. In October 2016 Huawei announced that it had achieved 27Gbps in 5G field trial tests using the Polar codes for channel coding. The improvements have been introduced so that the channel performance has now almost closed the gap to the Shannon limit which sets the bar for the maximum rate for a given bandwidth and a given noise level. In November 2016 3GPP agreed to adopt Polar codes for the eMBB (Enhanced Mobile Broadband) control channels for the 5G NR (New Radio) interface. At the same meeting, 3GPP agreed to use LDPC for the corresponding data channel.

Arikan E. et al., [4] stated in this paper that channels tend to polarize with respect to rate and reliability under certain combining and splitting operations. And investigated a particular polarization scheme analytically tractable, and provided strong evidence that channel polarization is a compliance phenomenon, which is impossible to avoid as long as channels are combined with sufficient density and mix connections, whether chosen recursively or random. The study of channel polarization in such generality is an interesting theoretical problem.

## Design And Implementation

###  CHANNEL POLARIZATION:

The channel polarization phenomenon, introduced in, consists of a transformation that produces N “synthetic” bit-channels from N independent copies of a binary-input discrete memoryless channel (B-DMC).
The new synthetic channels are then “polarized” in the sense that each of them can transmit a single bit at a different reliability, i.e. with a different probability of being decoded correctly.
If N is large enough, the mutual information of the synthetic channels is either close to 0 (completely noisy channels) or close to 1 (perfectly noiseless channels), resulting in channels of extreme capacities.
 
Polar codes provide a low- complexity scheme to construct polarized channels, where the fraction of noiseless channels tends to the capacity of the original B-DMC.
The mathematical foundations of polar codes lie in the discovery of the polarization phenomenon of matrix G2 = [ 1 0 1 1], also known as the basic polarization kernel.

This matrix enables the encoding of a two-bits input vector u = [u0, u1] into code word d = [d0, d1] as d = u · G2, namely having d0 = u0 ⊕ u1 and d1 = u1.
The polarization effect brought by G2 is more evident for binary erasure channels (BECs), where the transmitted bit is either received correctly or lost with probability δ.
If the input bits are decoded sequentially, bit u0 cannot be recovered as u0 = d0 ⊕ d1 if any of the code bits has not been received, hence with probability δ0 = (2−δ) δ > δ.
After u0 has been correctly decoded, input bit u1 can be decoded either as u1 = d1 or u1 = u0 ⊕ d0, hence it is sufficient that at least one of the two code bits has been received: consequently, failed decoding of this bit happens with probability δ1 = δ 2 < δ.
As a result, input bit u0 is transmitted over a degraded synthetic BEC with erasure probability δ0 > δ, while u1 is transmitted over an enhanced synthetic BEC with erasure probability δ1 < δ.

![image](https://github.com/kanishk1605/Polar-Encoder/assets/105859363/7b0ec785-d20c-44c5-98a5-6d88f087de0e)

Fig: Virtual Bit-Channels Capacities Over A BEC 1/2.

###  POLAR CODE ENCODING IN 5G:

In the following, the notation introduced in the 3GPP technical specification will be used. Polar codes are used to encode the uplink control information (UCI) over the physical uplink control channel (PUCCH) and the physical uplink shared channel (PUSCH).
In the downlink, polar codes are used to encode the downlink control information (DCI) over the physical downlink control channel (PDCCH), and the payload in the physical broadcast channel (PBCH).
 
In 5G applications, the number of information bits, A, is fixed and a codeword of length E is created to achieve the desired rate R = A/E required by upper communication layers.
To accommodate polar codes to this requirement, a mother polar code of length N = 2n is initially constructed, and the desired code length E is matched via puncturing, shortening or repetition.
The mother code length N is lower bounded by Nmin = 32, while the value of the upper bound Nmax depends on the channel used, being Nmax = 512 for downlink and Nmax = 1024 for uplink.

It portrays the set of encoding operations envisaged by the 5G polar codes framework. Vector a contains the A information bits to be transmitted using a payload of G code bits.
Depending on code parameters, the message may be split and segmented into two parts, which are encoded separately and transmitted together.
For each segmented vector, a 0 of length A0 will be encoded into an E-bit polar codeword. To every A0-bit vector, an L-bit CRC is attached. The resulting vector c, constituted of K = A0 + L bits, is passed through an interleaved.
Based on the desired code rate R and codeword length E, a mother polar code of length N is designed, along with the relative bit channel reliability sequence and frozen set.
The interleaved vector c 0 is assigned to the information set along with possible parity-check bits, while the remaining bits in the N-bit u vector are frozen.
Vector u is then encoded as d = u·GN, where GN = G2 ⊗ n is the generator matrix for the selected mother code. 
After encoding, a sub-block interleaver divides d into 32 equal-length blocks, scrambles them and creates y, which is fed into the circular buffer. For rate matching, puncturing, shortening or repetition are applied to change the N-bit vector y into the E-bit vector e.
A channel interleaver is finally applied to compute the vector f, which is now ready to be modulated and transmitted as g after concatenation if required.


RELIABILITY SEQUENCES:

N = 8: 1 2 3 5 4 6 7 8

N = 16: 1 2 3 5 9 4 6 10 7 11 13 8 12 14 15 16

N = 32: 1 2 3 5 9 17 4 6 10 7 18 11 19 13 21 25 8 12 20 14 15 22 27 26 23 29
        16 24 28 30 31 32

![image](https://github.com/kanishk1605/Polar-Encoder/assets/105859363/34f80b1a-d88e-4a04-9bba-386730c8eb17)

###  FROZEN SET DESIGN:

In polar coding, to transmit at rate R = K∕N, select the K best channels to transmit information and “freeze” the remaining N − K bits to 0.
The generator matrix can be concatenated by using the Kronecker product of the kernel. A binary tree representation is used for this transform.
For larger transforms this representation is very useful in encoding and decoding. The inputs are given to the leaf nodes and they are connected to the main node which gives the output.
Here the sum of nodes is taken as the mod-2 addition or XOR operation.

In general, the reliability order of the bit-channels depends on the channel condition and the code length and therefore is not universal. s.
The density evolution (DE) method, initially proposed and improved, can provide theoretical guarantees on the estimation accuracy, however at a high computational cost.
Recent studies on the partial reliability order imposed by the polarization effect on bit channels opened new opportunities in the generation of a universal reliability sequence to be used independently on channel conditions.
This sequence, composed of 1024 bit-channel indices sorted in reliability order, can be used regardless of the channel conditions to design the frozen set of any polar code of length smaller or equal to 1024:
it is possible to extract sub-sequences for shorter codes directly from the universal reliability sequence, hence reducing the sequence storing space. This nested reliability structure represents a real breakthrough in polar code design, and it is probably the most lasting legacy of the standardization process.
This impressive result has been achieved by taking into account also distance properties in short polar code design the use of list decoders and the presence of assistant bits in the code.

![image](https://github.com/kanishk1605/Polar-Encoder/assets/105859363/27a6f411-7410-458a-a156-b23f77829c02)

Fig: An Example of Polar Code Graph (K = 4 To N = 8)


## Advantages

 There are several advantages of the design of polar codes in 5G New Radio, including:
 
1.	Excellent Error-Correction Performance: Polar codes have been shown to provide superior error-correction performance compared to other coding schemes, especially in low signal-to-noise ratio (SNR) environments. This makes them well-suited for use in 5G NR, which requires reliable communication in harsh environments with high interference and noise.
2.	Low Latency: Polar codes have a low encoding and decoding complexity, which means they can be implemented with low latency. This is critical for real-time applications, such as autonomous vehicles and virtual reality, where low latency is essential for ensuring safe and effective operation.
3.	Scalability: Polar codes are scalable, meaning that they can be used for a wide range of data rates and block lengths. This makes them a versatile coding scheme that can be adapted to different 5G NR use cases and requirements.
4.	Efficient Use of Resources: Polar codes are highly efficient in their use of resources, such as bandwidth and power. This is particularly important in 5G NR, where the network infrastructure needs to support a large number of devices and applications with varying requirements. 
5.	Standardization: Polar codes have been standardized by 3GPP for use in 5G NR, which means that they have undergone rigorous testing and validation. This provides a level of confidence in their performance and interoperability across different vendors and networks.
	Overall, the design of polar codes in 5G NR offers several advantages, including excellent error-correction performance, low latency, scalability, efficient use of resources, and standardization. These advantages make polar codes a compelling choice for reliable and low-latency communication in 5G networks.

## Applications

 Polar codes are a powerful coding scheme that has gained significant attention in the context of 5G New Radio (NR) due to their excellent error-correction performance and low latency.
Here are some applications of the design of polar codes in 5G NR:

1.	**5G Wireless Communication:** The primary application of polar codes is in 5G wireless communication, where they are used to encode the data transmitted over the airwaves. Polar codes are particularly useful in 5G NR because of their ability to provide reliable communication in harsh environments, such as those with high interference and noise.
2.	**Internet Of Things (IoT):** Polar codes can also be used for communication in IoT devices, which are expected to play a significant role in the 5G ecosystem. IoT devices typically have limited power and processing capabilities, making them ideal candidates for low-latency and efficient error-correction techniques like polar codes.
3.	**Autonomous Vehicles:** The use of polar codes in autonomous vehicles is another potential application. These vehicles rely heavily on communication networks to transmit data, such as sensor data and mapping information, in real time. 
4.	**Edge Computing:** The use of polar codes in edge computing can help ensure reliable communication between edge devices and the cloud. This is particularly important in 5G NR, where edge computing is expected to play a significant role in enabling low-latency applications, such as virtual and augmented reality.
   
Overall, the design of polar codes in 5G NR has numerous potential applications, from wireless communication to IoT, autonomous vehicles, and edge computing. As the deployment of 5G networks continues to expand, polar codes are likely to play an increasingly important role in ensuring reliable and low-latency communication.

## Conclusion

In this work, we have detailed the polar code encoding process within the 5th generation wireless systems standard, providing the reader with a user-friendly description to understand, implement and simulate 5G-compliant polar code encoding.
This encoding chain showcases the successful efforts to meet the various requirements of the code for the eMBB control channel: low description complexity and low encoding complexity while covering a wide range of code lengths and code rates.

## Future Scope

The design of Polar Codes in 5G New Radio has a promising future scope in modern communication systems.
Here are some potential areas where further research and development in this area may lead to significant improvements:
 
1.	**LOW-LATENCY COMMUNICATION:** The design of Polar Codes in 5G NR has already shown excellent potential for low-latency communication. Further research can explore ways to optimize the Polar Code design for even lower latency in applications such as autonomous vehicles, remote surgery, and other time-critical systems.
2.	**HIGH-SPEED COMMUNICATION:** With the ever-increasing demand for high-speed data transfer, the design of Polar Codes can be further optimized to support higher data rates. This can include exploring new code rates, code lengths, and construction methods that can support even higher data rates.
3.	 **RESOURCE-CONSTRAINED COMMUNICATION:** Polar Codes can be designed to work efficiently with resource-constrained communication systems such as the Internet of Things (IoT) and Machine-to-Machine (M2M) communication designing.
	This can include codes can handle higher levels of noise and interference while utilizing minimal computational resources can handle higher levels of noise and interference while utilizing minimal computational resources.
4.	**BEYOND 5G COMMUNICATION:** The design of Polar Codes can play a crucial role in future communication systems beyond 5G, such as 6G and beyond. Research in this area can explore the potential for using Polar Codes as a channel coding scheme for emerging wireless communication technologies.
   
	Overall, the future scope of the design of Polar Codes in 5G NR is vast and has the potential to lead to significant advancements in modern communication systems.

## References

[1].	P. Chen, B. Bai, Z. Ren, J. Wang and S. Sun, "Hash-Polar Codes with Application to 5G," in IEEE Access, vol. 7, pp. 12441-12455, 2019.

[2].	S. Shao et al., "Survey of Turbo, LDPC and Polar Decoder ASIC Implementations," in IEEE Communications Surveys & Tutorials.

[3].	P. Chen, M. Xu, B. Bai and J. Wang, "Design and Performance of Polar Codes for 5G Communication under High Mobility Scenarios," 2017 IEEE 85th Vehicular Technology Conference (VTC Spring), Sydney, NSW, 2017, pp. 1-5.

[4].	Arikan, E. (2009). Channel Polarization: A Method for Constructing Capacity-Achieving Codes for Symmetric Binary-Input Memoryless Channels. IEEE Transactions on Information Theory, 55(7), 3051–3073. doi:10.1109/tit.2009.2021379 

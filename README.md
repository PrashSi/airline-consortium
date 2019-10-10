# Airline Consortium
Airline Consortium to Change flights on user's request. Policies are enforced through smart contract using **Solidity**.


## LAB DESCRIPTION:
In the basic definition of the problem, the airlines go about their routine business with their traditional manual, centralized and distributed systems. In addition they can participate in a permissioned decentralized consortium of airlines. Unlike traditional systems, they may join and leave this system as they wish. The consortium allows them to trade the flight seats (initially only buy and sell) under certain circumstances and conditions. The rules for the trades can be codified into the system so that there are no ambiguities and outcomes are deterministic. The airline representatives (on behalf of the airlines) can initiate the trades proactively and/or reactively in response to a demand by a customer or as warranted by circumstances such a cancellations due to weather.

1. A customer initiates a change of flight seat on Airline A for any one of the reasons we discussed.
2. Agent or an application in Airline A, verifies and validates the request through a shared application logic among the ASK consortium members.
3. Once verified, the request Tx is confirmed and recorded on a distributed immutable ledger. Now everyone in the consortium knows that there is a legitimate request.
4. In the simplest design, an agent of the Airline A sends the verified and validated request (VVRequest) to the Airlines B. (Alternatively, we could use a broadcast model where many airlines gets the request, and any one of them could respond.)
5. An agent or application in Airline B checks with its own databases and applications to check for availability.
6. Agent of Airline B responds through a shared logic that verifies and validates common interests and shared rules of the consortium.
7. Once verified, the response Tx is confirmed and recorded on a distributed immutable ledger. Now everyone in the consortium knows that a response has been sent.
8. Airline B sends the response (indicated by VVResponse) to the agent of Airline B.
9. Airline A’s agent application updates its own database.
10. Airline B now messages to the customer the information for the flight seats and other details. (Note that Airline B holds its own digital assets, does not transfer it to Airline A but directly to the customer.)
11. Payments are settled through peer to peer Tx using the escrow or deposit that participating airlines hold in their shared logic.

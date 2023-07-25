# Blockchain-Based-Donation
## Context
This project aims to assist a small nonprofit organization operating in the information sector in creating a charity fundraising portal. One of the organization's co-founders is interested in harnessing blockchain technology as it may be the perfect solution for automating their monthly fundraising events.

## Project Objectives
The primary goal of this project is to develop a single smart contract, assuming it is a prototype and therefore managing a single test fundraising campaign.

## Smart Contract Features
To achieve the project objectives, the smart contract will be designed with the following essential features:
- A variable representing the total collected balance.
- An "address" type variable representing the address of the fundraising manager, instantiated upon contract creation.
- A variable representing the fundraising goal set by the creator of the campaign, instantiated upon contract creation.
- A variable containing the total number of donors.
- A variable determining if the fundraising campaign is concluded or ongoing, depending on whether the goal has been reached.
- A function allowing users to donate Ether to the contract, updating the balance and the number of donors.
- A function allowing only the fundraising manager to withdraw the collected Ether from the contract.
- A function to close the fundraising campaign.
- A function to check if the set fundraising goal has been reached or surpassed by the campaign creator.
  
## Conclusion
This smart contract prototype aims to demonstrate the transparency, security, and automation capabilities of blockchain technology in the context of charity fundraising. By providing a better understanding of the underlying mechanics, it can help the organization achieve its philanthropic goals more efficiently.

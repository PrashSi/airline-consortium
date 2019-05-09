pragma solidity >=0.4.22 <0.6.0;

contract Election {
	// Mode a Candidate
	struct Candidate{
		uint id;
		string name;
		uint voteCount;
	}
    // Read/write candidate
    string public candidate;

    // Constructor
    constructor () public {
       addCandidate("candidate 1");
       addCandidate("candidate 2");
    }
    mapping(uint => Candidate) public candidates;

    // store candidate's vote status
    mapping(address => bool) public voted;
    // Store the number of candidates
    uint public candidatesCount;

    function addCandidate( string memory _name) private {
    	candidatesCount++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);

    }

    function vote ( uint _candidateId) public {
    	// record that voter has voted
    	voted[msg.sender] = true;
    	// updating the vote count
    	candidates[_candidateId].voteCount ++;
    }
}
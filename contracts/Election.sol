pragma solidity ^0.5.0;

contract Election {
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }

  // Read/write Candidates
  mapping(uint => Candidate) public candidates;

  // Store Candidates Count
  uint public candidatesCount;

  function addCandidate (string memory _name) private {
    candidatesCount ++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }
}

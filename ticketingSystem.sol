pragma solidity ^0.5.0;

contract ticketingSystem
{
	
	
	struct Artist
	{
		bytes32 name;
		address owner;
		int artistCategory;
		uint256 totalTicketsSold;
	}


	struct Venue
	{
		bytes32 name;
		uint256 spaceAvailable;
		bytes32 percentageTicket;
		adress owner;
	} 

	struct Ticket 
	{
		adress owner;
		uint timestamp date;
		bytes32 artist_id;
		bytes32 venue_id;
	}
	struct Concert
	{
		uint artist_id;
		uint concert_id;
		uint venue_id;
		uint256 totalTickSold;
	}


	constructor()
	{
		totalArtistsRegistered = 0;
	}
	
	uint256 totalArtistsRegistered;
	mapping(address => Artist) public listArtists;
	mapping(address => Ticket) public listTickets;
	mapping(address => Concert) public listConcerts;
	mapping(address => Venue) listVenues;

	function createArtist(bytes32 artist_name, uint256 id_ticket, uint id_concert) public
	{
		Artist new_artist;
		new_artist.owner=msg.sender;
		new_artist.name=artist_name;
		new_artist.artistCategory=artist_category;
		new_artist.totalTicketsSold=0;

		listArtists[msg.sender]=new_artist;
		artists[totalArtistsRegistered]=msg.sender;
		listConcerts[msg.sender]=true;
		totalArtistsRegistered++;
	} 

	function createVenue(bytes32 name, uint256 spaceAvailable, int percentageTicket)
	{
		Venue new_venue;
		new_venue.name=name;
		new_venue.spaceAvailable=spaceAvailable;
		new_venue.percentageTicket=percentageTicket;
	}

	function createTicket
}
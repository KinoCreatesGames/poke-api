typedef PokedexOptions = {
	protocol:String,
	hostName:String,
	versionPath:String,
	timeout:Int,
	cacheLimit:Int
}

typedef PokemonSprite = {
	front_default:String
}

typedef PokemonTypeInner = {
	name:String
}

typedef PokemonType = {
	type:PokemonTypeInner
}

typedef Pokemon = {
	name:String,
	id:Int,
	height:String,
	weight:String,
	sprites:PokemonSprite,
	types:Array<PokemonType>
}

typedef GenusInfo = {
	genus:String
}

typedef FlavorText = {
	flavor_text:String
}

typedef PokemonSpecies = {
	genera:Array<GenusInfo>,
	flavor_text_entires:Array<FlavorText>
}

typedef PokemonListResult = {
	url:String,
	name:String
}

typedef PokemonList = {
	count:Int,
	results:Array<PokemonListResult>
}

typedef Berry = {
	id:Int,
	name:String,
	growth_time:Int,
	max_harvest:Int,
	natural_gift_power:Int,
	size:Int,
	smoothness:Int,
	soil_dryness:Int,
	firmness:NamedAPIResource,
	flavors:Array<FlavorMap>,
	item:NamedAPIResource,
	natural_gift_type:NamedAPIResource
}

typedef FlavorMap = {
	potency:Int,
	berry:NamedAPIResource
}

typedef BerryFirmness = {
	id:Int,
	name:String,
	berries:Array<NamedAPIResource>,
	names:Array<NameResource>
}

typedef BerryFlavor = {
	id:Int,
	name:String,
	berries:Array<FlavorMap>,
	contest_type:NamedAPIResource,
	names:Array<NameResource>
}

typedef NamedAPIResource = {
	name:String,
	url:String
}

typedef NameResource = {
	name:String,
	language:NamedAPIResource
}

// Encounter Methods

typedef EncounterMethods = {
	id:Int,
	name:String,
	order:Int,
	names:Array<NameResource>
}

typedef EncounterConditions = {
	id:Int,
	name:String,
	names:Array<NameResource>,
	values:Array<NamedAPIResource>
}

typedef EncounterConditionValue = {
	id:Int,
	name:String,
	condition:NamedAPIResource,
	names:Array<NameResource>
}

// Evolution
// Machines

typedef Machine = {
	/**
	 * Identifier of this resource
	 */
	id:Int,

	/**
	 * TM or HM item that corresponds to this  machine
	 */
	item:NamedAPIResource,

	/**
	 * The move that is taught by this machine
	 */
	move:NamedAPIResource,

	/**
	 * The version group this machine applies to
	    * aka what game this belongs to.
	 */
	version_group:NamedAPIResource
}
# Pokedex API
> Haxe externs for the pokedex-promise-v2


## API Information
https://github.com/PokeAPI/pokedex-promise-v2


## Requirements

* Have Haxe Installed
* Have hxnodejs on your system
* Have Node.js on your system
* Have pokedex-promise-v2 within the project directory
* To do this simply npm install

```haxe
//Example Usage
	pokedex.getPokemonByName('pikachu').then((value) -> {
		trace(value.name);
	});
	pokedex.getAbilityByName('stench').then((value) -> {
		trace(value.names);
	});
```

## How To Compile
`haxe compile.hxml`
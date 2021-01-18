## Version

Realm 10.5.0

## Step

* Tap `add`
* Tap `update`

## Expected results

```
👇
🔆 Update Results<PersonObject> <0x7fe68660a040> (
	[0] PersonObject {
		id = 38D5AB8B-0593-4567-A020-457F4D3609D1;
		name = 38D5AB8B-0593-4567-A020-457F4D3609D1;
		isBusy = 0;
	}
)
👇👇
🔆 Update Results<PersonObject> <0x7fe68660a040> (
	[0] PersonObject {
		id = 38D5AB8B-0593-4567-A020-457F4D3609D1;
		name = 38D5AB8B-0593-4567-A020-457F4D3609D1;
		isBusy = 1;
	}
)
```

## Actual Results


```
👇
🔆 Update Results<PersonObject> <0x7fe895a04ca0> (
	[0] PersonObject {
		id = 1CD33C9B-21C1-42FE-9BDA-E32053D72DEC;
		name = 1CD33C9B-21C1-42FE-9BDA-E32053D72DEC;
		isBusy = 0;
	}
)
👇👇
🔆 Update Results<PersonObject> <0x7fe895a04ca0> (
	[0] PersonObject {
		id = 1CD33C9B-21C1-42FE-9BDA-E32053D72DEC;
		name = 1CD33C9B-21C1-42FE-9BDA-E32053D72DEC;
		isBusy = 1;
	}
)
```
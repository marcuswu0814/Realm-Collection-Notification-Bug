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
🔆 Update Results<PersonObject> <0x7fa8b3c0b130> (
	[0] PersonObject {
		id = 4DB9E5AC-9CC4-4907-839E-D64F0729893E;
		name = 4DB9E5AC-9CC4-4907-839E-D64F0729893E;
		isBusy = 0;
	}
)
👇👇
```
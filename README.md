This is a swift repository that provides various string extensions.



## Camel Casing
```swift
 let lowerCasedString = "alea jacta est"
 lowerCasedString.camelCased() // "Alea Jacta Est"

 lowerCasedString.camelCased(mode: .lower) // "aLEA jACTA eST"
```


## Case Insensitive Prefix

```swift
let lowerCasedString = "alea jacta est"
lowerCasedString.hasCaseInsenstivePrefix("ALeA") // true
lowerCasedString.hasCaseInsenstivePrefix("LeA") // false

let upperCasedString = "ALE JACTA EST"
upperCasedString.hasCaseInsenstivePrefix("aLEa") // true
upperCasedString.hasCaseInsenstivePrefix("aLa") // false
```

## Case Insensitive Suffix

```swift
let lowerCasedString = "alea jacta est"
lowerCasedString.hasCaseInsenstiveSuffix("EST") // true
lowerCasedString.hasCaseInsenstiveSuffix("ET") // false

let upperCasedString = "ALE JACTA EST"
upperCasedString.hasCaseInsenstiveSuffix("Est") // true
upperCasedString.hasCaseInsenstiveSuffix("ts") // false
```

## Diacritic Insensitive Contains

```swift
let frenchText = "La chèvre de Mr Seguin."
frenchText.containsDiacriticInsentive("che") // true
frenchText.containsDiacriticInsentive("cHE") // true
frenchText.containsDiacriticInsentive("ce") // false
```

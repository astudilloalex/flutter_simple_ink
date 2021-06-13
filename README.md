# simple_ink

Add InkWell and InkResponse with animations for example in the onHover function use underlined text or change color.

## Getting Started
In your flutter project add the dependency:
```yml
dependencies:
  ...
  simple_ink:
```
## Usage example



Import `simple_ink`

```dart
import 'package:simple_ink/simple_ink.dart';
```

### Use Widget

```dart
SimpleInk(
  hoverInkAnim: HoverInkAnim.underlineText(
    text: 'Login', 
    textStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
  ),
  inkType: InkType.Well,
  onTap: () {
    print('Tap');
  },
),
```
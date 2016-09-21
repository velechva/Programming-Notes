# Basics of Angular.js
---

## Front-end framework based on MVC

Model: data source<br>View: renderer webpage<br>Controller: links the two together

![MVC framework](Pics/Ang1.png)

## Jargon

Modules: components used in the application<br>
Directives: extend HTML tags and attribute<br>
Scope: data<br>
Data-binding: when data changes on webpage, the model can be updated (and vice versa!)<br>
Services: ajax, etc

---

### Import Angular.js
```html
<script src='https://ajax.googleapis.com/ajax/libs/angularjs.1.4.9/angular.min.js'></script>
```

### Define the model

```javascript
var app1 = angular.module('app1', [])
```

**app1:** module name

**[]:** list of modules


```html
<html ng-app='app1' ng-init='person = {fName: 'Victor', lName: 'Velechovsky'};
                             capitals = [{city: 'Montgomery', state: 'Alabama'},
                                         {city: 'Junaeu', state: 'Alaska'}];'>
...
</html>
```

### Define a View
```html
<div ng-controller='ctrl1'>
  <span>Values:</span>
  <input type='text' ng-model='first' />
  <input type='text' ng-model='second' />

  <button ng-click='updateValue()'>Sum</button>

  {{calculation}}
</div>
```

### Use scope component to provide data to View
```javascript
app1.controller('ctrl1', function($scope) {
  $scope.first = 1
  $scope.second = 1

  $scope.updateValue = function() {
    $scope.calculation = $scope.first + ' + ' + $scope.second + ' = ' +
      (+$scope.first + +$scope.second)
  }
})
```

This example sums two numbers in entry boxes (with default values = 1) and displays the
answer where {{calculation}} is

### Expressions

```html
<p>5 + 5 = {{5+5}}</p>

<p>Your first value is {{first}}</p>
```

The {{first}} term display above will **automatically update** when the user changes the input value

```html
<p>Your second value is
  <span data-ng-bind='second'></span>
</p>
```

This does the same thing as the previous snippet

### String building

```html
<p>{{person.fName + ' ' + person.lName}} you entered {{first + ' and' second}}</p>
```

### Loops
You can use ng-repeat to cycle through a list of information

```html
<ul>
  <li ng-repeat='capital in capitals'>
    {{'City: ' + capital.city + ', State: ' + capital.state}}
  </li>
</ul>
```

# Multiple Views and controllers
---

angulartut2.html
```html
<!doctype html>
<html ng-app='app2'>
  ...
  <body>
    <h4 ng-controller='ctrl1'>First Random Number: {{randomNum1}}</h4>
    <h4 ng-controller='ctrl1'>Second Random Numnber: {{randomNum2}}</h4>

    <h4 ng-controller='badCtrl'>I'm feeling {{bad}}</h4>
    <h4 ng-controller='goodCtrl'>I'm feeling {{good}}</h4>
  </body>
  ...
</html>
```

exam2.js
```javascript
var app2 = angular.module('app2', [])

app2.controller('ctrl1', function($scope) {
  $scope.randomNum1 = Math.floor((Math.random() * 10) + 1)
  $scope.randomNum2 = Math.floor((Math.random() * 10) + 1)
})
```

We can add more controllers to the js file

```javascript
app2.controller('badCtrl', function($scope) {
  var badFeelings = ['Disregarded', 'Unimportant', 'Rejected', 'Powerless']

  $scope.bad = badFeelings[Math.floor((Math.random() * 4))]
})

app2.controller('goodCtrl', function($scope) {
  var goodFeelings = ['Pleasure', 'Awesome', 'Lovable', 'Inner Peace']

  $scope.good = goodFeelings[Math.floor((Math.random() * 4))]
})
```

So you can make a page that uses multiple controllers, as well as
**multiple pages that use the same controller**

### Prevent the curly brackets from ever showing up with ng-cloak

```html
<html ng-app='app3' ng-cloak>
```

Note: if the ```<script src='.../angular.js'>``` statement is at the bottom of your html page, you need to add this at the top

```html
...
<head>
  ...
  <style>
    [ng\:cloak], [ng-cloak], .ng-cloak { display: none; }
  </style>
  ...
...
</head>
```
### You can add the data in two ways, with {{expressions}} or ng-bind
exam3.js
```javascript
var app3 = angular.module('app3', [])

app3.controller('gListCtrl', function($scope) {
  $scope.groceries =
  [
    { item: 'Tomatoes', purchased: false },
    { item: 'Potatoes', purchased: false },
    { item: 'Bread', purchased: false },
    { item: 'Hummus', purchased: false }
  ]
})
```

angulartut3.html
```html
...
<div id = 'groceryList' ng-controller='gListCtrl'>

  <h3 class='ListTitle'>{{groceries.length}} Groceries to get</h3>

  <h3 class='ListTitle'>
    <span ng-bind='groceries.length'></span> Groceries to get
  </h3>


</div>
...
```

### List the array items easily with ng-repeat
```html
<!-- First Item -->
<ol style='margin: 0 0 -15px 0;'>
  <li>{{groceries[0].item}}</li>
</ol>

<!-- All the Items, starting from 2 -->
<ol start='2'>
  <li ng-repeat='grocery in groceries' ng-if='$index > 0'>
    {{grocery.item}} {{$index}}
</ol>
```

This ng-if tag can use many 'variables' like $first, $last, $middle, $even</br>

### Use ng-repeat on two elements

```html
<table>
  <tr ng-repeat-start='grocery in groceries'>
    <td>
      {{grocery.item}}
    </td>
  </tr>
  <tr ng-repeat-end>
    <td>
      {{grocery.purchased}}
    </td>
  </tr>
```

### Two way binding (allow users to change the data model)
This example will update the data and other places in the document where the data shows up
in real time, as the user types in different values
```html
<label>Change 1st item: </label>
<input ng-model='groceries[0].item' />
```

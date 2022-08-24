# NodeJS Activity: Buggy Author and Buggy Codes

Given below are some codes that are meant to do something functional but it seems like the author of this activity miswrote/misplaced/forgot some code so it's now your job as a trainee to debug the codes given below.

1) The code below exports a function that is a part of a small project called `random_math_stuff`. It simply solves for the GCF of the two given numbers but it seems like there's something wrong in the code! Is there something missing? Is there a miswritten variable? I don't know what it could be so it's time for you to debug it! Write your code in `GCF.js`

   ```javascript
   // GCF.js
   
   const GCF = (a, b) => {
   	if (b % a == 0){
   		return b;
   	}
   	return GCF(b, b%a);
   };
   ```

2) There's another code below which is a part of this mathematical thingy project the author has been working on but it seems like the exported function is not working! Why could it be? The code below must print the greatest common factor of 15 and 20 in the terminal. Write your code in `index.js`

   ```javascript
   // index.js
   
   const http = require('http');
   const GCF = require('./GCF');
   
   const requestListener = (req, res) => {
       res.status(200);
       res.end();
   };
   
   const PORT = 3000;
   
   http.createServer(requestListener).listen(PORT, err => {
       if(err) {
           console.log(err);
       } else  {
           console.log(`Server running at PORT ${PORT}`);
           GCF(15,20);
       }
   });
   ```

The project folder is currently on the following state so make sure you spot out the authors' mistake!

![random_math_stuff](https://i.imgur.com/91amcZ1.jpeg)

The `package.json` file contains the following contents.

```json
{
  "name": "nodejs-debug-activity",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "ISC"
}
```

3) This next one might not be considered as a debugging problem but who cares?! The author got lazy and dozed off during his work hours so he assigned you to do the next module for his mathematical thingy project! Write a module named `Polymul.js` which takes in two lists `listA` and `listB` as input parameters. You must return a list `ansList` that contains an object whose keys are the exponents of the answer while the values for each key-value pairs are the coefficients of each monomial. Check the example below for more information. Make sure that this module is inside the `my_modules` folder and you must use higher order functions. Submissions which doesn't use HOF in their `Polymul` method would be scored 0 for this problem. Submit your code in a file named `Polymul.js`.

   ```javascript
   // sample Polymul run
   const listA = [1,2,3]; // corresponds to 1x^2 + 2x^1 + 3x^0 => x^2 + 2x + 3
   const listB = [2,4]; // corresponds to the polynomial 2x^1 + 4x^0 => 2x + 4
   console.log(Polymul(listA, listB)); // must print { '0': 12, '1': 14, '2': 8, '3': 2 } which corresponds to the polynomial 2x^3 + 8x^2 + 14x^1 + 12x^0 => 2x^3 + 8x^2 + 14x + 12
   ```


4. If you had a hard time with the problem earlier, then this next one is as easy as pi! 

   ```javascript
   // Pi.js - export the constant value of Pi from here
   
   // Currently empty
   ```

   ```javascript
   // Circle.js
   const Area = require('./Area'); // import a method called Area() that takes in one parameter radius which returns the area of a circle with the said radius
   const Circumference = require('./Circumference'); // import a method called Circumference() that takes in one parameter radius which returns the circumference of a circle with the said radius
   
   let Circle = {
       radius: 5.0,
       circumference: 0.0,
       area: 0.0
   };
   
   Circle.circumference = Circumference(Circle.radius);
   Circle.area = Area(Circle.radius);
   
   module.exports = Circle;
   ```

   ```javascript
   // Area.js - has one method Area() that takes in one parameter radius and returns the area of a circle with the said radius, make sure to use the constant value from Pi.js
   
   // Also empty
   ```

   ```javascript
   // Circumference.js - has one method Circumference() that takes in one parameter radius and returns the area of a circle with the said circumference, make sure to use the constant value from Pi.js
   
   // Also empty
   ```

   Given above are the files that you would need to add to the `my_modules` folder. Again, this is not a debugging problem, it's just here to bug you out on solving more problems! Get it? **Bug you out??** HAHAHA I know it wasn't funny so let's keep on going. Fill out `Pi.js`, `Area.js`, and `Circumference.js` with the necessary values/methods based on the specifications above and make sure that the `Circle` object in `Circle.js` gets proper values from the two methods given. Submit all four files above (`Pi.js`, `Circle.js`, `Area.js`, `Circumference.js`).

5. You're finally here! Congratulations! I know the previous problem was way too easy, but let me tell you something, this next one isn't. Given below is list of modules the user made and it seems like it's way too complicated to read! You're now told to make one new module called `BetterModule.js` that exports one method `BetterModule` which does the same thing as the one shown below. Submit a file named `BetterModule.js`.

   ```javascript
   // operation_4.js
   
   const operation_4 = (secondVal) => {
       let res = 0;
       while(secondVal-res > 1){
           secondVal -= 1;
           res += 1;
       }
       return res;
   }
   
   module.exports = operation_4;
   ```

   ```javascript
   // operation_3.js
   const operation_2 = require('./operation_2');
   
   const operation_3 = (firstVal, thirdVal) => {
       let rep = 0;
       for(let i=1; i<=firstVal; i++){
           rep += firstVal;
       }
       rep = operation_2(rep, thirdVal);
       return rep;
   }
   
   module.exports = operation_3;
   ```

   ```javascript
   // operation_2.js
   
   const operation_2 = (firstVal, thirdVal) => {
       let ret = 0;
       let copy = firstVal;
       while(firstVal >= thirdVal) {
           firstVal -= thirdVal;
           ret += 1;
       }
       return copy - ret*thirdVal;
   }
   
   module.exports = operation_2;
   ```

   ```javascript
   // operation_1.js
   const operation_2 = require('./operation_2');
   const operation_3 = require('./operation_3');
   const operation_4 = require('./operation_4');
   
   const operation_1 = (firstVal, secondVal, thirdVal) => {
       if(secondVal == 0) {
           return 1;
       } else if(secondVal == 1) {
           return operation_2(firstVal, thirdVal);
       } else {
           let fourthVal = operation_1(operation_3(firstVal, thirdVal), operation_4(secondVal), thirdVal);
       	if(secondVal%2 == 1) {
               return operation_2(firstVal*fourthVal, thirdVal);
           } else {
               return fourthVal;
           }
       }
   };
   
   module.exports = operation_1;
   ```

   The author was somehow considerate so he gave you two sample testcases so that you would be able to understand what the whole module export shenanigans are about.

   ```javascript
   // sample testcases
   console.log(operation_1(3,2,4)) // prints 1
   console.log(operation_1(4,3,2)) // prints 0
   console.log(operation_1(9,6,19)) // prints 11
   ```

   The author wants to see in your code that you didn't just copy pasted the operations given on `operation_2`, `operation_3`, and `operation_4`. There must only be one and only one method in `BetterModule.js`. Make sure to remove unnecessary operations and change it with a simpler and preferably readable chunk/s of code.
   Note: Put your files in a folder whose folder name is the question number it solves (e.g. `./1/GCF.js`, `./2/index.js`, etc.) 

<div style="text-align: center"><h2>Good luck and have fun!</h2></div>
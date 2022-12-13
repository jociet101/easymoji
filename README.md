# EasyMoji: making texting with emojis easier

## How to run the website locally yoursself

## Moji Language Specification

### Syntax
All strings must be enclosed in double quotations, and each line must be ended with a semicolon.

### Texting
The start of a text is denoted by the arrow "=>" and the end with a semicolon. After the arrow, you may write your text inside a pair of double quotations.

	=> "Writing my text here";

### Defining Macros
You may define any string–just characters, just emojis, or a mix of both– as a macro using the let keyword. Macros can be used in texts that are anywhere after their definition. For example, the following code will define a macro, "bday", as a string of the three emojis. You will be able to use macros using their name in the same way as predefined emojis.

	let bday = "🥳🎂🎉";

### Using Pre-defined Emojis or User-defined Macros
Our system has a couple predefined emojis (we are planning to add more!) that you can use in your texts. They can be found in the glossary below. To use them, place its name in a pair of colons within your text string.

	=> "Texting with emojis! :bee: and :poop:.";

This will output as

	Texting with emojis! 🐝 and 💩.

### Using Emoticons
Our system also has built in emoticons that you can use in your texts! To use them, place the series of punctuation within a pair of square brackets within your text string.

	=> "[:)]";

will turn into

	🙂

### Spamming Emojis
Last but not least, we have the emoji spamming feature. Simply place a pound sign followed by a number before using an emoji to spam it.

	=> "#5 :bee:";

will turn into

	🐝🐝🐝🐝🐝

### Comments
Users can define comments using a double backslash. They will be ignored by our compiler.

### Example Input and Output

Input

	let bday = "🥳🎂🎉";
	// this is a comment: text for jasmine
	=> "Text goes here. It may consist of words or emoticons [:)], references to the macros, :bday:, or built in emojis such as :angry: or :eyes:!!! And #5 :meditate: lol";

	=> "And you can have multiple inputs at once! #3 :party:";

	=> "#8 :bee:";

Output

	Text goes here. It may consist of words or emoticons 🙂, references to the macros, 🥳🎂🎉, or built in emojis such as 😡 or 👀!!! And 🧘‍♂️🧘‍♂️🧘‍♂️🧘‍♂️🧘‍♂️ lol
	And you can have multiple inputs at once! 🎉🎉🎉
	🐝🐝🐝🐝🐝🐝🐝🐝

### Glossary

We currently have the following emojis built in:
* angry 😡
* meditate 🧘‍♂️
* party 🎉
* eyes 👀
* poop 💩
* bee 🐝

and the following emoticons:
* :) 🙂
* :D 😃
* :( 🙁
* :'( 😥
* <3 ❤️
* :P 😛
* ;) 😉

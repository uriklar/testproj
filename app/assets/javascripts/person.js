function Person (firstName) {
	this.firstName = firstName;
}

Person.prototype.greeting = function () {
	return "Hello " + this.firstName;
}
function Person (fName) {
	var firstName = fName;

	this.fName = function () {
		return firstName;
	}
}

Person.prototype.greeting = function () {
	return "Hello " + this.fName();
}
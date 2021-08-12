package com.qa.cucumber;

import static org.junit.Assert.assertEquals;
import org.junit.Rule;
import org.junit.rules.ExpectedException;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class CalculatorStepDefinitions{

	private double double1;
	private double double2;
	private Calculator calc;
	private double doubleResult;
	private boolean first = true;

	@Rule
	public ExpectedException rule = ExpectedException.none();

	@Given("a calculator")
	public void a_calculator() {
    this.calc = new Calculator();
		first = true;
	}
	
	@Given("the number {double}")
	public void the_number(Double double1) {
    if(first){
			this.double1 = double1;
			first = false;
		} else {
			this.double2 = double1;
		}
	}

	@When("the numbers are added")
	public void the_numbers_are_added() {
		doubleResult = calc.add(double1, double2);
	}

	@When("the numbers are subtracted")
	public void the_numbers_are_subtracted(){
		doubleResult = calc.subtract(double1, double2);
	}

	@When("the numbers are multiplied")
	public void the_numbers_are_multiplied(){
		doubleResult = calc.multiply(double1, double2);
	}

	@When("the numbers are divided")
	public void the_numbers_are_divided(){
		doubleResult = calc.divide(double1, double2);
	}

	@Then("the result should be {double}")
	public void the_result_should_be(double double1) {
    assertEquals(double1, doubleResult, 0.001);
	}

	@Then("an error will occur")
	public void an_error_will_occur(){
		rule.expect(Exception.class);
	}
}

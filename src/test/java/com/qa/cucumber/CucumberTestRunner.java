package com.qa.cucumber;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberOptions.SnippetType;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"classpath:features"},
								 glue = {"classpath:com.qa.cucumber"},
								 snippets = SnippetType.CAMELCASE,
								 plugin = {"summary"},
								 monochrome = true)
public class CucumberTestRunner{
	
}
								 

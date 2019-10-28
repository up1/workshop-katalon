import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject

import org.openqa.selenium.WebElement

import com.kms.katalon.core.checkpoint.Checkpoint as Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.mobile.keyword.internal.MobileDriverFactory
import com.kms.katalon.core.model.FailureHandling as FailureHandling
import com.kms.katalon.core.testcase.TestCase as TestCase
import com.kms.katalon.core.testdata.TestData as TestData
import com.kms.katalon.core.testobject.TestObject as TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import internal.GlobalVariable as GlobalVariable
import io.appium.java_client.AppiumDriver
import io.appium.java_client.MobileElement as MobileElement

Mobile.startApplication('/Users/somkiat/data/slide/automated-testing/workshop/workshop_android/apk_file/app-debug.apk', 
    true)

Mobile.tap(findTestObject('android.widget.ImageButton0'), 0)

Mobile.setText(findTestObject('android.widget.EditText0 - Title'), 'test', 0)

Mobile.setText(findTestObject('android.widget.EditText0 - Enter your task here.'), 'set description', 0)

Mobile.tap(findTestObject('android.widget.ImageButton0 (1)'), 0)

Mobile.waitForElementPresent(findTestObject('androidx.recyclerview.widget.RecyclerView0'), 0, FailureHandling.STOP_ON_FAILURE)

AppiumDriver<?> driver = MobileDriverFactory.getDriver()
List<WebElement> elements = driver.findElementsByXPath('//androidx.recyclerview.widget.RecyclerView[1]/android.widget.LinearLayout')
println('The size of elements is ::' + elements.size())

Mobile.closeApplication()


import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject
import com.kms.katalon.core.checkpoint.Checkpoint as Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling as FailureHandling
import com.kms.katalon.core.testcase.TestCase as TestCase
import com.kms.katalon.core.testdata.TestData as TestData
import com.kms.katalon.core.testobject.TestObject as TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import internal.GlobalVariable as GlobalVariable
import org.openqa.selenium.Keys as Keys

WebUI.openBrowser(GlobalVariable.BASE_URL)

WebUI.maximizeWindow()

WebUI.setText(findTestObject('Object Repository/Page_Google/input__q'), keyword)

WebUI.sendKeys(findTestObject('Object Repository/Page_Google/input__q'), Keys.chord(Keys.ENTER))

WebUI.waitForElementVisible(findTestObject('Page_katalon -  Google/div_ 535000  (039 )'), 5)

//WebUI.verifyElementText(findTestObject('Page_katalon -  Google/div_ 535000  (039 )'), '5555')
result = WebUI.getText(findTestObject('Page_katalon -  Google/div_ 535000  (039 )'))

println(result)

String[] results = result.split(' ')

println(results[0])

println(results[1])

println(results[2])

println(results[3])

//WebUI.takeScreenshot('/Users/somkiat/data/slide/automated-testing/workshop/test_001.png')

WebUI.closeBrowser()

WebUI.verifyMatch(results[0], expectedResult, false)


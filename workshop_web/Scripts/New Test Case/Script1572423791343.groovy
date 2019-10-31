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

WebUI.openBrowser('')

WebUI.navigateToUrl('http://nervgh.github.io/pages/angular-file-upload/examples/simple/')

WebUI.doubleClick(findTestObject('Object Repository/Page_Simple example/strong_Screen Shot 2562-10-29 at 010040png'))

WebUI.click(findTestObject('Object Repository/Page_Simple example/button_Upload'))

WebUI.click(findTestObject('Object Repository/Page_Simple example/td_069 MB'))

WebUI.click(findTestObject('Object Repository/Page_Simple example/div_Screen Shot 2562-10-29 at 010040png_progress'))

WebUI.click(findTestObject('Object Repository/Page_Simple example/i_Screen Shot 2562-10-29 at 010040png_glyph_439e3f'))

WebUI.click(findTestObject('Object Repository/Page_Simple example/div_Queue progress_progress-bar'))

WebUI.click(findTestObject('Object Repository/Page_Simple example/div_Queue progress'))

WebUI.click(findTestObject('Object Repository/Page_Simple example/div_Queue progress'))

WebUI.click(findTestObject('Object Repository/Page_Simple example/div_Queue progress'))


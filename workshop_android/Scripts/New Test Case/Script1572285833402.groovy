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
import io.appium.java_client.MobileElement as MobileElement

Mobile.startApplication('/Users/somkiat/data/slide/automated-testing/workshop/android-testing/app/build/outputs/apk/debug/app-debug.apk', 
    true)

Mobile.tap(findTestObject('android.widget.ImageButton0'), 0)

Mobile.setText(findTestObject('android.widget.EditText0 - Title'), 'test', 0)

Mobile.setText(findTestObject('android.widget.EditText0 - Enter your task here.'), 'set description', 0)

Mobile.tap(findTestObject('android.widget.ImageButton0 (1)'), 0)

Mobile.verifyElementExist(findTestObject('androidx.recyclerview.widget.RecyclerView0'), 0)

Mobile.closeApplication()


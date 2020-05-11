# Avenger Character Profile APP

## IOS Screenshots:

<img src="/screenshots/ios/src0.png" alt="drawing" width="150"/> <img src="/screenshots/ios/src1.png" alt="drawing" width="150"/> <img src="/screenshots/ios/src2.png" alt="drawing.png" width="150"/> <img src="/screenshots/ios/src3.png" alt="drawing" width="150"/> <img src="/screenshots/ios/src4.png" alt="drawing" width="150"/> <img src="/screenshots/ios/src5.png" alt="drawing" width="150"/> <img src="/screenshots/ios/src6.png" alt="drawing" width="150"/> <img src="/screenshots/ios/src7.png" alt="drawing" width="150"/>


## Android Screenshots:

<img src="/screenshots/android/src0.png" alt="drawing" width="150"/> <img src="/screenshots/android/src1.png" alt="drawing" width="150"/> <img src="/screenshots/android/src2.png" alt="drawing.png" width="150"/> <img src="/screenshots/android/src3.png" alt="drawing" width="150"/> <img src="/screenshots/android/src4.png" alt="drawing" width="150"/> <img src="/screenshots/android/src5.png" alt="drawing" width="150"/> <img src="/screenshots/android/src6.png" alt="drawing" width="150"/> <img src="/screenshots/android/src7.png" alt="drawing" width="150"/>

- ### Customize Widget

  - Customize Drawer
  - Customize Progressing Indicator
  - Customize ListView item
  - Customize LTR (Left To Right) Slide Animation ListView
  - Customize LTR Slide Animation Widget
  - Customize AppBar
 
- ### Change Icon, App name for both iOS and Android
- ### Change bundle id (for iOs), applicationId (for Android)
- ### Apply BLOC Pattern (using [flutter_bloc](https://pub.dev/packages/flutter_bloc))
- ### Handle async process
- ### Setup Flavor (dev, stg, dev) for Android
- ### Generate KeyStore for Android

  - generate keystore:
  
	  ```
	  keytool -genkey -v -keystore /Users/<user_name>/<project_directory>/android/app/key_store.jks -keyalg RSA -keysize 2048 -validity 10000 -alias <alias_name>
	  
	  keystore password: 4jRYkBDm3qnSRzNt
	  store password: 4jRYkBDm3qnSRzNt
	  alias: avenger
	  ```
	  
  - create `key_store.properties` in `android/` folder that contains a reference to your keystore:
	  
	  ```
	  storePassword=<store_password>
	  keyPassword=<keystore_password>
	  keyAlias=<alias>
	  storeFile=key_store.jks
	  ```
	  
  - config signin gradle:
  
	  ```
	  def keystoreProperties = new Properties()
	  def keystorePropertiesFile = rootProject.file('key_store.properties')
	  if (keystorePropertiesFile.exists()) {
	  	keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
	  }
	  
	  android {
	  //...
	  	signingConfigs {
	  		release {
	  			keyAlias keystoreProperties['keyAlias']
	  			keyPassword keystoreProperties['keyPassword']
	  			storeFile file(keystoreProperties['storeFile'])
	  			storePassword keystoreProperties['storePassword']
	  		}
	  	}
	  	buildTypes {
	  		release {
	  			signingConfig signingConfigs.release
	  		}
	  	}
	  //...
	  }
	  ```
	  
  - enabling Proguard: (***I have not finished enabling proguard yet***)
  
  	- Step 1 - Configure Proguard
	  
		```
		create <project_directory>/android/app/proguard-rules.pro file

		#add rules listed below
		#Flutter Wrapper
		-keep class io.flutter.app.** { *; }
		-keep class io.flutter.plugin.**  { *; }
		-keep class io.flutter.util.**  { *; }
		-keep class io.flutter.view.**  { *; }
		-keep class io.flutter.**  { *; }
		-keep class io.flutter.plugins.**  { *; }

		```
  	- Step 2 - Enable obfuscation and/or minification
		
		```
		android {
		\\...
		
		    buildTypes {
		    	release {
		    		signingConfig signingConfigs.release
		    		
		    		minifyEnabled true
		    		useProguard true
		    		proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
		    	}
		    }
		    
		\\...
		}
		```
		
- ### Build release APK
- ### Upload to CH Play (suspended becuz of impersonation)

# Next Steps

### Open app page on store
### Open my account on Facebook app
### Send me email via Gmail with user's feedback
### Share app link on facebook, twitter, messenger ...
### Login with social network account (facebook, gmail, twitter ...)

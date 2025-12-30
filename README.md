1)   id("com.google.gms.google-services")

2)  buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath("com.google.gms:google-services:4.4.0")
    }
}

3)  ndkVersion = "27.0.12077973" 

4)  minSdk = 23

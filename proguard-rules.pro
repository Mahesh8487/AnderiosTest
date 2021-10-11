# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/benjakuben/Development/android-sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-dontobfuscate

-dontwarn org.bytedeco.**
-dontwarn okio.**
-dontwarn butterknife.**
-dontwarn org.joda.**
-dontwarn retrofit.**
-dontwarn retrofit2.**
-dontwarn com.fasterxml.jackson.**


-keepattributes EnclosingMethod
-keep @interface org.bytedeco.javacpp.annotation.*,javax.inject.*
-keepattributes *Annotation*, Exceptions, Signature, Deprecated, SourceFile, SourceDir, LineNumberTable, LocalVariableTable, LocalVariableTypeTable, Synthetic, EnclosingMethod, RuntimeVisibleAnnotations, RuntimeInvisibleAnnotations, RuntimeVisibleParameterAnnotations, RuntimeInvisibleParameterAnnotations, AnnotationDefault, InnerClasses


# javaCV
-keep @org.bytedeco.javacpp.annotation interface * {
    *;
}
-keep @org.bytedeco.javacpp.annotation.Platform public class *
-keepclasseswithmembernames class * {
    @org.bytedeco.* <fields>;
}
-keepclasseswithmembernames class * {
    @org.bytedeco.* <methods>;
}
-dontwarn java.awt.**
-dontwarn org.bytedeco.javacv.**
-dontwarn org.bytedeco.javacpp.**
-dontwarn com.polites.android.**
-dontwarn org.apache.commons.compress.**
-keep class org.bytedeco.javacpp.** {*;}

# square
-dontwarn com.squareup.okhttp.**
-keep class com.squareup.** { *; }
-keep interface com.squareup.** { *; }


# retrofit 1

-dontwarn com.squareup.retrofit.*
-keep class com.squareup.retrofit.** { *; }
-keep interface com.squareup.retrofit.** { *; }

-dontwarn rx.**
-dontwarn retrofit.**
-keep class retrofit.** { *; }
-keep interface retrofit.** { *;}
-keepclasseswithmembers class * {
    @retrofit.* <methods>;
}
-keepclasseswithmembers interface * {
    @retrofit.* <methods>;
}

# retrofit 2
-dontwarn com.squareup.retrofit2.*
-keep class com.squareup.retrofit2.** { *; }
-keep interface com.squareup.retrofit2.** { *; }

-dontwarn retrofit2.**
-dontwarn org.codehaus.mojo.**
-keep class retrofit2.** { *; }
-keep interface retrofit2.** { *; }
-keepclasseswithmembers class * {
    @retrofit2.* <methods>;
}
-keepclasseswithmembers interface * {
    @retrofit2.* <methods>;
}

# joda
-keep class org.joda.time.** { *; }
-keep interface org.joda.time.** { *; }
-dontwarn org.joda.time.**

# okhttp 1
-dontwarn com.squareup.okhttp.*
-keep class com.squareup.okhttp.** { *; }
-keep interface com.squareup.okhttp.** { *; }

# okhttp 3
-dontwarn com.squareup.okhttp3.*
-keep class com.squareup.okhttp3.** { *; }
-keep interface com.squareup.okhttp3.** { *; }
-keepattributes Annotation

# gson uses generic type information stored in a class file when working with fields. Proguard
# removes such information by default, so configure it to keep all of it.
-keepattributes Signature
-keep class sun.misc.Unsafe { *; }
-keep class com.google.code.gson.** { *; }

-keep class com.google.gson {*;}
-keep class com.google.gson.Gson {*;}
-keep class com.google.gson.JsonElement { *; }
-keep class com.google.gson.GsonBuilder { *; }
-keep class com.google.gson.annotations { *; }
-keep class com.google.gson.examples.android.model { *; }

-keep class com.google.gson.** { *; }
-keep interface com.google.gson.** { *; }
-keep class com.google.gson.Gson.** { *; }
-keep interface com.google.gson.Gson.** { *; }
-keep class com.google.gson.JsonElement.** { *; }
-keep interface com.google.gson.JsonElement.** { *; }
-keep class com.google.gson.GsonBuilder.** { *; }
-keep interface com.google.gson.GsonBuilder.** { *; }
-keep class com.google.gson.annotations.** { *; }
-keep interface com.google.gson.annotations.** { *; }
-keep class com.google.gson.examples.android.model.** { *; }
-keep interface com.google.gson.examples.android.model.** { *; }

-keep class com.google.gson.**
-keep class com.google.gson.** {public private protected *;}

# some extra
# extra
-keep class com.MetaConsumer.Optix.App.** { *; }
-keep class com.MetaConsumer.Optix.Audio.** { *; }
-keep class com.MetaConsumer.Optix.BgList.** { *; }
-keep class com.MetaConsumer.Optix.Campaign.** { *; }
-keep class com.MetaConsumer.Optix.Client.** { *; }
-keep class com.MetaConsumer.Optix.ClientAccess.** { *; }
-keep class com.MetaConsumer.Optix.Collaborator.** { *; }
-keep class com.MetaConsumer.Optix.Config.** { *; }
-keep class com.MetaConsumer.Optix.Event.** { *; }
-keep class com.MetaConsumer.Optix.Example.** { *; }
-keep class com.MetaConsumer.Optix.Image.** { *; }
-keep class com.MetaConsumer.Optix.Index.** { *; }
-keep class com.MetaConsumer.Optix.LogEvents.** { *; }
-keep class com.MetaConsumer.Optix.Panel.** { *; }
-keep class com.MetaConsumer.Optix.User.** { *; }

# essential
-keep class com.MetaConsumer.Optix.LoginResponse.** { *; }
-keep class com.MetaConsumer.Optix.ErrorMessage.** { *; }
-keep class com.MetaConsumer.Optix.Error.** { *; }
-keep class org.apache.commons.io.**

-keep class java.util.HashMap {*;}
-keep class java.util.HashMap.** {*;}

# crashlytics
-dontwarn com.crashlytics.**
-keep class com.crashlytics.** { *; }
-keep class com.crashlytics.android.**

# android support
-dontwarn android.support.v7.**
-keep class android.support.v7.** { *; }
-keep interface android.support.v7.** { *; }
-keep class com.android.support.** { *; }
-keep interface com.android.support.** { *; }

# aws
-keep class com.amazonaws.** { *; }
-keep class org.apache.commons.logging.**               { *; }
-keep class org.codehaus.**                             { *; }
-dontwarn javax.xml.stream.events.**
-dontwarn org.codehaus.jackson.**
-dontwarn org.apache.commons.logging.impl.**
-dontwarn org.apache.http.conn.scheme.**

# new Relic
-keep class com.newrelic.** { *; }
-dontwarn com.newrelic.**

# butterknife
-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }
-keepclasseswithmembernames class * {
     @butterknife.* <fields>;
}
-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}

# gms
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.android.gms.**


# extra

-dontwarn org.apache.commons.**
-keep class org.apache.commons.** { *; }
-dontwarn commons-io.**
-keep class commons-io.** { *; }
-dontwarn org.glassfish.**
-keep class org.glassfish.** { *; }
-dontwarn com.fasterxml.jackson.core.**
-keep class com.fasterxml.jackson.core.** { *; }
-dontwarn javax.validation.**
-keep class javax.validation.** { *; }
-dontwarn commons-lang.**
-keep class commons-lang.** { *; }




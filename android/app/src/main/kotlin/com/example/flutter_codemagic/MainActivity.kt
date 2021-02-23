package com.example.flutter_codemagic

import io.flutter.embedding.android.FlutterActivity

import androidx.annotation.NonNull
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugin.common.PluginRegistry.PluginRegistrantCallback
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
    private val FlavorChannel = "flavor"
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor, FlavorChannel).setMethodCallHandler {
            call, result ->
            result.success(BuildConfig.FLAVOR)
        }
    }
}
